import tkinter as tk
from tkinter import messagebox
from sklearn.neural_network import MLPClassifier
from sklearn.preprocessing import StandardScaler
import numpy as np

# chuẩn hóa thông tin
def predict_purchase(X_train, y_train, X_test):
    # Chuẩn hóa dữ liệu
    scaler = StandardScaler()
    scaler.fit(X_train)
    X_train_scaled = scaler.transform(X_train)
    X_test_scaled = scaler.transform(X_test)

    # Tạo mạng neural network và huấn luyện
    clf = MLPClassifier(hidden_layer_sizes=(100,), 
        activation='relu', solver='adam', 
        max_iter=1000, random_state=42)
    clf.fit(X_train_scaled, y_train)

    # Dự đoán xác suất của từng trường hợp trên tập kiểm tra
    probabilities = clf.predict_proba(X_test_scaled)
    return probabilities

# Dữ liệu huấn luyện giả định
X_train = np.array([
    [25, 0, 30000, 2],   
    # Tuổi, Giới tính (Nam: 0, Nữ: 1), Thu nhập, Số lượng mua trước đó
    [35, 1, 45000, 4],
    [40, 0, 60000, 6],
    [30, 1, 50000, 3],
    [20, 1, 20000, 1],
    [15, 0, 80000, 2],
    [21, 1, 370000, 0],
    [29, 1, 200000, 7],
    [42, 0, 100000, 3],
    [49, 0, 400000, 1]
])
y_train = np.array([0, 1, 1, 1, 0, 1, 0, 1, 0, 1])  # Mua (1) hoặc không mua (0)



def on_predict_click():
    try:
        age = int(age_entry.get())
        gender = int(gender_entry.get())  # Nhập 0 cho Nam và 1 cho Nữ
        income = int(income_entry.get())
        previous_purchases = int(previous_purchases_entry.get())
        
        if gender != 0 and gender != 1:
            messagebox.showerror("Lỗi", "Giá trị giới tính chỉ được nhập 0 hoặc 1")
            return

        # Tạo dữ liệu kiểm tra từ dữ liệu nhập vào
        X_test = np.array([[age, gender, income, previous_purchases]])

        # Dự đoán xác suất của từng trường hợp
        probabilities = predict_purchase(X_train, y_train, X_test)
        
        # Xác định kết quả có mua hay không dựa trên ngưỡng
        threshold = 0.5
        if probabilities[0][1] > threshold:
            purchase_result = "Có mua"
        else:
            purchase_result = "Không mua"

        # Hiển thị kết quả dự đoán
        result_label.config(text="Xác suất mua: {:.2f}%, Xác suất không mua: {:.2f}%. Kết quả: {}".format(probabilities[0][1]*100, probabilities[0][0]*100, purchase_result))
    except ValueError:
        messagebox.showerror("Lỗi", "Vui lòng nhập đầy đủ đầu vào.")


# Tạo giao diện đồ họa
root = tk.Tk()
root.geometry("300x200")
root.title("Dự đoán xác suất mua sản phẩm bằng neural network")

age_label = tk.Label(root, text="Tuổi:")
age_label.grid(row=0, column=0)
age_entry = tk.Entry(root)
age_entry.grid(row=0, column=1)

gender_label = tk.Label(root, text="Giới tính (0:Nam, 1:Nữ):")
gender_label.grid(row=1, column=0)
gender_entry = tk.Entry(root)
gender_entry.grid(row=1, column=1)

income_label = tk.Label(root, text="Thu nhập hàng ngày(VND):")
income_label.grid(row=2, column=0)
income_entry = tk.Entry(root)
income_entry.grid(row=2, column=1)

previous_purchases_label = tk.Label(root, text="Số lượng mua trước đó:")
previous_purchases_label.grid(row=3, column=0)
previous_purchases_entry = tk.Entry(root)
previous_purchases_entry.grid(row=3, column=1)

predict_button = tk.Button(root, text="Dự đoán", command=on_predict_click)
predict_button.grid(row=4, column=0, columnspan=2)

result_label = tk.Label(root, text="")
result_label.grid(row=5, column=0, columnspan=2)


root.eval('tk::PlaceWindow . center')
root.mainloop()