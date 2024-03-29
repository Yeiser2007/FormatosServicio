const express=require('express')
const Swal = require('sweetalert2')

const router = express.Router()

router.get('/root/3evaluacion', async (req, res) => {
   
    res.render('administrador/Docs/3Evaluacion');
});
router.get('/root/1Evaluacion', async (req, res) => {
  
    res.render('administrador/Docs/1Evaluacion');
});
router.get('/root/2Evaluacion', async (req, res) => {
   
    res.render('administrador/Docs/2Evaluacion');
});
router.get('/root/4Evaluacion', async (req, res) => {
   
    res.render('administrador/Docs/4Evaluacion');
});
router.get('/root/5Evaluacion', async (req, res) => {
    
    res.render('administrador/Docs/5Evaluacion');
});
router.get('/root/6Evaluacion', async (req, res) => {
    
    res.render('administrador/Docs/6Evaluacion');
});

router.get('/root',(req,res)=>{
    res.send('hello world')
})
router.get('/root/inicio',(req,res) => {
    res.render('administrador/Principal/inicio');
})
router.get('/root/formatos', (req,res) => {
    res.render('administrador/formatos/formatos')
})
router.get('/root/ajustes', (req,res) => {
    res.render('administrador/config/ajustes')
})
router.get('/root/control/alumnos', (req,res) => {
    res.render('administrador/control/alumnos')
})

module.exports = router