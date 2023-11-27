using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using websitecoffeechoice.Models;

namespace websitecoffeechoice.Models
{
    public class HomeModel
    {
        public List<SanPham> ListSanPham { get; set; }
        public List<LoaiSP> ListLoaiSP { get; set; }
       
    }
}