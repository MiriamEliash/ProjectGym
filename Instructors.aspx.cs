using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Instructors : System.Web.UI.Page
    {
        InstructorsLogic dl = new InstructorsLogic();
        internal static string aspx;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = dl.getAllInstructors();
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddInstructor.aspx");
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = dl.getAllInstructors();
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = dl.getAllInstructors();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dl.deleteInstructor(GridView1.Rows[e.RowIndex].Cells[2].Text);
            GridView1.EditIndex = -1;
            GridView1.DataSource = dl.getAllInstructors();
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string Salary = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[4].Controls[0])).Text;
                dl.updateInstructor(Double.Parse(Salary), GridView1.Rows[e.RowIndex].Cells[2].Text);
                GridView1.EditIndex = -1;
                GridView1.DataSource = dl.getAllInstructors();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = "שגיאה, יש לנסות מאוחר יותר";
            }

        }
    }
}