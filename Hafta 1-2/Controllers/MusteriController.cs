using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebLessons.Models;

namespace WebLessons.Controllers
{
    public class MusteriController : Controller
    {
        // GET: Musteri
        LessonEntities db = new LessonEntities();
        [Authorize(Roles = "Admin")]
        public ActionResult Index(string p)
        {
            var degerler = from d in db.MUSTERILER select d;
            if (!string.IsNullOrEmpty(p))
            {
                degerler = degerler.Where(m => m.MUSTERIAD.Contains(p));
            }
            return View(degerler.ToList());
        }
        [HttpGet]
        public ActionResult YeniMusteri()
        {
            return View();
        }


        [HttpPost]
        public ActionResult YeniMusteri(MUSTERILER m)
        {
            if (!ModelState.IsValid)
            {
                return View("YeniMusteri");
            }
            

            db.MUSTERILER.Add(m);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult SIL(int id)
        {
            var musteri = db.MUSTERILER.Find(id);
            db.MUSTERILER.Remove(musteri);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult MusteriGetir(int id)
        {
            var musteri = db.MUSTERILER.Find(id);
            return View("MusteriGetir", musteri);
        }

        public ActionResult MusteriGuncelle(MUSTERILER m)
        {
            var musteri = db.MUSTERILER.Find(m.MUSTERIID);
            musteri.MUSTERIAD = m.MUSTERIAD;
            musteri.MUSTERISOYAD = m.MUSTERISOYAD;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}