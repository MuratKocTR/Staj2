using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebLessons.Models;

namespace WebLessons.Controllers
{
    public class SatislarController : Controller
    {
        // GET: Satislar

        LessonEntities db = new LessonEntities();
        [Authorize]
        public ActionResult Index()
        {
            var degerler = db.SATISLAR.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult YeniSatislar()
        {


            List<SelectListItem> degerler1 = (from i in db.URUNLER.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.URUNAD,
                                                 Value = i.URUNID.ToString()
                                             }).ToList();
            ViewBag.dgr1 = degerler1;

            List<SelectListItem> degerler2 = (from i in db.MUSTERILER.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.MUSTERIAD,
                                                 Value = i.MUSTERIID.ToString()
                                             }).ToList();
            ViewBag.dgr2 = degerler2;

            List<SelectListItem> degerler3 = (from i in db.MUSTERILER.ToList()
                                              select new SelectListItem
                                              {
                                                  Text = i.MUSTERISOYAD,
                                                  Value = i.MUSTERIID.ToString()
                                              }).ToList();
            ViewBag.dgr3 = degerler3;
            return View();
        }


        [HttpPost]
        public ActionResult YeniSatislar(SATISLAR s)
        {
            var ktg = db.URUNLER.Where(m => m.URUNID == s.URUNLER.URUNID).FirstOrDefault();
            s.URUNLER = ktg;
            var ktg2 = db.MUSTERILER.Where(m => m.MUSTERIID == s.MUSTERILER.MUSTERIID).FirstOrDefault();
            s.MUSTERILER = ktg2;
            db.SATISLAR.Add(s);
            db.SaveChanges();

            return RedirectToAction("Index");
        }


        public ActionResult Sil(int id)
        {
            var satis = db.SATISLAR.Find(id);
            db.SATISLAR.Remove(satis);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
   
}