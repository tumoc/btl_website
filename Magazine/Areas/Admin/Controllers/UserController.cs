using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;
using DataAccess.EntityFramework;
namespace Magazine.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // GET: Admin/User
        public ActionResult Index()
        {
            if (TempData["result"]!=null)
            {
                ViewBag.msg = TempData["result"];
            }
                var iplUser = new UserModel();
            var user_login = iplUser.getUserByEmail((string)Session["email"]);
            if (user_login.group_id == 1)
            {
                ViewBag.group_id = "admin";
            }
                var model = iplUser.listAllUsers();
                return View(model);

        }
        // GET: Admin/User/Details/5
        public ActionResult Details(string email)
        {
            var user = new UserModel();
            email = (string)Session["email"];
            var model = user.getUserByEmail(email);
            return View(model);
        }
        public ActionResult Infor(int id)
        { 
            var user = new UserModel();
            var model = user.getUserById(id);
            return View(model);
        }
        // GET: Admin/User/Create
        public ActionResult Create()
        {             
                var group = new UserGroupModel();
                ViewBag.listUserGroup = group.listAllUserGroup();
                user u = new user();
                return View(u);
        }

        // POST: Admin/User/Create
        [HttpPost]
        public ActionResult Create(user collection)
        {
            try
            {
                // TODO: Add insert logic here
                if (ModelState.IsValid) {
                    var model = new UserModel();
                    int res = model.CreateUser(collection.usename,collection.email,collection.password,collection.full_name,collection.avatar,collection.sefl_des,collection.group_id);
                    if (res > 0)
                    {
                        TempData["result"] = "Tạo tành công";
                        return RedirectToAction("Index");
                    } 
                }
                return View(collection);
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/User/Edit/5
        public ActionResult Edit(string email)
        {
            var user = new UserModel();
            email = (string)Session["email"];
            var model = user.getUserByEmail(email);
            return View(model);
        }

        // POST: Admin/User/Edit/5
        [HttpPost]
        public ActionResult Edit(user temp)
        {
            if(ModelState.IsValid)
            {
                var model = new UserModel();
                int res = model.UpdateUser1(temp.user_id,temp.usename,temp.email,temp.password,temp.full_name,temp.avatar,temp.sefl_des); 
                if(res>0)
                    return RedirectToAction("Details");
            }
            return View(temp);
        }
        public ActionResult Edit1(int id)
        {
            var user = new UserModel();
            var model = user.getUserById(id);
            var group = new UserGroupModel();
            ViewBag.listUserGroup = group.listAllUserGroup();
            return View(model);
        }
        [HttpPost]
        public ActionResult Edit1(user temp)
        {
            if (ModelState.IsValid)
            {
                var model = new UserModel();
                int res = model.UpdateUser(temp.user_id, temp.usename, temp.email, temp.password, temp.full_name, temp.avatar, temp.sefl_des, temp.group_id);
                if (res > 0)
                    return RedirectToAction("Index","User");
            }
            return View(temp);
        }
        // GET: Admin/User/Delete/5
        public ActionResult Delete(int id)
        {

                UserModel catemd = new UserModel();
                catemd.DeleteUser(id);
                return RedirectToAction("Index");
        }

        // POST: Admin/User/Delete/5
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
