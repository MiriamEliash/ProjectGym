using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class AddInstructor : System.Web.UI.Page
    {
        Insurance esI = new Insurance();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            InstructorsLogic dl = new InstructorsLogic();
            if (!dl.newInstructor(inputId.Text, inputFirstName.Text, inputLastName.Text, int.Parse(inputPhoneNum.Text), double.Parse(inputSalary.Text), int.Parse(pass.Text), 1111))
                Label2.Text = "Instructor is already exist";
            else
            {

                // if (!esI.newUser(input_id.Text, inputFirstName.Text,inputLastName.Text,  int.Parse(inputPhoneNum.Text), "6044"))
                //{
                //    Label2.Text = "Insuranse already exists";
                //}
                Label2.Text = "you have successfuly add new instructor and create new insuranse!";
            }
        }
    }
}