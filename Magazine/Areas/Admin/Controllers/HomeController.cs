using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess.EntityFramework;
using DataAccess;
namespace Magazine.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            int cateRows = new CategoryModel().getRowsCount();

            int cateCMTs = new CommentModel().getRowsCount();

            int cateArts = new ArticleModel().getRowsCount();

            int cateUsers = new UserModel().getRowsCount();
            int count_articleMax = new ArticleModel().getCountMax();
            string user_articleMax = new UserModel().getUser_ArticleMax();
            string article_CommentMax = new ArticleModel().getCommentMax();
            string article_ViewMax = new ArticleModel().getViewMax();

            ViewBag.rCate = cateRows;
            ViewBag.rCMT = cateCMTs;
            ViewBag.rArt = cateArts;
            ViewBag.rUser = cateUsers;
            ViewBag.rCountMax = count_articleMax;
            ViewBag.rUser_articleMax = user_articleMax;
            ViewBag.rArticle_CommentMax = article_CommentMax;
            ViewBag.rArticle_ViewMax = article_ViewMax;

            return View();
        }
    }
}