const { Router } = require('express');
const { newstudent } = require('../controller/controller');
const router = Router();
module.exports = router;

//ESTUDIANTE NUEVO
router.post('/newstudent', newstudent);

//CURSO NUEVO
router.post('/newcourse', newstudent);

//ASIGNACION DE CURSO
router.post('/asigcurso', newstudent);

//VISUALIZAR ESTUDIANTE POR CURSO
router.get('/getstudentcourse', newstudent);

//REGISTRAR ACTIVIDAD
router.post('/newactivity', newstudent);

//INGRESO NOTA ACTIVIDAD
router.post('/newnota', newstudent);

//VISUALUZAR NOTA DE ACTIVIDAD
router.get('/getnota', newstudent);
