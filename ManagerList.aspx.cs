using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class ManagerLisht : System.Web.UI.Page
    {
        OrderClassesLogic Ol = new OrderClassesLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request.QueryString["data"];
            if (!string.IsNullOrEmpty(s))
            {
                string[] arr = s.Split('*'); //כל פעם שיש כוכבית- לשים את מה שהיה לפני בתוך תא
                string all = "People in " + arr[0] + "  with  " + arr[1] + " at:" + arr[2] + ", " + arr[3] + ":00  ?";
                Label1.Text = all;
                GridView1.DataSource = Ol.showNames(Int32.Parse(arr[4]));
                GridView1.DataBind();
            }
        }
    }
}