// Dữ liệu giả định cho sách và người mượn
var books = [
    { title: "ark Thế Giới Sinh Tồn", author: "The Duke", year: 2003 },
    { title: "2012", author: "Harper Lee", year: 2010 },
    { title: "Trùng Sinh Về Đại Học", author: "Trần Há Thăng", year: 2014 },
    { title: "Thế Giới Hóa Đá", author: "Jane Austen", year: 2020 }
];

function searchFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('searchInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("searchResults");
    ul.innerHTML = ''; // Xóa kết quả trước đó

    for (i = 0; i < books.length; i++) {
        // Kiểm tra nếu tiêu đề sách hoặc tác giả chứa từ khóa tìm kiếm
        if (books[i].title.toUpperCase().indexOf(filter) > -1 || books[i].author.toUpperCase().indexOf(filter) > -1) {
            li = document.createElement('li');
            li.innerHTML =
                 "<b>Sách:</b> " + books[i].title + "<br>" +
                 "<b>Tác Giả:</b> " + books[i].author + "<br>" +
                 "<b>Ngày Ra:</b> " + books[i].year + "<br>" + "<br>" ;
            ul.appendChild(li);
        }
    }
}