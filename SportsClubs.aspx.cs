using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class SportsClubs : System.Web.UI.Page
    {
        ClassesLogic dl = new ClassesLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = dl.getName();
                
               // Repeater1.DataSource = dl.getDetails();

                Repeater1.DataBind();
            }
        }
    }
}