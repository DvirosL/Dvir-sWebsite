using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login1 : System.Web.UI.Page
{
    public string cAs = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string db = "Database.mdb";
            MyAdoHelperAccess.ConnectToDb(db);
            string user = Request["uname"];
            string pass = Request["psw"];
            string sql = "select * from tbl_users where uname='" + user + "' and upass='" + pass + "';";
            if (user == "admin" && MyAdoHelperAccess.IsExist(db, sql))
            {
                Response.Redirect("Delete.aspx");
            }
            else if (MyAdoHelperAccess.IsExist(db, sql))
            {
                Response.Redirect("Home.html");
                cAs = ("You're connected as "+ user);
            }
            else
            {
                Response.Write("Your password OR username isn't oncorrect");
                Response.AddHeader("REFRESH","2;URL=login1.aspx");
            }
        }
    }
}