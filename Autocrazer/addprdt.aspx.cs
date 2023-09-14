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
    public partial class addprdt : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Category";
                DataSet ds = obj.fn_adapter(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataValueField = "Category_id";
                DropDownList1.DataBind();

            }

        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            string filePath = "~/PIMG/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(filePath));
            string c = TextBox3.Text.Length > 500 ? TextBox3.Text.Substring(0, 500) : TextBox3.Text;
            string ins = "insert into Product values('"+DropDownList1.SelectedItem.Value+"','" + TextBox2.Text + "','" + c + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + filePath + "')";
            int i = obj.Fn_NonQuery(ins);
            string script = "alert('Product successfully added');";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}