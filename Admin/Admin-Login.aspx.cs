﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Create_Project.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            if (TxtAdminLogin.Text == "admin" && TxtPassword.Text == "pasha") //admin is user name and pasha is password
            {
                Response.Redirect("~/Admin/Admin-Panel.aspx");
            }

            else
            {
                Response.Redirect("~/Admin/Admin-Login.aspx");

            }
            }
        }
    }
