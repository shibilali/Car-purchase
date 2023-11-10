using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autocrazer
{
    public partial class Cart : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            bind_grid();
        }
        public void bind_grid()
        {
            string s = "select * from Carts";
            DataSet ds = obj.fn_adapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string ins = "delete from Carts where Cart_Id=" + id + "";
            obj.Fn_NonQuery(ins);
            bind_grid();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            // Your code for handling row updated event
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {

        }
    }
}