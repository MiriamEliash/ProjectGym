using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class OrderClassesLogic
    {
        DAL dal = new DAL();

         public void newUser(int chargeId, int CodeDayTime)
         {

             string sql1 = String.Format("INSERT INTO OrderClasses (chargeId,CodeDayTime) VALUES ('{0}', '{1}')", chargeId, CodeDayTime);
              dal.excuteQuery(sql1);
              sql1 = string.Format("SELECT MAX(Code) FROM OrderClasses WHERE chargeId={0}", chargeId);
              DataSet ds = dal.excuteQuery(sql1);
         }


            public bool isOk(int CodeDayTime, int num)
           {//השיטה תבדוק האם יש נגמר המקום בחוג- מקבלים מספר מקסימלי משאילתה קודמת ומשתמשים
               if (checkNum(CodeDayTime)+1> num)
               {
                   return true;
               }
               else
                   return false;
           }
          public int checkNum(int CodeDayTime)
          {//  מקבלת ומחזירה את מספר המשתתפים בחוג הקיים
               string sql = string.Format("SELECT COUNT(OrderClasses.Code) FROM OrderClasses WHERE OrderClasses.CodeDayTime={0}", CodeDayTime);
               DataSet ds = dal.excuteQuery(sql);
               int s =Int32.Parse( ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString());
               return s;
          }


        public DataSet show() //שאילתה מסובכת
        {

            string sql = "SELECT OrderClasses.Code,OrderClasses.chargeId ,OrderClasses.CodeDayTime, DayTime.day1, DayTime.hour1 ,Classes.name AS name, Instructors.ID AS ID, Instructors.[First name]+' '+Instructors.[Last name] as fullName FROM ((((DayTime INNER JOIN TeacherClass ON  DayTime.codeClassTeacher =TeacherClass.Code) INNER JOIN Classes ON Classes.CodeClass=TeacherClass.CodeClass)INNER JOIN Instructors ON Instructors.ID=TeacherClass.id) ORDER BY hour1,day1 ";
            //string sql = string.Format(("SELECT DayTime.code, (Classes.name AS nameClass FROM ((Classes INNER JOIN TeacherClass ON  Classes.CodeClass =TeacherClass.CodeClass) INNER JOIN DayTime ON DayTime.codeClassTeacher=TeacherClass.Code)),( Instructors.ID, Instructors.[First name]+' '+Instructors.[Last name] as fullName FROM ((Instructors INNER JOIN TeacherClass ON  Instructors.ID =TeacherClass.ID ) INNER JOIN DayTime ON DayTime.codeClassTeacher=TeacherClass.Code)), DayTime.day, DayTime.hour   WHERE DayTime.Code={0}"), code);

            return dal.excuteQuery(sql);
        }



        public DataSet showTo(string ID)      //שאילתה מסובכת 2- מציגה לכל משתמש את הפרטים של החוגים שהוא בחר
        {
             
            string sql = string.Format("SELECT OrderClasses.Code, OrderClasses.chargeId ,OrderClasses.CodeDayTime, DayTime.code, DayTime.day1 AS day, DayTime.codeClassTeacher, DayTime.hour1 AS hour, Charge.chargeId, Charge.UserId, TeacherClass.Code, TeacherClass.CodeClass, TeacherClass.id , Classes.CodeClass, Classes.name AS name, Instructors.ID, Instructors.[First name]+' '+Instructors.[Last name] AS fullName FROM (((((OrderClasses INNER JOIN Charge ON  OrderClasses.chargeId =Charge.chargeId) INNER JOIN DayTime ON OrderClasses.CodeDayTime=DayTime.code)INNER JOIN TeacherClass ON DayTime.codeClassTeacher=TeacherClass.Code) INNER JOIN Classes ON TeacherClass.CodeClass=Classes.CodeClass)INNER JOIN  Instructors ON TeacherClass.id= Instructors.ID)  WHERE  Charge.UserId='{0}'", ID);
            //string sql = string.Format(("SELECT DayTime.code, (Classes.name AS nameClass FROM ((Classes INNER JOIN TeacherClass ON  Classes.CodeClass =TeacherClass.CodeClass) INNER JOIN DayTime ON DayTime.codeClassTeacher=TeacherClass.Code)),( Instructors.ID, Instructors.[First name]+' '+Instructors.[Last name] as fullName FROM ((Instructors INNER JOIN TeacherClass ON  Instructors.ID =TeacherClass.ID ) INNER JOIN DayTime ON DayTime.codeClassTeacher=TeacherClass.Code)), DayTime.day, DayTime.hour   WHERE DayTime.Code={0}"), code);

            return dal.excuteQuery(sql);
        }

        public DataSet showNames(int codeDayTime) //מקבלת קוד חוג (מתוך שאילתה מסובכת)ומציגה את האנשים שנמצאים באותו החוג- למנהל ולמדריך
        {
               string sql = string.Format("SELECT OrderClasses.CodeDayTime, OrderClasses.chargeId, DayTime.code, Charge.chargeId , Charge.UserId , Subscribers.ID AS ID, Subscribers.[First name],Subscribers.[Last name] FROM ((((OrderClasses INNER JOIN Charge ON  OrderClasses.chargeId =Charge.chargeId) INNER JOIN Subscribers ON Subscribers.ID=Charge.UserId)INNER JOIN DayTime ON DayTime.code=OrderClasses.CodeDayTime) WHERE OrderClasses.CodeDayTime={0} ", codeDayTime);
               return dal.excuteQuery(sql);
        }
        /*
          public int codeDayTime(int day, DateTime hour, int codeClass, string InstructorId)//שאילתה שמוצאת למנהל את הקוד של אותו חוג עם המדריך, היום והשעה
          {
              string sql = string.Format("SELECT COUNT(OrderClasses.Code) FROM OrderClasses WHERE OrderClasses.CodeDayTime={0}", CodeDayTime);
              DataSet ds = dal.excuteQuery(sql);
              int s = Int32.Parse(ds.Tables[0].Rows[0].ItemArray.GetValue(0).ToString());
              return s;
          }*/

    }
}