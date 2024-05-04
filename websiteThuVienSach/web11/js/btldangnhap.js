document.getElementById("login-form").addEventListener("submit", function (event) {
    event.preventDefault();
    var username = document.getElementById("login-username").value;
    var password = document.getElementById("login-password").value;

    if (username.trim() === '' || password.trim() === '') {
        alert("Please enter both username and password.");
        return;
    }

    var authenticated = authenticateUser(username, password);

    if (authenticated) {
        window.location.href = "btldangky.aspx?username=" + encodeURIComponent(username);
    } else {
        alert("Invalid username or password.");
    }
});

function authenticateUser(username, password) {
    // In a real application, you would perform authentication with a backend server
    // This is just a simple example
    for (var i = 0; i < registeredUsers.length; i++) {
        if (registeredUsers[i].username === username && registeredUsers[i].password === password) {
            return true;
        }
    }
    return false;
}
