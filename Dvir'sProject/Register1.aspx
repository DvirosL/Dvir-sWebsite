<link rel="stylesheet" href="StyleSheet1.css">
<% @ Page Language="C#" AutoEventWireup="true" CodeFile="Register1.aspx.cs" Inherits="Register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script type="text/javascript">
            function Reset() {
                document.getElementById("error").innerHTML = "";
                document.getElementById("fname").style.backgroundColor = "white";
                document.getElementById("lname").style.backgroundColor = "white";
                document.getElementById("age").style.backgroundColor = "white";
                document.getElementById("uname").style.backgroundColor = "white";
                document.getElementById("passw").style.backgroundColor = "white";
                document.getElementById("conpassw").style.backgroundColor = "white";
                document.getElementById("email").style.backgroundColor = "white";
                document.getElementById("phone").style.backgroundColor = "white";
            }
            function IsValidreg() {
            document.getElementById("fname").style.backgroundColor = "white";
            document.getElementById("lname").style.backgroundColor = "white";
            document.getElementById("age").style.backgroundColor = "white";
            document.getElementById("uname").style.backgroundColor = "white";
            document.getElementById("passw").style.backgroundColor = "white";
            document.getElementById("conpassw").style.backgroundColor = "white";
            document.getElementById("email").style.backgroundColor = "white";
            document.getElementById("phone").style.backgroundColor = "white";
            document.getElementById("error").innerHTML = "";
            var msg = true;

            if (document.getElementById("fname").value == "") {
                document.getElementById("error").innerHTML += "Don't forget your first name!<br />";
                document.getElementById("fname").style.backgroundColor = "red";
                msg = false;
            }
            else if (document.getElementById("fname").value.length < 2 || document.getElementById("fname").value.length > 8) {
                document.getElementById("error").innerHTML += "Your first name must be between 2 to 8 letters long </br>";
                document.getElementById("fname").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("lname").value == "") {
                document.getElementById("error").innerHTML += "Don't forget your last name!<br />";
                document.getElementById("lname").style.backgroundColor = "red";
                msg = false;
            }
            else if (document.getElementById("lname").value.length < 2 || document.getElementById("lname").value.length > 8) {
                document.getElementById("error").innerHTML += "Your last name must be between 2 to 8 letters long </br>";
                document.getElementById("lname").style.backgroundColor = "red";
                msg = false;
            }
            if (document.getElementById("uname").value == "") {
                document.getElementById("error").innerHTML += "Don't forget to Enter a username!<br />";
                document.getElementById("uname").style.backgroundColor = "red";
                msg = false;
            }
            else if (document.getElementById("uname").value.length < 2 || document.getElementById("uname").value.length > 8) {
                document.getElementById("error").innerHTML += "Your username must be between 2 to 8 letters long </br>";
                document.getElementById("uname").style.backgroundColor = "red";
                msg = false;
            }
            if (document.getElementById("male").checked == false && document.getElementById("female").checked == false) {
                document.getElementById("error").innerHTML += "Don't forget to add your gender </br>";
                msg = false;
            }
            if (document.getElementById("email").value == "") {
                document.getElementById("error").innerHTML += "Don't forget to Enter an email address<br />";
                document.getElementById("email").style.backgroundColor = "red";
                msg = false;
            }
            else if (document.getElementById("email").value.indexOf('@') < 1) {
                document.getElementById("error").innerHTML += "your email must contain an @ synbol </br>";
                document.getElementById("email").style.backgroundColor = "red";
                msg = false;
            }
            else if (document.getElementById("email").value.lastIndexOf('@') != document.getElementById("email").value.indexOf('@')) {
                document.getElementById("error").innerHTML += "your email must contain only one @ </br>";
                document.getElementById("email").style.backgroundColor = "red";
                msg = false;
            }
            if (document.getElementById("passw").value == "") {
                document.getElementById("error").innerHTML += "Don't forget to Enter a password<br />";
                document.getElementById("passw").style.backgroundColor = "red";
                msg = false;
            }
            else {
                var CharCount = 0;
                var NumCount = 0;
                for (i = 0; i < document.getElementById("passw").value.length; i++) {
                    if (isNaN(document.getElementById("passw").value.charAt(i)) == true) {
                        CharCount++;
                    }
                    else {
                        NumCount++
                    }
                }
                if ((CharCount == 0) || (NumCount == 0)) {
                    document.getElementById("error").innerHTML += "password must contain letters and numbers</br>";
                    document.getElementById("passw").style.backgroundColor = "red";
                    msg = false;
                }
            }
            if (document.getElementById("conpassw").value == "") {
                document.getElementById("error").innerHTML += "Don't forget to Enter a password confirmation<br />";
                document.getElementById("conpassw").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("conpassw").value != document.getElementById("passw").value) {
                document.getElementById("error").innerHTML += "password confirmation and password must be the same<br />";
                document.getElementById("conpassw").style.backgroundColor = "red";
                document.getElementById("passw").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("phone").value == "") {
                document.getElementById("error").innerHTML += "Don't forget to Enter a tellephone number<br />";
                document.getElementById("phone").style.backgroundColor = "red";
                msg = false;
            }
            else if (isNaN(document.getElementById("phone").value) == true) {
                document.getElementById("error").innerHTML += "Your phone number can only contain numbers </br>";
                document.getElementById("phone").style.backgroundColor = "red";
                msg = false;
            }
            else if (document.getElementById("phone").value.length != 10) {
                document.getElementById("error").innerHTML += "Your phone can only be 10 numbers long</br>";
                document.getElementById("phone").style.backgroundColor = "red";
                msg = false;
                }
            if (document.getElementById("age").value == "") {
                document.getElementById("error").innerHTML += "Don't forget to Enter a date<br />";
                document.getElementById("age").style.backgroundColor = "red";
                msg = false;
            }
            if (document.getElementById("Accept").checked == false) {
                document.getElementById("error").innerHTML += "You must accept the terms of service<br />";
                document.getElementById("Accept").style.backgroundColor = "red";
                msg = false;
            }
            return msg;
        }
    </script>
    <style>
        input[type=radio], input[type=checkbox] {
            text-align: left;
            padding: 0px 2px;
            margin: 0px 0;
            width: 1%;
        }
        input{
            width: 40%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            text-align: left;
        }
        RegisterStyle {
            margin: 100px;
        }
    </style>
    <meta charset="utf-8" />
    <title>Register</title>
</head>
<body>
    <ul>
        <li style="float:right"><a class="active" href="Home.html">דף הבית</a></li>
    </ul>
    <h1> Register Into the Maracas </h1>
    <form id="register" runat="server" name="register" onsubmit="return IsValidreg()"  method="post">
        <div class="RegisterStyle" style="text-align:center">
            <p2> Enter your name </p2>
            <br/>
            <input type="text" placeholder="First Name" value="" style="text-align:left;" name="fname" id="fname"/>
            <br/>
            <input type="text" placeholder="Last Name" style="text-align:left;" name="lname" id="lname"/>
            <br/>
            <input type="text" placeholder="Username" style="text-align:left;" name="uname" id="uname">
            <br/>
            <p2> Enter your password </p2>
            <br/>
            <input type="Password" placeholder="Password" style="text-align:left;" name="passw" id="passw">
            <br>
            <input type="Password" placeholder="Confirm Password" style="text-align:left;" name="conpassw" id="conpassw">
            <br>
            <p2> Enter your email </p2>
            <br>
            <input type="text" placeholder="Email" style="text-align:left;" name="email" id="email">
            <br>
            <p2> Enter your gender </p2>
            <br>
            <a>Male</a>
            <input type="radio" name=“gender” value=“Male” id="male"/>
            <a>Female</a>
            <input type="radio" name=“gender” value=“Female” id="female"/>
            <br>
            <br>
            <p2>Enter Your Birthday</p2>
            <br>
            <input type="date" name="age" id="age" min="1900-01-01" max="2020-12-31"/>
            <br>
            <p2>Enter your phone number</p2>
            <br>
            <input type="text" placeholder="Phone Number" name="phone" id="phone"/>
            <br>
            <a>I accept the terms of service</a>
            <input type="checkbox" name="Accept" id="Accept"/>
            <br>
            <input type="submit" name="submit" id="submit">
            <input type="reset" onclick="Reset()"/>
            <div class="error" id="error"></div>
        </div>
    </form>
</body>
</html>