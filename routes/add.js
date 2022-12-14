var express = require('express');
var router = express.Router();
// const multer = require('multer');

const UserController = require('../controller/addData');
const { isLoggedIn } = require('../middlewares/auth');

var database = require("../database");


// router.get('/tambah-data-pengguna', isLoggedIn,  UserController.form_pengguna);
// router.post('/tambah-data-pengguna', isLoggedIn,  UserController.create_pengguna);

// GET tambah kematian.
router.get('/tambah-data-pindah', isLoggedIn,  UserController.form_keluar_add);
router.post('/tambah-data-pindah', isLoggedIn,  UserController.create_keluar);




router.get('/tambah-data-keluarga', isLoggedIn,  UserController.form_keluarga);
router.post('/tambah-data-keluarga', isLoggedIn,  UserController.create_keluarga); 

//GET tambah kematian.
router.get('/tambah-data-kematian', isLoggedIn,  UserController.form_kematian)
router.post('/tambah-data-kematian', isLoggedIn,  UserController.create_kematian); 



// router.get('/tambah-data-masuk', isLoggedIn,  function (req, res, next) {
//     res.render('tambah-data-masuk');
// });



router.get('/tambah-data-pengguna', isLoggedIn,  UserController.form_pengguna);
router.post('/tambah-data-pengguna', isLoggedIn,  UserController.create_pengguna);

//GET tambah umkm. 
router.get('/tambah-data-umkm', isLoggedIn, UserController.form_umkm);
router.post('/tambah-data-umkm', isLoggedIn, UserController.create_umkm);

//GET Tambah data Keluarga UMKM
router.get('/tambah-data-keluarga-umkm', isLoggedIn,  UserController.form_keluarga_umkm);
router.post('/tambah-data-keluarga-umkm', isLoggedIn,  UserController.create_keluarga_umkm); 

//GET Tambah data Penduduk UMKM
router.get('/tambah-data-penduduk-umkm', isLoggedIn,  UserController.form_penduduk_umkm);
router.post('/tambah-data-penduduk-umkm', isLoggedIn,  UserController.create_penduduk_umkm); 

//GET tambah kbli. 
router.get('/tambah-data-kbli', isLoggedIn, UserController.form_kbli);
router.post('/tambah-data-kbli', isLoggedIn, UserController.create_kbli);


// GET tambah publikasi.
router.get('/tambah-data-publikasi', isLoggedIn, UserController.form_publikasi_add);
router.post('/tambah-data-publikasi', isLoggedIn, UserController.create_publikasi);



router.get('/tambah-data-kelahiran', isLoggedIn,  UserController.form_kelahiran); 
router.post('/tambah-data-kelahiran', isLoggedIn,  UserController.create_kelahiran); 


router.get('/tambah-data-penduduk', isLoggedIn,  UserController.form_penduduk);
router.post('/tambah-data-penduduk', isLoggedIn,  UserController.create_penduduk);

module.exports = router;    