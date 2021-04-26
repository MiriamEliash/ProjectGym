using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class AddDevice : System.Web.UI.Page
    {
        internal static string aspx;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DeviceLogic dl = new DeviceLogic();
            if (!dl.newDevice(int.Parse(inputCodeDevice.Text), inputName.Text, double.Parse(inputFacilityCost.Text), inputFreightCompany.Text, 1111, inputDetails.Text))
                Label2.Text = "The code is already exist";
            else
                Label2.Text = "you have successfuly add a new dvice!";
        }
    }
    
}