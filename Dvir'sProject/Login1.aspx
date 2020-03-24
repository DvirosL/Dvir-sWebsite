<link rel="stylesheet" href="StyleSheet.css">

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login1.aspx.cs" Inherits="login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

            button {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      
      text-align: center;
    }

    button:hover {
      opacity: 0.8;
    }

    .cancelbtn {
      width: auto;
      padding: 10px 18px;
      background-color: #f44336;
    }

    .imgcontainer {
      text-align: center;
      margin: 24px 0 12px 0;
    }

    img.avatar {
      width: 19%;
      border-radius: 50%;
      text-align:left;
    }

    .container {
      padding: 16px;
    }

    span.psw {
      float: right;
      padding-top: 16px;
    }

    @media screen and (max-width: 300px) {
      span.psw {
        display: block;
        float: none;
      }
      .cancelbtn {
        width: 40%;
      }
}
    </style>

</head>
<body>
    
    <form id="form1" runat="server" action="Login1.aspx" method="post">
        <div>
              <ul>
        <li><a href="About.html">על עצמי</a></li>
        <li><a href="Subject.html">נושא</a></li>
        <li><a href="Info.html">מידע על הנושא</a></li>
        <li><a href="Login.html">התחבר</a></li>
        <li><a href="Pictures.html">תמונות</a></li>
        <li style="float:right"><a class="active" href="Home.html">דף הבית</a></li>
    </ul>
    <form>
        <div class="imgcontainer">
            <img src="https://media.tenor.com/images/900452eb5c425e2e0b5a2bfaca91134c/tenor.gif" alt="Avatar" class="avatar" style="resize:150px; text-align:left; height: 213px;" >
        </div>

        <div class="container">
            <label for="uname"><b>Username:</b></label>
            <br>
            <input type="text" placeholder="Enter Username" style="text-align:center;" name="uname" id="uname">
            <br>
            <label for="psw"><b>Password:</b></label>
            <br>
            <input type="password" placeholder="Enter Password" style="text-align:center;" name="psw" id="psw">
            <br>
            <button href="Home.html">Login</button>
            <br> 
            <a>Don't have an account? </a><a  style="color:darkred" href="Register.html">Register.</a>
</div>
    </form>
        </div>
    </form>
</body>
</html>
