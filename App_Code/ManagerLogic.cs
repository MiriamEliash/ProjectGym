using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class ManagerLogic
    {
        DAL dal = new DAL();


        public bool isManager(string pass, string ID)
        {//מקבלת סיסמא מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT Manager.Pass FROM Manager WHERE Manager.Pass ='{0}' and Manager.ID ='{1}'", pass, ID);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }

        public string getManagerName(string ID)
        {//מחזירה את השם לפי ת"ז
            string sql = string.Format("SELECT [First name] FROM Manager WHERE Manager.ID ='{0}'", ID);
            DataSet ds = dal.excuteQuery(sql);
            string s = ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString();
            return s;
        }
    }
}