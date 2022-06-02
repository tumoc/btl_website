using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DataAccess.EntityFramework;

namespace DataAccess
{
    public class UserGroupModel
    {
        private WebsiteDbContext context = null;
        public UserGroupModel() 
        {
            context = new WebsiteDbContext();
        }
        public List<UserGroup> listAllUserGroup()
        {
            var list = context.Database.SqlQuery<UserGroup>("GetAll_UserGroup").ToList();
            list.Reverse();
            return list;
        }
    }
}
