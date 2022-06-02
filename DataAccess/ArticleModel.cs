using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.EntityFramework;

namespace DataAccess
{
    public class ArticleModel
    {
        private WebsiteDbContext context = null;
        public ArticleModel()
        {
            context = new WebsiteDbContext();
        }
        public List<article> listAllArticles()
        {
            var list = context.Database.SqlQuery<article>("GetALL_Articles").ToList();
            list.Reverse();
            return list;
        }
        public List<article> listFoundArticles(string titl)
        {
            object[] parameter = {
                new SqlParameter("@title", titl)
            };
            var list = context.Database.SqlQuery<article>("findArticles @title",parameter).ToList();
            list.Reverse();
            return list;
        }
        public int CreateArticle(string titlea, string textbodya, string imagea, int? user_id, int? cate_id)
        {
            int x = 0;
            object[] parameter = {
                new SqlParameter("@title", titlea),
                new SqlParameter("@textbody", textbodya),
                new SqlParameter("@image", imagea),
                new SqlParameter("@user_id", user_id),
                new SqlParameter("@cate_id", cate_id),
                new SqlParameter("@luot_xem", x)

            };
            int res = context.Database.ExecuteSqlCommand("insert_article @title,@textbody,@image,@user_id,@cate_id,@luot_xem", parameter);
            return res;
        }
        public int DeleteArticle(int article_id)
        {
            int res = context.Database.ExecuteSqlCommand("delete_article @art_id",
                new SqlParameter("@art_id", article_id)
            );
            return res;
        }

        public int UpdateArticle(int id,string titlea, string textbodya, string imagea, int? user_id, int? cate_id)
        {
            object[] parameter = {
                new SqlParameter("@id", id),
                new SqlParameter("@title", titlea),
                new SqlParameter("@textbody", textbodya),
                new SqlParameter("@image",imagea),
                new SqlParameter("@userid", user_id),
                new SqlParameter("@cateid",cate_id)
            };
            //var sql = @"update articles SET cate_name = @var_name	WHERE cate_id = @var_id;";
            int res = context.Database.ExecuteSqlCommand("update_article1 @id,@title,@textbody,@image,@userid,@cateid", parameter);
            return res;
        }
        public int UpdateArticle2(int id,int? LuotXem)
        {
            object[] parameter = {
                new SqlParameter("@id", id),
                new SqlParameter("@LuotXem",LuotXem)
            };
            int res = context.Database.ExecuteSqlCommand("update_article2 @id,@LuotXem", parameter);
            return res;
        }
        public article getByID(int id)
        {
            object[] parameter = {
                new SqlParameter("@id", id)
            };
            var arti = context.articles.SqlQuery("getArtById @id", parameter).FirstOrDefault();
            return arti;
        }


        public int getRowsCount()
        {
            var cntQuery = context.Database.SqlQuery<int>("countRowArticles");

            return cntQuery.First<int>();

        }
        public int getCountMax()
        {
            var cntQuery = context.Database.SqlQuery<int>("Count_ArticleMax");
            return cntQuery.First<int>();
        }
        public string getCommentMax()
        {
            var cntQuery = context.Database.SqlQuery<string>("Article_CommentMax");
            return cntQuery.First<string>();
        }
        public string getViewMax()
        {
            var cntQuery = context.Database.SqlQuery<string>("Article_LuotXemMax");
            return cntQuery.First<string>();
        }
    }
}
