import tkinter as tk
from tkinter import messagebox
from tkinter import ttk
from sklearn.neighbors import KNeighborsClassifier
from sklearn.neighbors import NearestNeighbors

# Hàm dự đoán lớp của dữ liệu mới và hiển thị 5 điểm gần nhất
def dudoan_du_lieu_moi():
    try:
        # Lấy giá trị từ các entry
        du_lieu_moi = [float(entry.get()) for entry in danh_sach_entry]

        # Dự đoán lớp của dữ liệu mới
        lop_du_doan = knn.predict([du_lieu_moi])
        
        # Tìm 5 điểm gần nhất
        khoang_cach, chi_so = nbrs.kneighbors([du_lieu_moi], 5)
        
        # Chuỗi để lưu trữ kết quả
        ket_qua = "Dự đoán lớp của dữ liệu mới: {}\n".format("1:(mưa)" if lop_du_doan[0] == 1 else "0:(không mưa)")
        ket_qua += "5 điểm gần nhất:\n"
        for i, index in enumerate(chi_so[0]):
            # Lấy số thứ tự tương ứng với dữ liệu trong bảng
            stt = index + 1
            # Kiểm tra trạng thái của mỗi điểm gần nhất
            trang_thai = "mưa" if y_train[index] == 1 else "không mưa"
            # Tính khoảng cách giữa điểm dự đoán và các điểm gần nhất
            khoang_cach_diem = round(khoang_cach[0][i], 2)
            ket_qua += "Trường hợp {}: {} ({}) - Khoảng cách: {}\n".format(stt, y_train[index], trang_thai, khoang_cach_diem)
        
        # Hiển thị kết quả
        messagebox.showinfo("Kết quả", ket_qua)
    except ValueError:
        messagebox.showerror("Lỗi", "Vui lòng nhập giá trị số cho tất cả các đặc trưng.")

# Khởi tạo GUI
root = tk.Tk()
root.title("Dự đoán trời mưa bằng thuật toán K-NN")

# Dữ liệu đầu vào và nhãn tương ứng
X_train = [[30, 20], [21, 17], [25, 62], [34, 63], [24, 94], [35, 75], [16, 86], [7, 27], [28, 88], [9, 39],
           [10, 60], [41, 91], [2, 12], [3, 83], [44, 14], [15, 65], [14, 96], [17, 54], [22, 8], [39, 11]]
y_train = [1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1]

# Khởi tạo và huấn luyện mô hình KNN với k = 5
knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_train, y_train)

# Khởi tạo và fit model để tìm điểm gần nhất
nbrs = NearestNeighbors(n_neighbors=5, algorithm='ball_tree').fit(X_train)

# Tạo bảng dữ liệu để hiển thị dữ liệu đầu vào và nhãn tương ứng
table = ttk.Treeview(root, columns=('STT', 'Đặc trưng 1', 'Đặc trưng 2', 'Nhãn'), show='headings')
table.heading('STT', text='Trường hợp')
table.heading('Đặc trưng 1', text='X0: Nhiệt độ')
table.heading('Đặc trưng 2', text='X1: Độ ẩm')
table.heading('Nhãn', text='0:(không mưa); 1:(mưa)')

for i in range(len(X_train)):
    table.insert('', 'end', values=(i+1, X_train[i][0], X_train[i][1], y_train[i]))

table.grid(row=0, column=0, columnspan=2, padx=5, pady=5)

# Tạo các label và entry cho mỗi đặc trưng
danh_sach_entry = []
for i in range(len(X_train[0])):
    tk.Label(root, text="X{}: ".format(i)).grid(row=i+1, column=2, padx=5, pady=5)
    entry = tk.Entry(root)
    entry.grid(row=i+1, column=3, padx=5, pady=5)
    danh_sach_entry.append(entry)

# Button để dự đoán
nut_dudoan = tk.Button(root, text="Dự đoán", command=dudoan_du_lieu_moi)
nut_dudoan.grid(row=len(X_train[0])+1, columnspan=2, padx=5, pady=10)

root.mainloop()
