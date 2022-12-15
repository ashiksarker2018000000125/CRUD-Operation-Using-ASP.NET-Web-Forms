using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CRUDWebForm : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("data source=ANIK-PC\\MSSQL2K14; database=xm; User ID=sa; Password=12345");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }



        }
        private void ShowData()
        {
            //SqlCommand command = new SqlCommand("Select * from student", connection);


            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "studentinsert"; //store procedure name 
            cmd.CommandType = CommandType.StoredProcedure;  //
            cmd.Parameters.Add(new SqlParameter("@CallType", "SHOWDATA"));

            //cmd.Parameters.Add(new SqlParameter("@Desc1", mDesc1));
            //cmd.Parameters.Add(new SqlParameter("@Desc2", mDesc2));
            //cmd.Parameters.Add(new SqlParameter("@Desc3", mDesc3));
            //cmd.Parameters.Add(new SqlParameter("@Desc4", mDesc4));
            //cmd.Parameters.Add(new SqlParameter("@Desc5", mDesc5));
            //cmd.Parameters.Add(new SqlParameter("@Desc6", mDesc6));
            //cmd.Parameters.Add(new SqlParameter("@Desc7", mDesc7));
            //cmd.Parameters.Add(new SqlParameter("@Desc8", mDesc8));
            //cmd.Parameters.Add(new SqlParameter("@Desc9", mDesc9));

            connection.Open();
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            cmd.Connection = connection;
            cmd.ExecuteNonQuery();
            connection.Close();

            DataSet ds = new DataSet();
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Session["tblstudent"] = ds.Tables[0];
        }

        protected void submit1_Click(object sender, EventArgs e)
        {

            string mDesc1 = txtname.Text;
            string mDesc2 = txtfathertname.Text;
            string mDesc3 = txtmothername.Text;
            string mDesc4 = txtdistrict.Text;
            string mDesc5;
            string mDesc6;
            string mDesc7 = txtnumber.Text;
            string mDesc8 = txtdob.Value;
            string ID = hdnIDx.Text;

            if (rbtnmale.Checked)
            {
                mDesc5 = rbtnmale.Text;
            }
            else if (rbtnfemale.Checked)
            {
                mDesc5 = rbtnfemale.Text;
            }
            else
            {
                mDesc5 = " ";
            }

            if (rbtnmarried.Checked)
            {
                mDesc6 = rbtnmarried.Text;
            }
            else if (rbtnunmarried.Checked)
            {
                mDesc6 = rbtnunmarried.Text;
            }
            else if (rbtdevorced.Checked)
            {
                mDesc6 = rbtdevorced.Text;
            }
            else
            {
                mDesc6 = " ";
            }


            if (ID.Length > 0)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "studentinsert"; //store procedure name 
                cmd.CommandType = CommandType.StoredProcedure;  //store procedure type
                cmd.Parameters.Add(new SqlParameter("@CallType", "UPDATEDATA"));
                cmd.Parameters.Add(new SqlParameter("@Desc1", mDesc1));
                cmd.Parameters.Add(new SqlParameter("@Desc2", mDesc2));
                cmd.Parameters.Add(new SqlParameter("@Desc3", mDesc3));
                cmd.Parameters.Add(new SqlParameter("@Desc4", mDesc4));
                cmd.Parameters.Add(new SqlParameter("@Desc5", mDesc5));
                cmd.Parameters.Add(new SqlParameter("@Desc6", mDesc6));
                cmd.Parameters.Add(new SqlParameter("@Desc7", mDesc7));
                cmd.Parameters.Add(new SqlParameter("@Desc8", mDesc8));
                cmd.Parameters.Add(new SqlParameter("@Desc9", ID));


                connection.Open();
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                cmd.Connection = connection;
                cmd.ExecuteNonQuery();
                connection.Close();
                ShowData();
            }
            else
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "studentinsert"; //store procedure name 
                cmd.CommandType = CommandType.StoredProcedure;  //store procedure type
                cmd.Parameters.Add(new SqlParameter("@CallType", "INSERTORUPDATESTUDENT"));
                cmd.Parameters.Add(new SqlParameter("@Desc1", mDesc1));
                cmd.Parameters.Add(new SqlParameter("@Desc2", mDesc2));
                cmd.Parameters.Add(new SqlParameter("@Desc3", mDesc3));
                cmd.Parameters.Add(new SqlParameter("@Desc4", mDesc4));
                cmd.Parameters.Add(new SqlParameter("@Desc5", mDesc5));
                cmd.Parameters.Add(new SqlParameter("@Desc6", mDesc6));
                cmd.Parameters.Add(new SqlParameter("@Desc7", mDesc7));
                cmd.Parameters.Add(new SqlParameter("@Desc8", mDesc8));

                connection.Open();
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                cmd.Connection = connection;
                cmd.ExecuteNonQuery();
                connection.Close();
                ShowData();
            }



            //SqlConnection connection = new SqlConnection("data source=ANIK-PC\\MSSQL2K14; database=xm; User ID=sa; Password=12345");
            //SqlCommand command = new SqlCommand("Insert into Student values ('"+txtname.Text+"','"+txtfathertname.Text+"','"+txtmothername.Text+"','"+txtdistrict.Text+ "','"+ mDesc5+ "','" + mDesc6 + "','"+txtnumber.Text+"','"+txtdob.Value+"')", connection);
            //connection.Open();
            //SqlDataReader mydata = command.ExecuteReader();
            //connection.Close();
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string sid = ((Label)this.GridView1.Rows[rowindex].FindControl("id")).Text.ToString();
            //string mDesc1 = sid;
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = "studentinsert"; //store procedure name 
            //cmd.CommandType = CommandType.StoredProcedure;  //store procedure type
            //cmd.Parameters.Add(new SqlParameter("@CallType", "GETDATA"));
            //cmd.Parameters.Add(new SqlParameter("@Desc1", mDesc1));

            //connection.Open();
            //SqlDataAdapter adp = new SqlDataAdapter();
            //adp.SelectCommand = cmd;
            //cmd.Connection = connection;
            //cmd.ExecuteNonQuery();
            //connection.Close();

            //DataSet ds = new DataSet();
            //adp.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();


            //SqlCommand cmd = new SqlCommand("Select * from student where id='"+sid+"'", connection);
            //connection.Open();
            //SqlDataReader mydata = cmd.ExecuteReader();
            //connection.Close();
            //ShowData();
            //-----------------------------


            DataTable dt = (DataTable)Session["tblstudent"]; //parseing // session theke niye ashse not from databse
            DataRow[] dr = dt.Select("id=" + sid);

            this.txtname.Text = dr[0]["name"].ToString();
            this.txtfathertname.Text = dr[0]["fathername"].ToString();
            this.txtmothername.Text = dr[0]["mothername"].ToString();
            this.txtdistrict.Text = dr[0]["district"].ToString();
            string gender = dr[0]["gender"].ToString();
            if (gender == "Male")
            {

                this.rbtnmale.Checked = true;
            }
            else if (gender == "Female")
            {

                this.rbtnfemale.Checked = true;
            }
            else
            {
                this.rbtnmale.Checked = false;
                this.rbtnfemale.Checked = false;
            }

            string marriedstatus = dr[0]["maridstatus"].ToString();
            if (marriedstatus == "Married")
            {
                this.rbtnmarried.Checked = true;
            }
            else if (marriedstatus == "Unmarried")
            {
                this.rbtnunmarried.Checked = true;
            }
            else if (marriedstatus == "Devoirced")
            {
                this.rbtdevorced.Checked = true;
            }
            else
            {
                this.rbtnmarried.Checked = false;
                this.rbtnunmarried.Checked = false;
                this.rbtdevorced.Checked = false;
            }


            this.txtnumber.Text = dr[0]["phone"].ToString();
            this.txtdob.Value = dr[0]["dob"].ToString();
            this.hdnIDx.Text = dr[0]["id"].ToString();

            //DateTime dateTime = DateTime.Parse(dr[0]["dob"].ToString()); //convert string to datetime

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            string mDesc1;
            int rowindex = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
            string sid = ((Label)this.GridView1.Rows[rowindex].FindControl("id")).Text.ToString();
            mDesc1 = sid;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "studentinsert"; //store procedure name 
            cmd.CommandType = CommandType.StoredProcedure;  //store procedure type
            cmd.Parameters.Add(new SqlParameter("@CallType", "DELETEDATA"));
            cmd.Parameters.Add(new SqlParameter("@Desc1", mDesc1));

            connection.Open();
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            cmd.Connection = connection;
            cmd.ExecuteNonQuery();
            connection.Close();
            ShowData();




            //SqlConnection connection = new SqlConnection("data source=ANIK-PC\\MSSQL2K14; database=xm; User ID=sa; Password=12345");
            //SqlCommand command = new SqlCommand("Delete from student where id=", connection);
            //connection.Open();
            //SqlDataReader mydata = command.ExecuteReader();
            //connection.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)Session["tblstudent"];

            int rowindex = (this.GridView1.PageSize) * (this.GridView1.PageIndex) + e.RowIndex;
            string sid = ((Label)this.GridView1.Rows[rowindex].FindControl("id")).Text.ToString(); //find the row id

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "studentinsert"; //store procedure name 
            cmd.CommandType = CommandType.StoredProcedure;  //store procedure type
            cmd.Parameters.Add(new SqlParameter("@CallType", "DELETEDATA"));
            cmd.Parameters.Add(new SqlParameter("@Desc1", sid));

            connection.Open();
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            cmd.Connection = connection;
            int result = cmd.ExecuteNonQuery();
            connection.Close();

            if (result != null)
            {
                dt.Rows[rowindex].Delete();

                DataView dv = dt.DefaultView;
                Session.Remove("tblstudent");
                Session["tblstudent"] = dv.ToTable();
                this.BindData();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string mDesc1 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvname")).Text.Trim();
            string mDesc2 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvfathertname")).Text.Trim();
            string mDesc3 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvmothername")).Text.Trim();
            string mDesc4 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvdistrict")).Text.Trim();
            string mDesc5 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvgender")).Text.Trim();
            string mDesc6 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvmarriedstatus")).Text.Trim();
            string mDesc7 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvnumber")).Text.Trim();
            string mDesc8 = ""; //((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtgvdob")).Text.Trim(); 
            string ID = ((Label)GridView1.Rows[e.RowIndex].FindControl("id")).Text.Trim();


            if (ID.Length > 0)
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "studentinsert"; //store procedure name 
                cmd.CommandType = CommandType.StoredProcedure;  //store procedure type
                cmd.Parameters.Add(new SqlParameter("@CallType", "UPDATEDATA"));
                cmd.Parameters.Add(new SqlParameter("@Desc1", mDesc1));
                cmd.Parameters.Add(new SqlParameter("@Desc2", mDesc2));
                cmd.Parameters.Add(new SqlParameter("@Desc3", mDesc3));
                cmd.Parameters.Add(new SqlParameter("@Desc4", mDesc4));
                cmd.Parameters.Add(new SqlParameter("@Desc5", mDesc5));
                cmd.Parameters.Add(new SqlParameter("@Desc6", mDesc6));
                cmd.Parameters.Add(new SqlParameter("@Desc7", mDesc7));
                cmd.Parameters.Add(new SqlParameter("@Desc8", mDesc8));
                cmd.Parameters.Add(new SqlParameter("@Desc9", ID));


                connection.Open();
                SqlDataAdapter adp = new SqlDataAdapter();
                adp.SelectCommand = cmd;
                cmd.Connection = connection;
                cmd.ExecuteNonQuery();
                connection.Close();

                GridView1.EditIndex = -1;
                BindData();
                ShowData();

            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindData();
        }

        private void BindData()
        {
            GridView1.DataSource = Session["tblstudent"];
            GridView1.DataBind();
        }

    }
}