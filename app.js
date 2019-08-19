//引入express
const express=require('express');
//引用body-parser中间件
const bodyParser=require('body-parser');
//引入用户路由器（user.js）
const userRouter=require('./routes/user.js');
//引入商品路由器(product.js)
const productRouter=require('./routes/product.js');


//创建web服务器
var app=express();
//监听端口
app.listen(8080);

//使用body-parser中间件，将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
	extended:false //使用querystring模块
}));

//托管静态资源到public下
app.use(express.static('public/user'));
app.use(express.static('public/product'));



//使用路由器，挂载到/user下
app.use('/user',userRouter);
//使用路由器，挂载到/product
app.use('/product',productRouter);

