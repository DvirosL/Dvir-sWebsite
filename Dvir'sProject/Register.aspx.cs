using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string db = Database.mdb;
        MyAdoHelperAccess.ConnectToDb(db);

        string uname = Request.Form["uname"];
        string fname = Request.Form["fName"];
        string lname = Request.Form["lName"];
        string passw = Request.Form["passW"];
        string email = Request.Form["email"];
        string bday = Request.Form["bday"];
        string gender = Request.Form["gender"];
        string phone = Request.Form["phone"];
        string sql = "Select * from tbl_users where UserName='" + uname + "'";
        if (MyAdoHelperAccess.IsExist(db, sql))
        {
            Response.Write("Username alreay exists");
            Response.AddHeader("REFRESH", "2;URL=Register.html");
        }
        else
        {
            MyAdoHelperAccess.DoQuery(db, "insert into tbl_users (uname, Fname, Lname, upass, email, bday, gender, cellNum) values ('" + uname + "', '" + fname + "', '" + lname + "', '" + passw + "', '" + email + "', '" + bday + "', '" + gender + "', '" + phone + "');");
        }
        
    }
}