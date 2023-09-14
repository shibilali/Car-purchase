using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Autocrazer
{
    public partial class Reg : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(Reg_Id)from Login";
            string regid = obj.Fn_scalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string ins = "insert into User_reg values(" + reg_id + ",'" + TextBox2.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox7.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            int i = obj.Fn_NonQuery(ins);
            string inslog = "insert into Login values(" + reg_id + ",'" + TextBox3.Text + "','" + TextBox10.Text + "','User','Active')";
            int j = obj.Fn_NonQuery(inslog);
            string script = "alert('Sign Up Success');";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}