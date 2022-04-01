Great Pyr Blog Site - Software Development 2 (C#/.NET) Project

This project is about a blog website that I created to help dog owners and Great Pyranees breed owners in particular learn more about their animals and how to better take care of them. 
There are two main sections to this blog website. First section is "Admin-Login" section. This section allows user to log in to the website, enter username and password and then be redirected 
to "Admin-Panel" section. In "Admin-Panel" section user then appends newly created homepage (that is placed in either "Dog Food", "Dog Health" or "Grooming" folder) to SQLExpress "gp" database.
Once newly created webpage is appended to the database, counter on the right changes indicating total number of articles under that particular section. Second section of this blog website
is the actual interface where visitors can access and read blog articles organized in three four different sections "Home", "Dog Food", "Dog Health" and "Grooming". "Home" section lists all
of the published blog articles while each of the other sections only lists articles related to that particular section. 

This project was designed and made to be accessed in Microsoft Visual Studio.

This project is built to meet the following requirements of Software Development 2 (C#/.NET) Louisville January 2022 session:

Read data from an external file, such as text, JSON, CSV, etc and use that data in your application (data on blog articles is stored and retrieved via SqlExpress database)
Create an additional class which inherits one or more properties from its parent. (used throughout my project)
Visualize data in a graph, chart, or other visual representation of data (data on blog articles is retrieved from SQL database and displayed on the website in an organized fashion)
Create a dictionary or list, populate it with several values, retrieve at least one value, and use it in your program (used throughout my project)
Calculate and display data based on an external factor (ex. get the current date, and display how many days remaining until some event) (Each blog article displays the exact data/time of its 
submission.) 

More information about the database used:

SQLExpress Server Database ("gp" is the name of the database and the list is dbo.gpblog)

Project packages:
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

How to run this project:
First pick a rubric that you would like to post your blog page in. Click on the rubric folder and select Add -> Web Form with Master Page. In asp:Content add your HTML text to be displayed
on your blog page. Once blog page has been created, head to Admin-Login.aspx.cs and run the program. A log in page will show up. Under username enter "admin" and under password enter "pasha".
Click on Submit. This will take you to Admin-Panel page. In this page select the rubric that you are posting your blog page in and then select name and extension of blog page that you created.
Make sure that you enter description of your blog page as well. Once you click submit, all that information will be uploaded into SQLExpress database. On the right you will see counter
number change in the rubric that you are publishing in. This will indicate that your blog page has been successfully submitted. Then go to Home panel and you will see your blog article
show up.


