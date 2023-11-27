using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using websitecoffeechoice.Models;

namespace websitecoffeechoice.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        private CafeDBEntities db = new CafeDBEntities();

        public ActionResult DangNhap()
        {
            return View();
        }

        //phương thức chỉ được gọi khi người dùng gửi dữ liệu đăng nhập thông qua phương thức POST.
        [HttpPost]//khong co http post se bi loi

        public ActionResult DangNhap(string tennguoidung, string matkhau)
        {
            //ModelState.IsValid kiểm tra xem dữ liệu truyền vào có hợp lệ hay không
            if (ModelState.IsValid)
            {


                //webcf.NguoiDung là một đối tượng DataContext (hoặc DbContext) để truy vấn cơ sở dữ liệu.
                //Dòng lệnh Where lấy ra từ bảng "NguoiDung" trong cơ sở dữ liệu kiểm tra tên người dùng và mật khẩu
                var data = db.NguoiDung.Where(s => s.TenNguoiDung.Equals(tennguoidung) && s.MatKhau.Equals(matkhau)).ToList();

                //data.Count() > 0 kiêm tra xem biến data chứa tên đăng nhập và mật khẩu có khớp với danh sách các bảng trong csdl không
                if (tennguoidung == "admin")
                {
                    //Nếu đăng nhập thành công, dòng Session["MaND"] = data.FirstOrDefault().MaND; lưu trữ mã người dùng vào biến Session .
                    //Mã người dùng được lấy từ trường "MaND" của bản ghi đầu tiên trong danh sách data.
                    Session["MaND"] = data.FirstOrDefault().MaND;

                    ViewBag.Message = "Sai tài khoản hoặc mật khẩu!";
                    //điều hướng đến trang Index của Home 
                    return RedirectToAction("Index");
                }


                else
                {
                    //nếu sai thì ở lại trang đăng nhập
                    return RedirectToAction("DangNhap");
                }

            }

            // được gọi, nó sẽ tìm một View tương ứng với tên của phương thức hiện tại 
            return View();
        }
        // GET: Admin/Home
        public ActionResult Index()
        {
            var sanPham = db.SanPham.Include(s => s.LoaiSP);
            return View(sanPham.ToList());
        }

        // GET: Admin/Home/Details/5
        public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPham.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // GET: Admin/Home/Create
        public ActionResult Create()
        {
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSP, "MaLoaiSP", "TenLoaiSP");
            return View();
        }

        // POST: Admin/Home/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSP,TenSP,MaLoaiSP,SoLuong,Gia,GhiChu,Anh")] SanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.SanPham.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaLoaiSP = new SelectList(db.LoaiSP, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // GET: Admin/Home/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPham.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSP, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // POST: Admin/Home/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSP,TenSP,MaLoaiSP,SoLuong,Gia,GhiChu,Anh")] SanPham sanPham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSP, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // GET: Admin/Home/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPham.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // POST: Admin/Home/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            SanPham sanPham = db.SanPham.Find(id);
            db.SanPham.Remove(sanPham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        public ActionResult Search(string searchString)
        {
            var sp = from sanpham in db.SanPham
                       select sanpham;

            if (!String.IsNullOrEmpty(searchString))
            {
                sp = sp.Where(sanpham => sanpham.TenSP.Contains(searchString));
            }

            return View("Index", sp);
        }
    }
}
