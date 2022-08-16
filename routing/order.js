const {Router} = require('express')
const {checkout, getorder, getorderdetail,save,savepay} = require('../controllers/order')
const {authorization} = require('../middleaware/authorizationUser')

const router = Router()

router.post('/checkout',authorization,checkout)
router.put('/save',authorization,save)
router.get('/getorder',authorization,getorder)
router.get('/getorderdetail/:id',authorization,getorderdetail)
router.put('/savepay/:id',savepay)




module.exports = router;