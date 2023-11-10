using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autocrazer
{
    public partial class wcf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BalanceCheckService.ServiceClient obj = new BalanceCheckService.ServiceClient();
            string bal = obj.Balance_check(TextBox1.Text);
            Label1.Text = bal;
        }
    }
}