function validate() {
    var X = document.getElementById("TextBox1").value;
    var Y = document.getElementById("TextBox2").value;
    console.log(X);
    console.log(Y);
    if (X.value == "" || Y.value == "") {
        alert("Please fill it");
        return true;
    }
    else {
        return false;
    }
}

