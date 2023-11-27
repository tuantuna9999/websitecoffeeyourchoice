using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using websitecoffeechoice.Models;

namespace websitecoffeechoice.Models
{
    public class CartModel
    {
        public SanPham Product { get; set; }// tạo đối tượng kiểu sanpham 
        public int Quantity { get; set; }
    }
}