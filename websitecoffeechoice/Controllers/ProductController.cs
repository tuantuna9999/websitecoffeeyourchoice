using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecoffeechoice.Models;

namespace websitecoffeechoice.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        CafeDBEntities cf = new CafeDBEntities();
        public ActionResult Detail(int Id)
        {
            var sanPham = cf.SanPham.Where(n => n.MaSP == Id).FirstOrDefault();
            return View(sanPham);
        }
    }
}