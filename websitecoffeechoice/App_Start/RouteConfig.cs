using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace websitecoffeechoice
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "DangNhap", id = UrlParameter.Optional },
              namespaces: new string[] { "websitecoffeechoice.Controllers" }//đoạn code để điều hướng trang index người dùng chạy được không lỗi phân vùng
             

            );
        }
    }
}
