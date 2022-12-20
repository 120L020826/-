<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>支付界面</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body style="position:relative;">


<!--header-->
<%@ include file="common/header.jsp" %>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp" %>
    
    <!--内容开始-->
<form method="get" action="http://localhost:8080/shop/order/paytoBank">
    <p>
        <img style="margin: 0 auto" src="${pageContext.request.contextPath}/images/tijiaocg.png">
        <p></p>
        <p></p>
        <p></p>
        <div class="dt-ifm-box4" align="center">
            <a href="${pageContext.request.contextPath}/index/toindex"  style="font-size: 30px; background-color:#007bff;">继续逛逛</a>
            <a href="${pageContext.request.contextPath}/order/toconfirmReceipt?oId=${oId.intValue()}" onclick=popTwo()  style="font-size: 30px;background-color:rgba(255,72,0,0.94);">立即支付</a>
        </div>
    </p>
    <script>
        function getData() {
            var oId = ${oId.intValue()};
            var sex = document.getElementById("cboSex").value;
            var address = document.getElementById("txtAddress").value;
            if (name != "" && sex != 0 && address != "") {
                var form = document.getElementById("frm");
                //1./Main/GetData 通过形参接收数据
                //form.action = "/Main/GetData";
                //4.EntityClass实体类接收数据
                form.action = "http://localhost:8080/shop/order/paytoBank";
                form.method = "get";
                form.submit();
            } else {
                alert("表单填写的数据不能为空，请检查");
            }
        }
    </script>
    <script>
        function popTwo(){
            if(confirm("订单号：${oId.intValue()}\n"+"请确认是否支付！")){
                "确认";
            }else{
                "退出" ;
                window.location.href='${pageContext.request.contextPath}/index/toindex';
            }
        }
    </script>
</form>
<!--底部一块-->
<%@ include file="common/bottom.jsp" %>

</body>
</html>
