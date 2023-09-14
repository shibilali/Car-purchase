using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autocrazer
{
    public partial class Addcatgry : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string filePath = "~/IMGS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(filePath));
            string ins = "insert into Category values ('" + TextBox1.Text + "','" + filePath + "','" + TextBox3.Text + "')";
            int i = obj.Fn_NonQuery(ins);
            string script = "alert('Product successfully added');";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        }
    }
}