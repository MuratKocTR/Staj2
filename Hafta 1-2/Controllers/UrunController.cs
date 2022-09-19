using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebLessons.Models;

namespace WebLessons.Controllers
{
    public class UrunController : Controller
    {
        // GET: Uurnler
        LessonEntities db = new LessonEntities();
       
        public ActionResult Index()
        {
            var degerler = db.URUNLER.ToList();
            return View(degerler);
        }

        [HttpGet]
        public ActionResult YeniUrun()
        {
            List<SelectListItem> degerler = (from i in db.KATEGORILER.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KATEGORIAD,
                                                 Value = i.KATEGORIID.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View();
        }


        [HttpPost]
        public ActionResult YeniUrun(URUNLER u)
           
        {
            var ktg = db.KATEGORILER.Where(m => m.KATEGORIID == u.KATEGORILER.KATEGORIID).FirstOrDefault();
            u.KATEGORILER = ktg;
            db.URUNLER.Add(u);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult UrunSil(int id)
        {
            var urun = db.URUNLER.Find(id);
            db.URUNLER.Remove(urun);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult UrunGetir(int id)
        {
            var urun = db.URUNLER.Find(id);
            List<SelectListItem> degerler = (from i in db.KATEGORILER.ToList()
                                             select new SelectListItem
                                             {
                                                 Text = i.KATEGORIAD,
                                                 Value = i.KATEGORIID.ToString()
                                             }).ToList();
            ViewBag.dgr = degerler;
            return View("UrunGetir", urun);
        }

        public ActionResult UrunGuncelle(URUNLER m)
        {
          
            var urun = db.URUNLER.Find(m.URUNID);
            urun.URUNAD = m.URUNAD;
            urun.URUNKATEGORI = m.URUNKATEGORI;
            urun.FIYAT = m.FIYAT;
            urun.MARKA = m.MARKA;
            urun.STOK = m.STOK;

            //alttaki kısım güncelleme işlemi sonrası dropdown listteki değerlerin
            //güncellenmiş haline atanması için
            var ktg = db.KATEGORILER.Where(z => z.KATEGORIID == m.KATEGORILER.KATEGORIID).FirstOrDefault();
            urun.URUNKATEGORI = ktg.KATEGORIID;
            //
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}