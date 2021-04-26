using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Insurance : System.Web.UI.Page
    {
        /*  Insurance esI = new Insurance();
          protected void Page_Load(object sender, EventArgs e)
          {

              if (!IsPostBack)
              {
                //  GridView1.DataSource = esI.getAllCustomers("6044");
                  GridView1.DataBind();
              }


          }

          protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
          {//שינוי?

          }

          protected void Button1_Click(object sender, EventArgs e)
          {
              if (!IsPostBack)
              {
                  //GridView1.DataSource = esI.getApproveCustomers("6044");
                  GridView1.DataBind();
              }
          }

          protected void Button2_Click(object sender, EventArgs e)
          {
              if (!IsPostBack)
              {
                  //GridView1.DataSource = esI.getNotApproveCustomers("6044");
                  GridView1.DataBind();
              }
          }

          protected void Button3_Click(object sender, EventArgs e)
          {

                  //UserServise us = new UserServise();

                  foreach (GridViewRow row in GridView1.Rows)
                  {
                      if (row.RowType == DataControlRowType.DataRow)
                      {
                          CheckBox chkRow = (row.Cells[4].FindControl("CheckBox1") as CheckBox);
                          if (chkRow.Checked)
                          {
                              string storid = row.Cells[1].Text;
                              int storname = Int32.Parse(row.Cells[2].Text);
                              string state = row.Cells[3].Text;
                              //data = data + storid + " ,  " + storname + " , " + state + "<br>";
                              //esI.setType(storname);
                          }
                      }
                  }
                 // PopulateGrid();
                  // lblmsg.Text = data;

          }*/
    }
}