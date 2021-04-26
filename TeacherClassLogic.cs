using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace GymProject.App_Code
{
    public class TeacherClassLogic
    {
        DAL dal = new DAL();

        public DataSet getInstructorsByClass(int code)
        {
            string sql = string.Format(("SELECT TeacherClass.Code, Instructors.ID, Instructors.[First name]+' '+Instructors.[Last name] as fullName FROM Instructors INNER JOIN TeacherClass ON  Instructors.ID =TeacherClass.ID WHERE CodeClass={0}"), code);
            return dal.excuteQuery(sql);
        }
        public void deleteClass(int CodeClass)
        {//delete 
            string sql = string.Format(("DELETE * FROM TeacherClass WHERE CodeClass={0}"), CodeClass);
            dal.excuteQuery(sql);
        }

    }
}