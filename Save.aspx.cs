using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Save : System.Web.UI.Page
    {
        OrderClassesLogic ul = new OrderClassesLogic();
        
        DayTimeLogic dtl = new DayTimeLogic();
        ChargeLogic cl = new ChargeLogic();
        int ChargeId;
        int CodeDayTime;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) //להציג- האם אתה מאשר את החוג שבחרת.
            {
                string s = Request.QueryString["data"];
                if (!string.IsNullOrEmpty(s))
                {
                    
                    string[] arr = s.Split('*'); //כל פעם שיש כוכבית- לשים את מה שהיה לפני בתוך תא
                    string all = "Do you want to sign up to  " + arr[0] + "  with  " + arr[1] + " at:" + arr[2] + ", " + arr[3] +":00  ?";
                    Label1.Text = all;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)  //אם מאשר- להכניס לטבלה של הזמנת חוגים ולעדכן את מספר החוגים המשומשים
        {
            string m = Request.QueryString["data"];
            if (!string.IsNullOrEmpty(m))
            {

               
                string[] arr = m.Split('*'); //כל פעם שיש כוכבית- לשים את מה שהיה לפני בתוך תא  

                 ChargeId = cl.whatIdCharge(Session["Id"].ToString());
                 CodeDayTime = Int32.Parse(arr[4]); //מתוך הקישור שהמשתמש בחר- לוקחים את הקוד
                 int num = Int32.Parse(arr[5]); // מתוך החוג שהמשתמש בחר- לוקחים את מספר המשתמשים
                //if יש מקום
                 if (ul.isOk(CodeDayTime, num)) //השיטה תבדוק האם יש נגמר המקום בחוג- מקבלים מספר מקסימלי משאילתה קודמת ומשתמשים
                 {
                    Label2.Text = "dont have space in this class";
                 }
                  else
                  {
                    ul.newUser( ChargeId ,CodeDayTime); // מכניסים לטבלה של החוגים
                    Label2.Text = "you have successfuly registered!";
                    Response.Redirect("CalanderOfClasses.aspx");
                }
                



            }
           
             

        }
    }
}