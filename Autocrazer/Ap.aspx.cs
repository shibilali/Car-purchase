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
    public partial class Ap : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select Category_id,Category_Name from Category";
                DataSet ds = obj.fn_adapter(s);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Category_Name";
                DropDownList1.DataValueField = "Category_id";
                DropDownList1.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string img = "~/IMGS/" + FileUpload1.FileName;
            FileUpload2.SaveAs(MapPath(img));
            string isr = "insert into Category values('" + TextBox1.Text + "','" + img + "','" + TextBox3.Text + "')";
            int ir = obj.Fn_NonQuery(isr);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string im = "~/PIMG/" + FileUpload2.FileName;
            FileUpload1.SaveAs(MapPath(im));
            string c = TextBox4.Text.Length > 500 ? TextBox4.Text.Substring(0, 500) : TextBox4.Text;
            string isr = "insert into Product values('" + DropDownList1.SelectedItem.Value + "','" + TextBox2.Text + "','" + c + "','" + TextBox5.Text + "'," + TextBox6.Text + ",'" + im + "')";
            int ir = obj.Fn_NonQuery(isr);

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}