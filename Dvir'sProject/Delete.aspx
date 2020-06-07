<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>
<link rel="stylesheet" href="StyleSheet1.css">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:beige;">
    <ul>
        <li><a href="About.html">על עצמי</a></li>
        <li><a href="Subject.html">נושא</a></li>
        <li><a href="Info.html">מידע על הנושא</a></li>
        <li><a href="Login1.aspx"">התחבר</a></li>
        <li><a href="Pictures.html">תמונות</a></li>
        <li style="float:right"><a class="active" href="Home.html">דף הבית</a></li>
    </ul>
    <h1 style="color: black;
    text-align: center;
    font-size: 100px;">מחיקת משתמשים</h1>

    <form id="form1" runat="server">       
            <asp:Button ID="nameBoxHidden" runat="server" Style="visibility: hidden" OnClick="DeleteUser" />
            <asp:TextBox ID="nameBox" runat="server" Style="visibility: hidden"/>
    </form>
    <div id="contentDiv" runat="server" style="text-align:center">

    </div>
</body>
    <script type="text/javascript">
        function postToServer(id) {
            document.getElementById("nameBoxHidden").value = id;
            document.getElementById("nameBoxHidden").click();
        }
</script>
</html>
