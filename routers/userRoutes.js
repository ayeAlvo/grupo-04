const express = require('express');
const router = express.Router();


// Controller
const controlador = require('../controllers/userController.js');


// middlewares
const userValidations = require('../middlewares/userValidations');
const uploadFile = require('../middlewares/multerMiddlewareUser');


// Vista Formulario Login
router.get('/login', controlador.login);
//Procesa el login
router.post('/login', controlador.processLogin);

// Vista Formulario
router.get('/register', controlador.register);
// Procesa el Registro
router.post('/register', uploadFile.single('avatar'), userValidations, controlador.processRegister);


module.exports = router;