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
        string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
        SqlConnection sqlconn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!Page.IsPostBack)
            {
              
                LabBPosteddate.Text = DateTime.Now.ToString();
                DDLBCat.Items.Insert(0, "--Select Category--");
            }
        }

        protected void ButSubmit_Click(object sender, EventArgs e)
        {
            
            using (sqlconn = new SqlConnection(mainconn))
            {
                sqlconn.Open();
                string sqlquery = "insert into blog (Btitle,Bcategory,BDesc,BUrl,Bposteddate) values (@Btitle,@Bcategory,@BDesc,@BUrl,@Bposteddate)";

                cmd = new SqlCommand(sqlquery, sqlconn);
                cmd.Parameters.AddWithValue("@Btitle", TxtBlogTitle.Text);
                cmd.Parameters.AddWithValue("@Bcategory", DDLBCat.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@BDesc", TxtBDesc.Text);
                cmd.Parameters.AddWithValue("@BUrl", TxtBurl.Text);
                cmd.Parameters.AddWithValue("@Bposteddate", LabBPosteddate.Text);
                cmd.ExecuteNonQuery();
                sqlconn.Close();
            }
            Response.Redirect("~/Admin/Admin-Panel.aspx");
           

        }
    }
}