using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Register : System.Web.UI.Page
    {
        internal static string aspx;
        Insurance esI = new Insurance();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SubscribersLogic ul = new SubscribersLogic();

            if (!ul.newUser(First_name.Text, Last_name.Text, input_id.Text, Phone_number.Text, Password1.Text, 1111))
                Label2.Text = "use already exist";
            else
            {
                // public bool newUser(string Id, string FirstName, string LastName, string PhoneNumber, string OrganizationId)
               // if (!esI.newUser(input_id.Text, First_name.Text, Last_name.Text,  Phone_number.Text, "6044"))
                //{
                //    Label2.Text = "Insuranse already exists";
                //}
                Label2.Text = "you have successfuly registered and create new insuranse!";
                Session["Id"] = input_id.Text;
                Session["nameUser"] = First_name.Text;
                Session["Type"] = "Subscriber";
                Response.Redirect("HomeSubscribers.aspx");
            }
               
        }
    }
}