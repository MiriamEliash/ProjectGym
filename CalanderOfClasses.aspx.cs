using GymProject.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GymProject
{
    public partial class Calanser : System.Web.UI.Page
    {
        DayTimeLogic dtl = new DayTimeLogic();
        ChargeLogic cl = new ChargeLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Repeater1.DataSource = CreateDataSource();
                Repeater1.DataBind();
            }
        }
        public DataView CreateDataSource()
        {
            DataSet ds = null;
            if (Session["Type"].Equals("Subscriber") || Session["Type"].Equals("Manager"))// אם משתמש או מנהל
            {
                ds = dtl.show();
            }
            else
            {
                if (Session["Type"].Equals("Instructor"))// אם מדריך- שאילתה שמציגה את החוגים שלו
                {
                    ds = dtl.showToInstructor(Session["Id"].ToString());
                }
            }

            DataTable dt = ds.Tables[0]; //הטבלה שקיבלנו

            // Create sample data for the DataList control.
            DataTable ndt = new DataTable();
            DataRow dr = null; //טבלה חדשה שאנחנו בונים
            int hour = 0;
            ndt.Columns.Add(new DataColumn("SetHour", typeof(string)));
            ndt.Columns.Add(new DataColumn("Sunday", typeof(string)));
            ndt.Columns.Add(new DataColumn("Monday", typeof(string)));
            ndt.Columns.Add(new DataColumn("Tuesday", typeof(string)));
            ndt.Columns.Add(new DataColumn("Wednesday", typeof(string)));
            ndt.Columns.Add(new DataColumn("Thursday", typeof(string)));
            ndt.Columns.Add(new DataColumn("Friday", typeof(string)));
            ndt.Columns.Add(new DataColumn("Saturday", typeof(string)));

            int day = 0;

            foreach (DataRow row in dt.Rows)
            {
                string value = row["hour1"].ToString();
                DateTime timeConvert;
                DateTime.TryParse(value, out timeConvert);
                int time;
                time = (int)timeConvert.TimeOfDay.TotalMilliseconds / 3600000;
                if (hour != time)
                {
                    dr = ndt.NewRow();
                    dr[0] = time + ":00";
                    hour = time;
                    ndt.Rows.Add(dr);
                }

                string dayValue = row["day1"].ToString();
                day = Int32.Parse(dayValue);
                // string s = s + "what i get from query";

                if (Session["Type"].Equals("Subscriber"))//אם משתמש
                {
                    if (cl.check(Session["Id"].ToString())) //אם אין מספיק חוגים במנוי
                        dr[day] = dr[day].ToString() + "</br> <a href='Charge.aspx'>" + row["name"] + ' ' + row["fullName"] + "</a>";
                    else                 // אם יש מקום בכרטיס המנוי ,אם מאשר- להכניס לטבלה של הזמנת חוגים ולעדכן את מספר החוגים המשומשים
                    {
                        // צריך להוסיף- אם אין מקום- להקפיץ הודעה - בעמ הבא 
                        //אם יש מקום- מובילים לעמ אחר עם אישור או ביטול
                        string s = row["name"] + "*" + row["fullName"] + "*" + day + "*" + hour + "*" + row["code"] + "*" + row["num"];
                        //< iframe src = "some web page.html" width = "200" height = "200" ></ iframe >

                             dr[day] = dr[day].ToString() + "</br> <a href='Save.aspx?data=" + s + "'>" + row["name"] + ' ' + row["fullName"] + "</a>";
                    }
                }
                else
                {
                    string s = row["name"] + "*" + row["fullName"] + "*" + day + "*" + hour + "*" + row["code"] + "*" + row["num"];
                    if (Session["Type"].Equals("Manager")) //אם מהל- רשימת משתמשים באותו החוג וגם אפשרות למחיקת החוג
                    {
                        dr[day] = dr[day].ToString() + "</br> <a href='ManagerList.aspx?data=" + s + "'>" + row["name"] + ' ' + row["fullName"] + "</a>";
                    }

                    else
                    {
                        if (Session["Type"].Equals("Instructor"))//אם מדריך- רשימה של החוגים שלו עם אפשרות לראות את האנשים אצלו בחוג                              
                        {
                            dr[day] = dr[day].ToString() + "</br> <a href='InstructorList.aspx?data=" + s + "'>" + row["name"] + "</a>";
                        }
                    }
                }



            }
            DataView dv = new DataView(ndt);
            return dv;
        }



        // protected void Button1_Click(object sender, EventArgs e)
        // {
        //     string code = (string)(sender as Button).CommandName;
        //     Response.Redirect("Charge.aspx?code=" + code);
        // }
    }
}