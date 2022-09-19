using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebLessons.Models;

namespace WebLessons.Controllers
{
    public class KullaniciController : Controller
    {
        // GET: Kullanici
        LessonEntities db = new LessonEntities();
      
        public ActionResult Index()
        {
            return View();
        }
        [AllowAnonymous]
        public ActionResult KullaniciGiris()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        public ActionResult KullaniciGiris(KULLANICILAR k)
        {
            //kullanici giriş kısmında ekranı çağırdıktan sonra veri tabanındaki veriyle kıyaslamam gerekiyordu bunun için check değişkeni atadım
            //girdiğim veriye göre veri tabanında var ise giriş yapabilecekti 
            //eğer yanlış girersede hatalı giriş bilgisi verip Giriş sayfasında tutacaktı
            var check = db.KULLANICILAR.FirstOrDefault(kp => kp.AD == k.AD && kp.SIFRE == k.SIFRE);
            if (check != null)
            {
                FormsAuthentication.SetAuthCookie(check.AD, false);
                Session["AD"] = check.AD;
                //Session["user"] = check;
                return RedirectToAction("Index", "Home");
            }

            else
            {

                ViewBag.Mesaj = "Hatalı Kullanici Adı ya da Şifre Girdiniz....";
                return View();
            }
        }
    }
}