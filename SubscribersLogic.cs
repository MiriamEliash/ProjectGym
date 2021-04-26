using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class SubscribersLogic
    {
        DAL dal = new DAL();
        public bool newUser(string FirstName, string LastName, string ID, string PhoneNumber, string Pass, int BranchCode)
        {
            if (!checkUser(Pass,ID))//במידה ושם המשתמש ותעודת הזהות לא תפוסים
            {
                string sql1 = String.Format("INSERT INTO Subscribers ([First name],[Last name],[ID],[Phone number],Pass,[Branch Code]  ) VALUES ('{0}', '{1}','{2}','{3}','{4}','{5}')", FirstName, LastName, ID, PhoneNumber, Pass, BranchCode);
                DataSet ds = dal.excuteQuery(sql1);
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool isUser(string pass, string ID)
        {//השיטה תבדוק האם המשתמש שמור במערכת
            if (checkUser(pass,ID))//אם תעודת הזהות קיימת
            {
                return true;
            }
            else
                return false;
        }

        public bool checkUser(string pass, string ID)
        {//מקבלת סיסמא מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT Subscribers.Pass FROM Subscribers WHERE Subscribers.Pass ='{0}' and Subscribers.ID ='{1}'", pass, ID);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }

        public bool IdMatchPass(string ID, string pass)
        {
            string sql = String.Format("SELECT ID FROM Subscribers WHERE Subscribers.ID ='{0}' AND Subscribers.Pass='{1}' ", ID, pass);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }


        public DataSet getAllSubscribers()
        {
            string sql = "SELECT * FROM Subscribers";
            return dal.excuteQuery(sql);
        }
        public void deleteUser(string ID)
        {//delete User
            string sql = string.Format(("DELETE * FROM Subscribers WHERE ID='{0}'"), ID);
            dal.excuteQuery(sql);
        }

        public string getUserName(string ID)
        {//מחזירה את השם לפי ת"ז
            string sql = string.Format("SELECT [First name] FROM Subscribers WHERE Subscribers.ID ='{0}'", ID);
            DataSet ds = dal.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }
    }
}