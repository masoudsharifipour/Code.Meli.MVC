using Code.Meli.Api.WebSite.Models.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Code.Meli.Api.WebSite.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        private readonly IService _service;

        public HomeController(IService service)
        {
            this._service = service;
        }

        public HomeController()
        {
            this._service = new Service();
        }

        [ActionName("Index")]
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ActionName("GetValidation")]
        public ActionResult GetValidation(string value)
        {
            var result = this._service.IsValidIranianNationalCode(value);
            if (result == true)
            {
                TempData["Message"] = "کد ملی صحیح است!";
            }
            else
            {
                TempData["Message"] = "کد ملی صحیح نیست!";

            }
            return RedirectToAction("Index");
        }
    }
}