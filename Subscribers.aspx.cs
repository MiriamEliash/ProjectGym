using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Subscribers : System.Web.UI.Page
    {
        SubscribersLogic dl = new SubscribersLogic();
        internal static string aspx;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView.DataSource = dl.getAllSubscribers();
                GridView.DataBind();
            }
        }

        protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            dl.deleteUser(GridView.Rows[e.RowIndex].Cells[0].Text);
            GridView.EditIndex = -1;
            GridView.DataSource = dl.getAllSubscribers();
            GridView.DataBind();
        }
    }
}