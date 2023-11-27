using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

using websitecoffeechoice.Models;

namespace websitecoffeechoice.Controllers
{
    public class HomeController : Controller
    {
        CafeDBEntities webcf = new CafeDBEntities();//tao doi tuong kieu du lieu cua database
        public ActionResult Index()
        {
            HomeModel model = new HomeModel();
            model.ListLoaiSP = webcf.LoaiSP.ToList(); //tao doi tuong kieu du lieu loai san pham trong database
            model.ListSanPham = webcf.SanPham.ToList(); //tao doi tuong kieu du lieu  san pham trong database
            return View(model);
            
        }
        [HttpGet]// Phương thức này trả về một đối tượng ActionResult, trong trường hợp này là một View.
        public ActionResult DangKy()
        {
             return View();
        }
        [HttpPost]
        public ActionResult DangKy(NguoiDung ngDung)
        {
            //kiem tra va luu vao database
            if (ModelState.IsValid)
            {
                var check = webcf.NguoiDung.FirstOrDefault(s => s.TenNguoiDung == ngDung.TenNguoiDung);
                if (check == null)
                {
                    
                    webcf.NguoiDung.Add(ngDung);//thêm thông tin người dùng vào DbSet "NguoiDung".
                   webcf.SaveChanges();//lưu vào csdl 
                    return RedirectToAction("DangNhap");
                }
                else
                {
                    ViewBag.Message = "Tên đăng nhập đã tồn tại!";
                    

                }
            }
            return View();
        }

       
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
                var data = webcf.NguoiDung.Where(s => s.TenNguoiDung.Equals(tennguoidung) && s.MatKhau.Equals(matkhau)).ToList();

                //data.Count() > 0 kiêm tra xem biến data chứa tên đăng nhập và mật khẩu có khớp với danh sách các bảng trong csdl không
                if (data.Count() > 0)
                {
                    //Nếu đăng nhập thành công, dòng Session["MaND"] = data.FirstOrDefault().MaND; lưu trữ mã người dùng vào biến Session .
                    //Mã người dùng được lấy từ trường "MaND" của bản ghi đầu tiên trong danh sách data.
                    Session["MaND"] = data.FirstOrDefault().MaND;

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
        //Logout
        public ActionResult Logout()
        {
            Session.Clear();//remove session
            return RedirectToAction("DangNhap"); //chuyển đến trang đăng nhập 
        }


    }
}