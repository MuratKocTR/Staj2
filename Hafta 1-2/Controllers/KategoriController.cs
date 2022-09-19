using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebLessons.Models;
using PagedList;
using PagedList.Mvc;

namespace WebLessons.Controllers
{
    public class KategoriController : Controller
    {
        // GET: Kategori
        LessonEntities db = new LessonEntities();
        [Authorize(Roles = "Admin")]
        public ActionResult Index(int sayfa=1)
        {


            // soldaki değer başlangıç indisi
            // sağdaki değer ise eleman sayısı
            //var degerler = db.KATEGORILER.ToList().ToPagedList(sayfa, 4);
            
           
            var degerler = db.KATEGORILER.ToList();
            return View(degerler);
        }
        [HttpGet]
        [Authorize(Roles = "Admin")]
        public ActionResult YeniKategori()
        {
            return View();
        }
        
        
        [HttpPost]
        [Authorize(Roles = "Admin")]
        public ActionResult YeniKategori(KATEGORILER k)
        {
            if(!ModelState.IsValid){
                return View("YeniKategori");
            }
            db.KATEGORILER.Add(k);
            db.SaveChanges();
            
            return RedirectToAction("Index");
        }

        [Authorize(Roles = "Admin")]
        public ActionResult KategoriSil(int id)
        {
            var kategori = db.KATEGORILER.Find(id);
            db.KATEGORILER.Remove(kategori);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [Authorize(Roles = "Admin")]
        public ActionResult KategoriGetir(int id)
        {
            var kategori = db.KATEGORILER.Find(id);
            return View("KategoriGetir", kategori);
        }
        [Authorize(Roles = "Admin")]
        public ActionResult KategoriGuncelle(KATEGORILER k)
        {
            var kategori = db.KATEGORILER.Find(k.KATEGORIID);
            kategori.KATEGORIAD = k.KATEGORIAD;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}