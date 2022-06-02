using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.EntityFramework;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace DataAccess
{
    public class UserModel
    {
        private WebsiteDbContext context = null;
        public UserModel()
        {
            context = new WebsiteDbContext();
        }
        public bool login(string email, string password)
        {
            object[] sqlParams =
            {
                new SqlParameter("@email", email),
                new SqlParameter("@password", password),
            };
            var res = context.Database.SqlQuery<bool>("accountlogin @email, @password", sqlParams).SingleOrDefault();
            return res;
        }
        public List<user> listAllUsers()
        {
            var list = context.Database.SqlQuery<user>("GetALL_Users").ToList();
            list.Reverse();
            foreach(var item in list)
            {
                
                int l = item.password.Length;
                item.password = "";
                while (l>0)
                {
                    item.password += "*";
                    l--;
                }

            }
            return list;
        }
        public int UpdateUser(int? user_id,string user_name, string email, string password, string full_name,string avatar, string sefl_des, int? group_id)
        {
            object[] parameter = {
                new SqlParameter("@user_id", user_id),
                new SqlParameter("@username", user_name),
                new SqlParameter("@email", email),
                new SqlParameter("@password",password),
                new SqlParameter("@full_name", full_name),
                new SqlParameter("@avatar",avatar),
                new SqlParameter("@sefl_des",sefl_des),
                new SqlParameter("@group_id",group_id)


            };
            //var sql = @"update articles SET cate_name = @var_name	WHERE cate_id = @var_id;";
            int res = context.Database.ExecuteSqlCommand("update_user @user_id,@username,@email,@password,@full_name,@avatar,@sefl_des,@group_id", parameter);
            return res;
        }
        public int UpdateUser1(int? user_id, string user_name, string email, string password, string full_name, string avatar, string sefl_des)
        {
            object[] parameter = {
                new SqlParameter("@user_id", user_id),
                new SqlParameter("@username", user_name),
                new SqlParameter("@email", email),
                new SqlParameter("@password",password),
                new SqlParameter("@full_name", full_name),
                new SqlParameter("@avatar",avatar),
                new SqlParameter("@sefl_des",sefl_des)


            };
            //var sql = @"update articles SET cate_name = @var_name	WHERE cate_id = @var_id;";
            int res = context.Database.ExecuteSqlCommand("update_user1 @user_id,@username,@email,@password,@full_name,@avatar,@sefl_des", parameter);
            return res;
        }
        public int CreateUser(string user_name, string email, string password, string full_name, string avatar, string sefl_des, int? group_id)
        {
            object[] parameter = {
                new SqlParameter("@username", user_name),
                new SqlParameter("@email", email),
                new SqlParameter("@password",password),
                new SqlParameter("@full_name", full_name),
                new SqlParameter("@avatar",avatar),
                new SqlParameter("@sefl_des",sefl_des),
                new SqlParameter("@group_id",group_id)


            };
            int res = context.Database.ExecuteSqlCommand("insert_user @username,@email,@password,@full_name,@avatar,@sefl_des,@group_id", parameter);
            return res;
        }
        public int DeleteUser(int user_id)
        {
                int res = context.Database.ExecuteSqlCommand("delete_user @userid",
                new SqlParameter("@userid", user_id)
            );
                return res;
        }

        public int getRowsCount()
        {
            var cntQuery = context.Database.SqlQuery<int>("countRowUsers");
            return cntQuery.First<int>();

        }
        public user getUserByEmail(string email)
        {
            object[] parameter = {
                new SqlParameter("@email", email)
            };
            var user = context.users.SqlQuery("getUserByEmail @email", parameter).FirstOrDefault();
            return user;
        }
        public user getUserById(int userId)
        {
            object[] parameter = {
                new SqlParameter("@userId", userId)
            };
            var user = context.users.SqlQuery("getUserById @userId", parameter).FirstOrDefault();
            return user;
        }
        public string getUser_ArticleMax()
        {
            var name = context.Database.SqlQuery<string>("User_ArticleMax");
            return name.First<string>();
        }
    }
}
