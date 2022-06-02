using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;
using DataAccess.EntityFramework;
namespace Magazine.Areas.Admin.Controllers
{
    public class ArticleController : Controller
    {
        // GET: Admin/Article
        public ActionResult Index()
        {
            var iplArticles = new ArticleModel();
            var model = iplArticles.listAllArticles();
            return View(model);
        }

        // GET: Admin/Article/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }
        // GET: Admin/Article/Create
        public ActionResult Create()
        {
            var artmodel = new CategoryModel();
            ViewBag.listCategories = artmodel.listAllCate();
            var user = new UserModel();
            ViewBag.listUser = user.listAllUsers();
            return View(new article());
        }

        // POST: Admin/Article/Create
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(article mdarti)
        {
                // TODO: Add insert logic here
                if (ModelState.IsValid)
                {
                    var artmodel = new ArticleModel();
                    int ress = artmodel.CreateArticle(mdarti.title, mdarti.textbody, mdarti.image, mdarti.user_id, mdarti.cate_id);
                    if (ress > 0)
                        return RedirectToAction("Index");
                }
                return View(mdarti);

        }

        // GET: Admin/Article/Edit/5
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var impArticle = new ArticleModel();
            var modell = impArticle.getByID(id);
            var artmodel = new CategoryModel();
            var user = new UserModel();
            ViewBag.listUser = user.listAllUsers();
            ViewBag.listCategories = artmodel.listAllCate();
            return View(modell);
        }
        // POST: Admin/Article/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit( article kart)
        {
                // TODO: Add insert logic here
                if (ModelState.IsValid)
                {
                    var model = new ArticleModel();
                    int res = model.UpdateArticle(kart.article_id,kart.title, kart.textbody, kart.image, kart.user_id, kart.cate_id);
                    if (res > 0)
                    {
                        return RedirectToAction("Index");
                    }
                }
                return View(kart);
        }

        // GET: Admin/Article/Delete/5
        public ActionResult Delete(int id)
        {
            ArticleModel catemd = new ArticleModel();
            catemd.DeleteArticle(id);
            return RedirectToAction("Index");
        }

        // POST: Admin/Article/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
