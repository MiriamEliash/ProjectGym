using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class AddClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClassesLogic dl = new ClassesLogic();
            if (!dl.newClasses(int.Parse(inputCodeClass.Text), inputName.Text, int.Parse(inputNumOfPeople.Text), inputDetails.Text))
                Label2.Text = "The code is already exist";
            else
                Label2.Text = "you have successfuly add a new class!";
        }
    }
}