const express = require('express');
const router = express.Router();


// Controller
const controlador = require('../controllers/mainController.js');

// middlewares
const uploadFile = require('../middlewares/multerMiddlewareCard');

/*** Home ***/ 
router.get('/', controlador.home);

/*** GET ALL CARDS ***/ 
router.get('/market', controlador.market);

/*** POST SEARCH CARDS ***/ 
router.post('/market', controlador.search);


/*** ADMIN EDITION (hacer middleware) ***/ 
router.get('/admin-edit', controlador.edition);
/*** EDIT ONE CARD ***/ 
router.get('/admin-edit/:id', controlador.edit);
router.put('/:id', uploadFile.single('image'), controlador.update);

/*** CREATE ONE CARD ***/ 
router.get('/admin-create', controlador.create);
router.post('/admin-create', uploadFile.single('image'), controlador.new);

/*** DELETE ONE PRODUCT***/ 
router.delete('/:id', controlador.destroy);

module.exports = router;
