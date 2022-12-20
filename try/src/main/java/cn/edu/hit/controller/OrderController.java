package cn.edu.hit.controller;


import cn.edu.hit.po.*;
import cn.edu.hit.service.OrderService;
import cn.edu.hit.service.ProductService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.JsonArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import cn.edu.hit.util.PostJson;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    ProductService productService;

    @Autowired
    HttpSession session;

    @Autowired
    OrderService service;

    @RequestMapping("/toverify")
    public  String toverify(){
        return  "verify";
    }

    // 从立即购买进入订单
    @RequestMapping("/toverify1")
    public String  toverify1(Integer pId , Model model){
        Product productById = productService.getProductById(pId);

        model.addAttribute("product",productById);

        return "verify1";
    }

    //doPay

    @RequestMapping("/doPay")
    public String doPay(Order order , Model model){
        // 收件地址
        User user = (User) session.getAttribute("user");

        if(user == null){
            //未登陆
            return "login";
        }

        Cart cart = (Cart) session.getAttribute("cart");

        // 新增订单

        Integer oId = service.addOrder(order,user,cart);

        model.addAttribute("oId",oId);

        session.setAttribute("cart",null);

//        OrderExt orderExt = service.selAll(oId);
//
//        model.addAttribute("orderExt",orderExt);

        return "pay";

    }



    //doPay1
    @RequestMapping("/doPay1")
    public String doPay1(Order order,Integer pId,Model model){
        // 收件地址
        User user = (User) session.getAttribute("user");

        if(user == null){
            //未登陆
            return "login";
        }

        Product productById = productService.getProductById(pId);

        // 购物车

        CartItem cartItem = new CartItem();
        cartItem.setCount(1);
        cartItem.setProduct(productById);
        Cart cart = new Cart();
        cart.setMap(cartItem);
        Integer oId = service.addOrder(order,user,cart);

        model.addAttribute("oId",oId);

//        OrderExt orderExt = service.selAll(oId);
//        model.addAttribute("orderExt",orderExt);

        return "pay";

    }

    // 订单单项去付款
    // 更新状态
    @RequestMapping("/doPay2")
    public String doPay2(Order order , Model model){
        User user = (User) session.getAttribute("user");
        if(user == null){
            return  "login";
        }
        Integer i = service.updateState(order);// 1 √
//        System.out.println(i);

        model.addAttribute("oId",order.getoId());

//        OrderExt orderExt = service.selAll(order.getoId());
//        model.addAttribute("orderExt",orderExt);
        if(i == 0) {
            return "pay";
        }else if(i == 1){
            return "SuccessPay";
        }else{
            return "PayError";
        }

    }
    // 我的订单

    @RequestMapping("/toMyOrder")
    public String toMyOrder(ProductExt<OrderExt> productExt , Model model){
        User user = (User) session.getAttribute("user");

        if(user == null){
            return  "login";
        }

        productExt.setPageSize(3);

        ProductExt<OrderExt> orderExtList = service.selallOrder(user.getuId() , productExt);

        // 订单状态

        Map<Long , Integer> map =  service.selState(user.getuId());

        model.addAttribute("map",map);
        model.addAttribute("orderExt",orderExtList);

        return  "myOrder";
    }




    // 删除订单
    @RequestMapping("/updatastate")
    public  String updatestate(Order order){
        Integer i = service.updateState(order);
        if(i == 1){
            return "redirect:http://localhost:8080/shop/order/toMyOrder";
        }else{
            return "PayError";
        }
    }


    // 确认收货
    @RequestMapping("toconfirmReceipt")

    public String toconfirmReceipt(Order order, Model model){
//        System.out.println(order.getoId());

        OrderExt orderExt = service.selAll(order.getoId());
        User user = service.getUser(order.getuId());

        model.addAttribute("user",user);
        model.addAttribute("orderExt",orderExt);

        return "confirmReceipt";

    }

    @RequestMapping("/paytoBank")
    public String paytoBank(Integer oId, Model model){


        System.out.println(oId);

        // 查询商品信息
        OrderExt orderExt = service.selAll(oId);
        model.addAttribute("orderExt",orderExt);

        User user = (User) session.getAttribute("user");

        if(user == null){
            return  "login";
        }
        model.addAttribute("user",user);

        System.out.println(user.toString());

        System.out.println(orderExt.toString()+"fuck");


        //添加每一个去向
        OrderItemExt item = orderExt.getList().get(0);

        Post order_item = new Post(user.getBankId(),item.getProduct().getMarketOwner(),item.getSubTotal().toString(),item.toString());
        System.out.println(JSONObject.toJSONString(order_item));

        //创建报文
        PostExt order_to_post = new PostExt(order_item, "sssss","ssssss");

        System.out.println(JSONObject.toJSONString(order_to_post));

        //Post的目标地址
        PostJson post = new PostJson("http://0.0.0.0:8000/order",JSONObject.toJSONString(order_to_post));


        //处理返回报文
        String res = post.doPost();
        System.out.println(res);

        JSONObject json_return = JSON.parseObject(res);

        JSONObject detail = JSON.parseObject("" + json_return.get("detail"));
        String result = detail.getString("success");
        String message = detail.getString("message");

        System.out.println(result);
        // 支付成功  订单状态
        if(result.equals("true")){
            service.upId(oId);
            return "SuccessPay";
        }else{
            model.addAttribute("error",message);
            return "PayError";
        }

//        return post.doPost();

    }


}
















