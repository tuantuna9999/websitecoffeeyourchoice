using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecoffeechoice.Models;
namespace websitecoffeechoice.Controllers
{
    public class LoaiSPController : Controller
    {
        CafeDBEntities cf = new CafeDBEntities();
        // GET: LoaiSP
     
        public ActionResult LoaiSP(int Id)
        {
            var listSanPham = cf.SanPham.Where(n => n.MaLoaiSP == Id).ToList();
            return View(listSanPham);
            //return View();
        }
    }
}