<link rel="stylesheet" href="StyleSheet.css">
<link rel="" href="avaScript.js">
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <script type="text/javascript">


        function IsValidreg() {
            document.getElementById("error").innerHTML = "";
            var msg = true;

            if (document.getElementById("fname").value == "") {
                document.getElementById("error").innerHTML += "you need to type a first name<br />";
                document.getElementById("fname").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("lname").value == "") {
                document.getElementById("error").innerHTML += "you need to type a second name<br />";
                document.getElementById("lname").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("uname").value == "") {
                document.getElementById("error").innerHTML += "you need to type a username<br />";
                document.getElementById("uname").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("email").value == "") {
                document.getElementById("error").innerHTML += "you need to type a email<br />";
                document.getElementById("email").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("passw").value == "") {
                document.getElementById("error").innerHTML += "you need to type a password<br />";
                document.getElementById("passw").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("conpassw").value == "") {
                document.getElementById("error").innerHTML += "you need to type a password confirmation<br />";
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
                document.getElementById("error").innerHTML += "you need to type a tellephone number<br />";
                document.getElementById("phone").style.backgroundColor = "red";
                msg = false;
            }

            if (document.getElementById("age").value == null) {
                document.getElementById("error").innerHTML += "you need to type a date<br />";
                document.getElementById("age").style.backgroundColor = "red";
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
    <form name="register" onsubmit="return IsValidreg()" action="Register.aspx" method="post">
        <div class="RegisterStyle">
            <p2> Enter your name </p2>
            <br>
            <input type="text" placeholder="First Name" value="" style="text-align:left;" name="fname" id="fname"/>
            <br>
            <input type="text" placeholder="Last Name" style="text-align:left;" name="lname" id="lname"/>
            <br>
            <input type="text" placeholder="Username" style="text-align:left;" name="uname" id="uname">
            <br>
            <p2> Enter your password </p2>
            <br>
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
            <a>             Male</a>
            <input type="checkbox" placeholder="Male" name=“gender” value=“Male” id="gender"/>
            <br>
            <br>
            <p2>Enter Your Birthday</p2>
            <br>
            <input type="date" name="age" id="age"/>
            <br>
            <p2>Enter your phone number</p2>
            <br>
            <input type="text" placeholder="Phone Number" name="phone" id="phone"/>
            <br>
            <a>I accept the terms of service</a>
            <input type="checkbox" name="Accept" id="Accept"/>
            <br>
            <input type="submit" name="submit" id="submit">
            <input type="reset"/>
            <div class="error" id="error"></div>
        </div>
    </form>
</body>
</html>