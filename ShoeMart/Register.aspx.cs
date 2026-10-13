using System;
using System.Web.UI;
using System.Xml.Linq;

namespace ShoeMart
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            lblout.Visible = true;
            lblout.Text = "<h4>Registration Details</h4>" +
                           "<b>Full Name:</b> " + txtName.Text + "<br/>" +
                           "<b>Email:</b> " + txtRegEmail.Text + "<br/>" +
                           "<b>Password:</b> " + txtRegPassword.Text + "<br/>" +
                           "<b>Confirm Password:</b> " + txtConfirmPassword.Text;
        }
    }
}