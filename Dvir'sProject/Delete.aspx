<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%
                string db = "Database.mdb";
                MyAdoHelperAccess.ConnectToDb(db);
                Response.Write(MyAdoHelperAccess.printDataTableWithDelete(db, "select * from tbl_users"));
            %>
        </div>
    </form>
</body>
    <script type="text/javascript">
    function changeValue(id) {
        document.getElementById("IdBox").value = id;
        document.getElementById("IdBox").click();
    }
</script>
</html>
