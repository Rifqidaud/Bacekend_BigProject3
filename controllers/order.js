const db = require("../database/models");
const Cart = db.cart 
const Product = db.product
const {Op, where} = require("sequelize");
const { product } = require("../database/models");
const Order = db.order;
const OrderDetail = db.orderdetail

exports.checkout = async(req,res,next) => {
    try{
          const cart=req.body.cart;
          const total=req.body.total;
          const order=await Order.create({
           status: "pending",
           total:total,
           user_id: req.user.id,
           data_product: cart,
          });
          return res.status(200).json({
            status: 'success',
            code:200,
            message:'Success get data all',
            data:cart,
            total:total
          });
    }catch(error){
        return next(error)
    }
};

exports.save = async(req,res,next) => {
    try{
        const dataUser = req.body.dataUser;
         await Order.update(
          {
             dataUser: dataUser
             
          },
         
        { where:{
             user_id:req.user.id,
        }},
        console.log(dataUser)
            
        )
        
          return res.status(200).json({
            status: 'success',
            code:200,
            message:'Success to add cart',
          })
    }catch(error){
        return next(error)
    }
    
};

exports.getorder = async(req,res,next) => {
  try{
        console.log(Product)
        const order = await Order.findAll({
          where:{
              user_id:req.user.id
              
          },
          order:[['id','desc']]
        })
        if(order.length==0){
          return res.status(200).json({
              status: 'success',
              code:200,
              message:'No order',
              data: [],
            })
        }
        return res.status(200).json({
          status: 'success',
          code:200,
          message:'Success get order all',
          data:order
        })
  }catch(error){
      return next(error)
  }
};
exports.getorderdetail = async(req,res,next) => {
  try{
        const { id } = req.params
        const order = await Order.findOne({
          where:{
              user_id:req.user.id,
              id:id
          },
          // include:[
          //   {
          //     model:OrderDetail, 
          //     as:'details',
          //     include:[
          //        {
          //         model:Product,
          //         as:'product'
          //        }
          //     ]
        //     }
        //  ]
        })
        if(!order){
             throw new Error("Produk tidak ada")
        }
    return res.status(200).json({
      status: "Success",
      code: 200,
      message: "success get data detail",
      data: order,
    });
  }catch(error){
      return next(error)
  }
};
exports.savepay = async(req,res,next) => {
  try{
        const { id } = req.params
        const order = await Order.update(
          {
             status: 'dibayar'
             
          },
         
        { where:{
             id:id,
        }},     
        )
        
    return res.status(200).json({
      status: "Success",
      code: 200,
      message: "success",
    });
  }catch(error){
      return next(error)
  }
};