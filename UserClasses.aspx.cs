using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class UserClasses : System.Web.UI.Page
    {
        OrderClassesLogic oc = new OrderClassesLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = oc.showTo(Session["Id"].ToString());
                Repeater1.DataBind();
            }
        }

        protected void checkout_Click(object sender, EventArgs e)
        {

        }

        protected void delete_Click(object sender, EventArgs e)
        {

        }
    }
}