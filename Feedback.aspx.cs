using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Feedback : System.Web.UI.Page
{
        protected void btnSubmit_Click(object sender, EventArgs e)
{
    if (!Page.IsValid) return;

    bool success = DBHelper.InsertFeedback(
        txtName.Text,
        txtEmail.Text,
        txtFeedback.Text
    );

    if (success)
        lblStatus.Text = "Thank you! Your feedback has been submitted.";
    else
        lblStatus.Text = "Something went wrong. Please try again.";
}
    }
