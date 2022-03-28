using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Create_Project.Admin
{
    public partial class Admin_Panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

                LabBPosteddate.Text = DateTime.Now.ToString();
                DDLBCat.Items.Insert(0, "-- Select Category --");

            }

        }

        protected void ButSubmit_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "insert into [dbo].[gpblog] (Blogtitle,Blogcategory,BlogDesc,BlogUrl,Blogposteddate) values (@Blogtitle,@Blogcategory,@BlogDesc,@BlogUrl,@Blogposteddate)";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@Blogtitle", TxtBlogTitle.Text);
            sqlcomm.Parameters.AddWithValue("@Blogcategory", DDLBCat.SelectedItem.Text.ToString());
            sqlcomm.Parameters.AddWithValue("@BlogDesc", TxtBDesc.Text);
            sqlcomm.Parameters.AddWithValue("@BlogUrl", TxtBurl.Text);
            sqlcomm.Parameters.AddWithValue("@Blogposteddate", LabBPosteddate.Text);
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            Response.Redirect("~/Admin/Admin-Panel.aspx");
        }
    }
}