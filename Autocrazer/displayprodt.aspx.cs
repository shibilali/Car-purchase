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
    public partial class displayprodt : System.Web.UI.Page
    {
        Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string s = "select * from Product where Category_Id=" + Session["cid"] + "";
                DataSet ds = obj.fn_adapter(s);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            DataListItem item = (DataListItem)button.NamingContainer;

            Image image = (Image)item.FindControl("ImageButton1");
            Label label3 = (Label)item.FindControl("Label3");
            Label label4 = (Label)item.FindControl("Label4");
            Label label2 = (Label)item.FindControl("Label2");

            string imageUrl = image.ImageUrl;
            string productName = label3.Text;
            string description = label4.Text;
            string price = label2.Text;
            // check whether the id is 0 or nto if zero make CART_ID=1 
            string ins = "select max(Cart_Id) from Carts";
            string regid = obj.Fn_scalar(ins);
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

            // Now, you can use these values to insert them into another table
            string insertQuery = "INSERT INTO Carts (Product_Image, Product_Name, Product_Discription, Product_Price) VALUES ('" + imageUrl + "','" + productName + "', '" + description + "', '" + price + "')";


            int rowsAffected = obj.Fn_NonQuery(insertQuery);

            if (rowsAffected > 0)
            {
                // The data was successfully inserted
                Response.Redirect("Cart.aspx");
            }
            else
            {
                // There was an issue with the insertion
                Response.Write("Error inserting data.");
            }

        }
    }
}