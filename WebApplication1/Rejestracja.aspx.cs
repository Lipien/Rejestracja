using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                this.MultiView1.SetActiveView(View1);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.DropDownList1.SelectedValue.ToString() == "PJWSTK")
            {
                this.MultiView1.SetActiveView(View2);
            }

            if (this.DropDownList1.SelectedValue.ToString() == "Gosc")
            {
                this.MultiView1.SetActiveView(View3);
            }
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {
            if (this.MultiView1.ActiveViewIndex == 1)
            {
                this.TextBoxImie2.Text = this.TextBoxImie1.Text;
                this.TextBoxNick2.Text = this.TextBoxNick1.Text;
            }

            if (this.MultiView1.ActiveViewIndex == 2)
            {
                this.TextBoxImie3.Text = this.TextBoxImie1.Text;
                this.TextBoxNick3.Text = this.TextBoxNick1.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String Imie2 = this.TextBoxImie2.Text;
            Response.Redirect("Wyszukiwanie.aspx?Imie=" + Imie2);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            String Imie3 = this.TextBoxImie3.Text;
            Response.Redirect("Wyszukiwanie.aspx?Imie=" + Imie3);
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (this.CheckBox1.Checked)
            {
                this.TextBox1.Visible = true;
            }
            else 
            { 
                this.TextBox1.Visible = false;
            }

            if (this.CheckBox1.Checked)
            {
                this.TextBox2.Visible = true;
            }
            else
            {
                this.TextBox2.Visible = false;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.TextBoxImie3.Text = "";
            this.TextBoxNick3.Text = "";
            this.TextBoxRok.Text = "";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
        }
    }
}