using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class DeviceLogic
    {
        DAL dal = new DAL();
        public DataSet getAllDevice()
        {
            string sql = "SELECT * FROM Devices";
            return dal.excuteQuery(sql);
        }
        public DataSet getDetails()
        {
            string sql = "SELECT [Device name] AS name, Details AS Details FROM Devices";
            return dal.excuteQuery(sql);
        }


        public void updateDevice(double price, string nameCompany, int code, string Details)
        {
            string sql = string.Format(("UPDATE Devices SET [Facility cost]={0}, [Freight company]='{1}',Details='{2}' WHERE [Code device]={3}"), price, nameCompany, Details, code);
            dal.excuteQuery(sql);
        }
        public void deleteDevices(int Code)
        {//delete Devices
            string sql = string.Format(("DELETE * FROM Devices WHERE [Code device]={0}"), Code);
            dal.excuteQuery(sql);
        }

        public bool newDevice(int CodeDevice, string DeviceName, double FacilityCost, string FreightCompany, int BranchCode, string Details)
        {
            if (!checkCodeDevice(CodeDevice))
            {
                string sql1 = String.Format("INSERT INTO Devices ([Code device],[Device name],[Facility cost],[Freight company],[Branch Code], Details) VALUES ('{0}', '{1}','{2}','{3}','{4}','{5}')", CodeDevice, DeviceName, FacilityCost, FreightCompany, BranchCode, Details);
                DataSet ds = dal.excuteQuery(sql1);
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool checkCodeDevice(int CodeDevice)
        {//מקבלת סיסמא מחזירה אמת אם קיימת במערכת ושקר אחרת
            string sql = String.Format("SELECT [Code device] FROM Devices WHERE Devices.[Code device] ={0}", CodeDevice);
            return dal.excuteQuery(sql).Tables[0].Rows.Count != 0;
        }

    }
}