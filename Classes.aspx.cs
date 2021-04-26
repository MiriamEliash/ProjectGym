using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Classes : System.Web.UI.Page
    {
        ClassesLogic dl = new ClassesLogic();
        TeacherClassLogic tc = new TeacherClassLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = dl.getAllClasses();
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string numPeople = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[2].Controls[0])).Text;
                string Details = ((TextBox)(GridView1.Rows[e.RowIndex].Cells[3].Controls[0])).Text;
                dl.updateClass(Int32.Parse(numPeople), Int32.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text));
                dl.updateDetails(Int32.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text), Details);
                GridView1.EditIndex = -1;
                GridView1.DataSource = dl.getAllClasses();
                GridView1.DataBind();
            }
            catch( Exception ex)
            {
                Label1.Text = "שגיאה, יש לנסות מאוחר יותר";
            }
        
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = dl.getAllClasses();
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = dl.getAllClasses();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClassTime.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dl.deleteClass(Int32.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text));// מוחרת מהטבלה של החוגים את החוג הספציפי לפי קוד חוג
            tc.deleteClass(Int32.Parse(GridView1.Rows[e.RowIndex].Cells[0].Text)); // מוחקת מטבלה המחברת בין חוג למדריך את החיבורים לפי קוד חוג


            GridView1.EditIndex = -1;
            GridView1.DataSource = dl.getAllClasses();
            GridView1.DataBind();
            //צריך להוסיך מחיקה מעוד 2 טבלאות
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddClass.aspx");
        }
    }
}