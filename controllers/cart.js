const db = require("../database/models");
const Cart = db.cart
const Product = db.product

exports.findAll = async(req,res,next) => {
    try{
          console.log(Product)
          const cart = await Cart.findAll({
            where:{
                user_id:req.user.id
            },
            include:[
               {model:Product, as:'product'}
            ]

          })
          if(cart.length==0){
            return res.status(200).json({
                status: 'success',
                code:200,
                message:'No cart',
              })
          }
          return res.status(200).json({
            status: 'success',
            code:200,
            message:'Success get data all',
            data:cart
          })
    }catch(error){
        return next(error)
    }
};

exports.add = async(req,res,next) => {
    try{
          const {product_id, quantity} = req.body
          console.log(product_id)
          const product = await Product.findByPk(product_id);
          

          if (!product) {
            console.log("produk tidak ada")
            throw new Error("Produk tidak ada");
          }
          const existcart=await Cart.findOne({
            where:{
              product_id:product_id,user_id:req.user.id
            }
          })
          if (!existcart){
            if (quantity > product.quantity) {
              console.log("stok tidaka ada")
              throw new Error("jumlah stok produk tidak mencukupi")
            }
  
            const cart = await Cart.create({
                product_id:product_id,
                quantity :quantity,
                user_id:req.user.id
            });
          }else{
            var totalquantity=quantity+existcart.quantity;
            if (totalquantity > product.quantity) {
              console.log("stok tidaka ada")
              throw new Error("jumlah stok produk tidak mencukupi")
            }
            await Cart.update(
              {
                  quantity:totalquantity
              },
              {
                  where: {
                      id:existcart.id,
                  },
              }
            );
          }

         
          return res.status(200).json({
            status: 'success',
            code:200,
            message:'Success to add cart',
          })
    }catch(error){
        return next(error)
    }
    
};
exports.update = async(req,res,next) => {
    try{
          const { cart_id, quantity, product_id} = req.body;
          const product = await Product.findByPk(product_id);

          if (!product) {
            
            throw new Error("Produk tidak ada");
          }
          if (quantity > product.quantity) {

            throw new Error("jumlah stok produk tidak mencukupi")
          }
          await Cart.update(
            {
                quantity:quantity
            },
            {
                where: {
                    id:cart_id,
                },
            }
          );
          return res.status(200).json({
            status: 'success',
            code:200,
            message:'Success edit cart',
          });
    }catch(error){
        return next(error)
    }
};
exports.destroy = async(req,res,next) => {
    try{
          const { id } = req.params;
          await Cart.destroy({
            where: {
                id:id,
            },
          });
          return res.status(200).json({
            status: 'success',
            code:200,
            message:'Success delete data',
          })
    }catch(error){
        return next(error);
    }
};



