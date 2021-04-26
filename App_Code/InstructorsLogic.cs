using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class InstructorsLogic
    {
        DAL dal = new DAL();

        public DataSet getAllInstructors()
        {
            string sql = "SELECT * FROM Instructors";
            return dal.excuteQuery(sql);
        }

        public void updateInstructor(double Salary, string ID)
        {
            string sql = string.Format(("UPDATE Instructors SET [Salary]={0} WHERE ID='{1}'"), Salary,  ID);
            dal.excuteQuery(sql);
        }

        public void deleteInstructor(string ID)
        {//delete Instructors
            string sql = string.Format(("DELETE * FROM Instructors WHERE ID='{0}'"), ID);
            dal.excuteQuery(sql);
        }

        public bool newInstructor( string ID, string FirstName, string LastName,  int PhoneNumber,double Salary, int pass, int BranchCode)
        {
            if (!checkIdInstructor(ID))
            {
                string sql1 = String.Format("INSERT INTO Instructors ([ID],[First name],[Last name],[Phone number],[Salary],[Pass],[Branch Code]) VALUES ('{0}', '{1}','{2}','{3}','{4}','{5}','{6}')", ID, FirstName, LastName, PhoneNumber, Salary, pass, BranchCode);
                DataSet ds = dal.excuteQuery(sql1);
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool checkIdInstructor(string ID)
        {//מקבלת תעודת זהות מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT ID FROM Instructors WHERE (Instructors.ID) ='{0}'", ID);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }


        public bool isInstructors(string pass, string ID)
        {//מקבלת סיסמא מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT Instructors.Pass FROM Instructors WHERE Instructors.Pass ='{0}' and Instructors.ID ='{1}'", pass, ID);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }

        public DataSet getInstructorsByClass(int code)
        {
            string sql = string.Format(("SELECT Instructors.ID, Instructors.[First name]+' '+Instructors.[Last name] as fullName FROM Instructors INNER JOIN TeacherClass ON  Instructors.ID =TeacherClass.ID WHERE CodeClass={0}"),code);
             return dal.excuteQuery(sql);
        }

        public string getInstructorName(string ID)
        {//מחזירה את השם לפי ת"ז
            string sql = string.Format("SELECT [First name] FROM Instructors WHERE Instructors.ID ='{0}'", ID);
            DataSet ds = dal.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }

    }
}