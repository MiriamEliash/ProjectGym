using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class DetailsList : System.Web.UI.Page
    {
        DeviceLogic dl = new DeviceLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = dl.getDetails();


            Repeater1.DataBind();
        }
    }
}