using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class ChargeLogic
    {
        DAL dal = new DAL();

        public bool check(string id)

        {//בודקת אם נשאר למנוי חוגים
            string sql = String.Format("SELECT Charge.chargeId , Charge.numUsedClasses, Charge.numTotalClasses FROM Charge WHERE Charge.numUsedClasses = Charge.numTotalClasses AND Charge.UserId='{0}'", id);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }

        public bool checkUser(string id)

        {//בודקת אם יש מנוי 
            string sql = String.Format("SELECT * FROM Charge WHERE Charge.ID='{0}'", id);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }


        public bool newCharge(string UserId, int numTotalClasses, string Card, DateTime ChargeDate)
        {

                string sql1 = String.Format("INSERT INTO Charge (UserId,numUsedClasses,numTotalClasses,Card,ChargeDate) VALUES ('{0}',{1},{2},'{3}',#{4}#)", UserId, 0, numTotalClasses, Card, ChargeDate);
                dal.excuteQuery(sql1);
                sql1 = string.Format("SELECT MAX(chargeId) FROM Charge WHERE UserId='{0}'", UserId);
                DataSet ds = dal.excuteQuery(sql1);
                return true;


        }


        public void updateCharge( string ID, int numTotalClasses)
        {
            string sql = string.Format(("UPDATE Charge SET [numTotalClasses]={0},[numUsedClasses]={1},[numUsedClasses]={1} WHERE ID='{2}'"), numTotalClasses, 0, ID);
            dal.excuteQuery(sql);
        }
        
        public int whatIdCharge(string id)
        {
            string sql = string.Format("SELECT Charge.chargeId FROM Charge WHERE Charge.UserId='{0}'", id);
            DataSet ds = dal.excuteQuery(sql);
            int s = Int32.Parse(ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString());
            return s;
        }

    }
}