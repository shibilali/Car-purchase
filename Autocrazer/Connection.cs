using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Autocrazer
{
    public class Connection
    {
        SqlConnection con;
        SqlCommand cmd;
        public Connection()
        {
            con = new SqlConnection(@"server=AUTOCRAZER\SQLEXPRESS;database=Project1;Integrated Security=true");
        }
        public int Fn_NonQuery(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            return i;
        }
        public string Fn_scalar(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            string i = cmd.ExecuteScalar().ToString();
            return i;
        }
        public SqlDataReader fn_reader(string sqlqurey)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlqurey, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet fn_adapter(string sqlqurey)

        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlqurey, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}