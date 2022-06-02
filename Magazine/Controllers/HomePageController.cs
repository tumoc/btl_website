using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess.EntityFramework;
using DataAccess;
namespace Magazine.Controllers
{
    public class HomePageController : Controller
    {
        // GET: HomePage
        public ActionResult Index(string searchst)
        {
            var iplArticles = new ArticleModel();
            var model = iplArticles.listAllArticles();
            if (searchst == null) { return View(model); } else
            {
                List<article> model1 = model.Where(s => s.title.Contains(searchst)).ToList(); //lọc theo chuỗi tìm kiếm                     
                return View(model1);
            }
            
        }
        public ActionResult Search(string searchst)
        {
            var iplArticles = new ArticleModel();
            var model = iplArticles.listAllArticles();
            if (searchst == null) { return View(model); }
            else
            {
                List<article> model1 = model.Where(s => s.title.Contains(searchst)).ToList(); //lọc theo chuỗi tìm kiếm                     
                return View(model1);
            }
        }
        public ActionResult Detail(int id)
        {

            var impArticle = new ArticleModel();
            var modell = impArticle.getByID(id);
            TempData["article_id"] = modell.article_id;
            int c = (int)modell.LuotXem;            
            c++;
            impArticle.UpdateArticle2(modell.article_id,c);
            return View(modell);
        }
    }
}
