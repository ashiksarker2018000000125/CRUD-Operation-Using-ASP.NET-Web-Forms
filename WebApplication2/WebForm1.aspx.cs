using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Label7.Text = "Wellcome again";
            }
            else
            {
                Label7.Text = "Wellcome ";
            }
        }

        protected void submit1_Click(object sender, EventArgs e)
        {

            Label8.Visible = true;
            Label8.Text = "Your First Name " + TextBox1.Text;
            Label9.Visible = true;
            Label9.Text = "Your Last Name " + TextBox2.Text;
            Label10.Visible = true;
            Label10.Text = "Your Email " + TextBox3.Text;
            Label11.Visible = true;
            Label11.Text = "Your Password " + Password1.Value;
            if (RadioButton1.Checked)
            {
                Label2.Visible = true;
                Label12.Text = "Your selected Gender " + RadioButton1.Text;
            }
            else if (RadioButton2.Checked)
            {
                Label12.Visible = true;
                Label12.Text = "Your selected Gender " + RadioButton2.Text;
            }
            else
            {
                Label12.Visible = true;
                Label12.Text = "You are not select the gender";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Label13.Text = null;
            }
            foreach ( ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    Label13.Visible = true;
                    Label13.Text = Label13.Text + item.Text +" ";
                }
            }
        }
    }
}