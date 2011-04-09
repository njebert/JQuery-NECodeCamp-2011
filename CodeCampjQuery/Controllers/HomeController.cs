using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text;

namespace CodeCampjQuery.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult BasicAjax()
        {
            return View();
        }

        public string GetMoreUpdates(int updateNumber = 0)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("<div class=\"popBox\">");
            updateNumber = updateNumber + 1;
            sb.Append(updateNumber);
            sb.Append("</div>");
            sb.Append("<div class=\"popBox\">");
            updateNumber = updateNumber + 1;
            sb.Append(updateNumber);
            sb.Append("</div>");
            sb.Append("<div class=\"popBox\">");
            updateNumber = updateNumber + 1;
            sb.Append(updateNumber);
            sb.Append("</div>");
            return sb.ToString();

        }


        //public JsonResult GetMoreUpdates(int updateNumber = 0)
        //{
        //    return Json(new { Content = updateNumber}, JsonRequestBehavior.AllowGet);
        //}

        public string GetNewContent(int contentNumber)
        {
            StringBuilder sb = new StringBuilder();
            if (contentNumber % 12 == 0)
            {
                sb.Append("<div class=\"popBox\">");
                sb.Append(contentNumber);
                sb.Append("</div>");
            }
            return sb.ToString();
        }

        public ActionResult BasicJSONP()
        {
            return View();
        }

        public ActionResult IntermediateAjax()
        {
            return View();
        }

        public ActionResult BasicSelect()
        {
            return View();
        }

        public ActionResult BasicAnimate()
        {
            return View();
        }

        public ActionResult IntermediateAnimate()
        {
            return View();
        }

        public ActionResult AdvancedAnimate()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
