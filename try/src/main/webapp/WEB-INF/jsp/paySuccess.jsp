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
<p>
    <img style="margin: 0 auto" src="${pageContext.request.contextPath}/images/paysuceed.png">
    <div class="odr-cf">
        <p>卖家名称：商城自营专营店</p>
        <p>收货信息： ${orderExt.addr} ${orderExt.name}， ${orderExt.phone}， 000000</p>
        <p>成交时间：<fmt:formatDate value="${orderExt.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> </p>
        <p>订单号：${orderExt.oId}</p>
        <%-- 遍历订单--%>
        <c:forEach items="${orderExt.list}" var="list">
            <p>付款方：${orderExt.uId}   收款方：${list.product.marketOwner} 金额：${list.subTotal}</p>
        </c:forEach>
        <p>总金额：${orderExt.total}</p>

    </div>
</p>

<!--底部一块-->
<%@ include file="common/bottom.jsp" %>

</body>
</html>
