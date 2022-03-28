using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Create_Project
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select COUNT(case when Blogcategory = 'Dog Food' then 1 end) as DogFood,COUNT(case when Blogcategory = 'Dog Health' then 1 end) as DogHealth,COUNT(case when Blogcategory = 'Grooming' then 1 end) as Grooming from [dbo].[gpblog]";
            sqlconn.Open();
            SqlCommand sqlcomm=new SqlCommand(sqlquery,sqlconn);
            SqlDataReader sdr=sqlcomm.ExecuteReader();  
            if(sdr.Read())
            {
                LabFood.Text=sdr.GetValue(0).ToString();
                LabSports.Text=sdr.GetValue(1).ToString();  
                LabMovies.Text =sdr.GetValue(2).ToString(); 
            }


            sqlconn.Close();
        }
    }
}