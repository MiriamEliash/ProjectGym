using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Device : System.Web.UI.Page
    {
        DeviceLogic dl = new DeviceLogic();
        internal static string aspx;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = dl.getAllDevice();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = dl.getAllDevice();
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = dl.getAllDevice();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dl.deleteDevices(int.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text));
            GridView1.EditIndex = -1;
            GridView1.DataSource = dl.getAllDevice();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string price = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
                string company = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
                string Details = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text;
                dl.updateDevice(Double.Parse(price), company, Int32.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text), Details);
                GridView1.EditIndex = -1;
                GridView1.DataSource = dl.getAllDevice();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = "שגיאה, יש לנסות מאוחר יותר";
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDevice.aspx");
        }
    }
}