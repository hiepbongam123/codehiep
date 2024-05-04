import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
from sklearn.neighbors import KNeighborsClassifier
from sklearn.neighbors import NearestNeighbors

def dudoan_du_lieu_moi():
    try:
        k = int(k_entry.get())  # Lấy giá trị k từ entry

        # Lấy giá trị từ các entry
        du_lieu_moi = [float(entry.get()) for entry in danh_sach_entry]
        x0 = float(x0_entry.get())  # Lấy giá trị x0 từ entry
        x1 = float(x1_entry.get())  # Lấy giá trị x1 từ entry

        # Dự đoán lớp của dữ liệu mới
        knn = KNeighborsClassifier(n_neighbors=k)  # Khởi tạo mô hình KNN với k
        knn.fit(X_train, y_train)
        lop_du_doan = knn.predict([[x0, x1]])

        # Tìm k điểm gần nhất
        nbrs = NearestNeighbors(n_neighbors=k, algorithm='ball_tree').fit(X_train)
        khoang_cach, chi_so = nbrs.kneighbors([[x0, x1]])

        ket_qua = "Dự đoán lớp của dữ liệu mới: {}\n".format("1:(mưa)" if lop_du_doan[0] == 1 else "0:(không mưa)")
        ket_qua += f"{k} điểm gần nhất:\n"
        for i, index in enumerate(chi_so[0]):
            stt = index + 1
            trang_thai = "mưa" if y_train[index] == 1 else "không mưa"
            khoang_cach_diem = round(khoang_cach[0][i], 2)
            ket_qua += "Trường hợp {}: {} ({}) - Khoảng cách: {}\n".format(stt, y_train[index], trang_thai, khoang_cach_diem)

        messagebox.showinfo("Kết quả", ket_qua)
    except ValueError:
        messagebox.showerror("Lỗi", "Vui lòng nhập giá trị số cho tất cả các đặc trưng.")

root = tk.Tk()
root.title("Dự đoán trời mưa bằng thuật toán K-NN")

# Dữ liệu đầu vào và nhãn tương ứng
X_train = [[30, 20], [21, 17], [25, 62], [34, 63], [24, 94], [35, 75], [16, 86], [7, 27], [28, 88], [9, 39],
           [10, 60], [41, 91], [2, 12], [3, 83], [44, 14], [15, 65], [14, 96], [17, 54], [22, 8], [39, 11]]
y_train = [1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1]

# Bảng dữ liệu để hiển thị dữ liệu đầu vào và nhãn tương ứng
table = ttk.Treeview(root, columns=('STT', 'Đặc trưng 1', 'Đặc trưng 2', 'Nhãn'), show='headings')
table.heading('STT', text='Trường hợp')
table.heading('Đặc trưng 1', text='X0: Nhiệt độ')
table.heading('Đặc trưng 2', text='X1: Độ ẩm')
table.heading('Nhãn', text='0:(không mưa); 1:(mưa)')

for i in range(len(X_train)):
    table.insert('', 'end', values=(i+1, X_train[i][0], X_train[i][1], y_train[i]))

table.grid(row=0, column=0, columnspan=2, padx=5, pady=5)

# Tạo label và entry cho số lân cận k
k_label = tk.Label(root, text="Số lân cận (k):")
k_label.grid(row=len(X_train)+1, column=0, padx=5, pady=5)
k_entry = tk.Entry(root)
k_entry.grid(row=len(X_train)+1, column=1, padx=5, pady=5)

# Tạo label và entry cho x0 và x1
x0_label = tk.Label(root, text="X0: Nhiệt độ")
x0_label.grid(row=len(X_train)+2, column=0, padx=5, pady=5)
x0_entry = tk.Entry(root)
x0_entry.grid(row=len(X_train)+2, column=1, padx=5, pady=5)

x1_label = tk.Label(root, text="X1: Độ ẩm")
x1_label.grid(row=len(X_train)+3, column=0, padx=5, pady=5)
x1_entry = tk.Entry(root)
x1_entry.grid(row=len(X_train)+3, column=1, padx=5, pady=5)

# Button để dự đoán
nut_dudoan = tk.Button(root, text="Dự đoán", command=dudoan_du_lieu_moi)
nut_dudoan.grid(row=len(X_train[0])+4, columnspan=2, padx=5, pady=10)

root.mainloop()
