using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using websitecoffeechoice.Models;


namespace websitecoffeechoice.Controllers
{
    public class ThanhToanController : Controller
    {
        // GET: ThanhToan
        CafeDBEntities webcf = new CafeDBEntities();//tao doi tuong kieu du lieu cua database
        public ActionResult Index()
        {
            if (Session["MaND"] == null)
            {
                return RedirectToAction("DangNhap","Home");
            }
            else
            {

                //Lay thong tin tu gio hang tu bien session
                var lstGioHang = (List<CartModel>)Session["cart"];
                //gan du lieu cho hoa don
                HoaDon hd = new HoaDon();
                hd.Ten = "DonHang-" + DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss");
                hd.MaND = int.Parse(Session["MaND"].ToString());
                hd.NgayBan = DateTime.Now;

               
                //lay ID vua tao de luu vao bang GioHang
                int GioHangid = hd.MaHD;
              
                List<GioHang> ListGioHang = new List<GioHang>();

               
                      HoaDon hoadon = new HoaDon();
                foreach (var item in lstGioHang)
                {
                    GioHang gh = new GioHang();
                    

                    gh.soLuong = item.Quantity;
                    gh.maGioHang = GioHangid;
                    gh.maSanPham = item.Product.MaSP;
                     gh.maNguoiDung = hd.MaND;
                    gh.TongTien = item.Quantity * item.Product.Gia;
                    hoadon.TongTien = gh.TongTien; 
                    ListGioHang.Add(gh);
                }
                hd.TongTien = hoadon.TongTien;

                 webcf.HoaDon.Add(hd);

                //luu thong tin vao bang hoa don
                webcf.SaveChanges();

                webcf.GioHang.AddRange(ListGioHang);
                webcf.SaveChanges();
            }

            return View();
        }
    }
}