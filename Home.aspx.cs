using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string adminId = txtAdminID.Text.Trim();
        string password = txtPassword.Text.Trim();

        string connStr = ConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connStr))
        {
            conn.Open();
            string sql = "SELECT COUNT(*) FROM Admins WHERE AdminID=@admin AND Password=@pass";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@admin", adminId);
            cmd.Parameters.AddWithValue("@pass", password);

            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count == 1)
            {
                // Store logged-in admin in session
                Session["IsAdmin"] = true;
                Response.Redirect("ViewFeedbacks.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Admin ID or Password!";
            }
        }
    }
}
