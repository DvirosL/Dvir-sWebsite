﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string db = "Database.mdb";
            MyAdoHelperAccess.ConnectToDb(db);
            string uname = Request.Form["uname"];
            string fname = Request.Form["fname"];
            string lname = Request.Form["lname"];
            string passw = Request.Form["passw"];
            string email = Request.Form["email"];
            string bday = Request.Form["age"];
            string gender = Request.Form["gender"];
            string phone = Request.Form["phone"];
            string sql = "Select * from tbl_users where uname='" + uname + "'";
            if (!MyAdoHelperAccess.IsExist(db, sql))
            {
                MyAdoHelperAccess.DoQuery(db, "insert into tbl_users (uname, Fname, Lname, upass, email, bday, gender, cellNum, phoneNum) values ('" + uname + "', '" + fname + "', '" + lname + "', '" + passw + "', '" + email + "', '" + bday + "', '" + gender + "', '" + phone.Substring(0, 3) + "', '" + phone.Substring(3) + "');");
                Response.Redirect("Login1.aspx");
            }
            else
            {
                Response.Write("Username already exists");
                Response.AddHeader("REFRESH", "2;URL=Register1.aspx");
            }
        }
    }
    }