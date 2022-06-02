using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.EntityFramework;
using System.Data.Sql;
using System.Data.SqlClient;
namespace DataAccess
{
    public class CommentModel
    {
        private WebsiteDbContext context = null;
        public CommentModel()
        {
            context = new WebsiteDbContext();
        }
        public List<comment> listAllComments()
        {
            var list = context.Database.SqlQuery<comment>("GetALL_Comments").ToList();
            list.Reverse();
            return list;
        }
        public int DeleteCmt(int cmt_id)
        {
            int res = context.Database.ExecuteSqlCommand("delete_cmt @cmt_id",
                new SqlParameter("@cmt_id", cmt_id)
            );
            return res;
        }
        public int getRowsCount()
        {
            var cntQuery = context.Database.SqlQuery<int>("countRowCmt");

            return cntQuery.First<int>();

        }
        public int CreateComment(string email,int? article_id, string cmt_cotntent)
        {
            object[] parameter = {
                new SqlParameter("@email", email),
                new SqlParameter("@article_id", article_id),
                new SqlParameter("@cmt_cotntent", cmt_cotntent),
            };
            int res = context.Database.ExecuteSqlCommand("insert_comment @email,@article_id,@cmt_cotntent", parameter);
            return res;
        }
        public List<comment> listCommentByArticleId(int article_id)
        {
            var list = (from comment in context.comments where comment.article_id == article_id select comment).ToList();
            return list;
        }
    }
}
