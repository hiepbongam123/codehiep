var registeredUsers = [];

document.getElementById("register-form").addEventListener("submit", function (event) {
    event.preventDefault();
    var username = document.getElementById("register-username").value;
    var password = document.getElementById("register-password").value;

    if (username.trim() === '' || password.trim() === '') {
        alert("Please enter both username and password.");
        return;
    }

    if (isUsernameTaken(username)) {
        alert("Username is already taken. Please choose another one.");
        return;
    }

    registeredUsers.push({ username: username, password: password });

    window.location.href = "btldangnhap.aspx";
});

function isUsernameTaken(username) {
    return registeredUsers.some(function (user) {
        return user.username === username;
    });
}
