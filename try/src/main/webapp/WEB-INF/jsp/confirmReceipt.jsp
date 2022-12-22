<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我的订单(确认收货)</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body style="position:relative;">


<!--header-->
<%@ include file="common/header.jsp" %>

<!--logo search erweima-->
<%@ include file="common/erweima.jsp" %>
<!--nav-->
<div class="nav-box">
    <div class="nav-kuai w1200">
        <div class="nav-kuaijie yjp-hover1 f-l">
            <a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
            <div class="kuaijie-box yjp-show1" style="display:none;">
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif"/><a href="JavaScript:;">食品/饮料/酒水</a>
                        </dt>
                        <dd>
                            <a href="JavaScript:;">饼干糕点</a><span>|</span>
                            <a href="JavaScript:;">冲调保健</a><span>|</span>
                            <a href="JavaScript:;">酒水</a>
                        </dd>
                    </dl>
                    <div class="kuaijie-con">
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-08.gif"/><a href="JavaScript:;">粮油副食</a>
                        </dt>
                        <dd>
                            <a href="JavaScript:;">厨房调味</a><span>|</span>
                            <a href="JavaScript:;">大米/面粉</a><span>|</span>
                            <a href="JavaScript:;">方便速食</a>
                        </dd>
                    </dl>
                    <div class="kuaijie-con">
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-09.gif"/><a href="JavaScript:;">家庭清洁</a>
                        </dt>
                        <dd>
                            <a href="JavaScript:;">厨房清洁</a><span>|</span>
                            <a href="JavaScript:;">纸品湿巾</a><span>|</span>
                            <a href="JavaScript:;">家私</a>
                        </dd>
                    </dl>
                    <div class="kuaijie-con">
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-10.gif"/><a href="JavaScript:;">美妆洗护/个人护理</a>
                        </dt>
                        <dd>
                            <a href="JavaScript:;">洗浴用品/身体护理</a><span>|</span>
                            <a href="JavaScript:;">洗发护发</a>
                        </dd>
                    </dl>
                    <div class="kuaijie-con">
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-11.gif"/><a href="JavaScript:;">母婴用品/玩具</a>
                        </dt>
                        <dd>
                            <a href="JavaScript:;">宝宝喂养/洗护清洁</a><span>|</span>
                            <a href="JavaScript:;">玩具</a><span>|</span>
                            <a href="JavaScript:;">奶粉/辅食</a>
                        </dd>
                    </dl>
                    <div class="kuaijie-con">
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                </div>
                <div class="kuaijie-info">
                    <dl class="kj-dl1">
                        <dt><img src="${pageContext.request.contextPath}/images/zl2-12.gif"/><a href="JavaScript:;">家居/家电</a>
                        </dt>
                    </dl>
                    <div class="kuaijie-con">
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <dl class="kj-dl2">
                            <dt><a href="JavaScript:;">洗浴用品/身体护理</a></dt>
                            <dd>
                                <a href="JavaScript:;">护手霜</a><span>|</span>
                                <a href="JavaScript:;">香皂</a><span>|</span>
                                <a href="JavaScript:;">沐浴露</a><span>|</span>
                                <a href="JavaScript:;">花露水</a><span>|</span>
                                <a href="JavaScript:;">泡浴/盐浴</a><span>|</span>
                                <a href="JavaScript:;">洗手液</a>
                            </dd>
                        </dl>
                        <div style="clear:both;"></div>
                    </div>
                </div>
            </div>
        </div>
        <ul class="nav-font f-l">
            <li><a href="JavaScript:;">在线商城</a></li>
            <li><a href="JavaScript:;">餐饮娱乐</a></li>
            <li><a href="JavaScript:;">家政服务</a></li>
            <li><a href="JavaScript:;">美容美发</a></li>
            <li><a href="JavaScript:;">教育培训</a></li>
            <li><a href="JavaScript:;">汽车房产</a></li>
            <li><a href="JavaScript:;">家居建材</a></li>
            <li><a href="JavaScript:;">二手市场</a><span><img
                    src="${pageContext.request.contextPath}/images/zl2-05.gif"/></span></li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
</div>

<!--内容开始-->
<div class="personal w1200">
    <div class="personal-left f-l">
        <div class="personal-l-tit">
            <h3>个人中心</h3>
        </div>
        <ul>
            <li class="current-li per-li1"><a href="#">消息中心<span>></span></a></li>
            <li class="per-li2"><a href="#">个人资料<span>></span></a></li>
            <li class="per-li3"><a href="#">我的订单<span>></span></a></li>
            <li class="per-li4"><a href="#">我的预约<span>></span></a></li>
            <li class="per-li5"><a href="#">购物车<span>></span></a></li>
            <li class="per-li6"><a href="#">管理收货地址<span>></span></a></li>
            <li class="per-li7"><a href="#">店铺收藏<span>></span></a></li>
            <li class="per-li8"><a href="#">购买记录<span>></span></a></li>
            <li class="per-li9"><a href="#">浏览记录<span>></span></a></li>
            <li class="per-li10"><a href="#">会员积分<span>></span></a></li>
        </ul>
    </div>
    <div class="f-r">
        <div class="confirmation">
            <div class="in-tit">
                <h3>商品信息</h3>
            </div>

            <c:forEach items="${orderExt.list}" var="list">
                <div class="commodity" style="border-bottom:0;">
                    <div class="matong f-l">
                        <a href="#"><img style="width: 220px;height: 220px;" src="${pageContext.request.contextPath}/${list.product.image}"/></a>
                    </div>
                    <div class="com-con f-l">
                        <h3>${list.product.pName}</h3>

                        <dl>
                            <dt>促销</dt>
                            <dd><span class="sp1">满赠</span> 指定商品满1件，赠送卫欲无限 座便器配件三件套</dd>
                            <div style="clear:both;"></div>
                        </dl>

                        <dl>
                            <dt>价格</dt>
                            <dd><span class="sp2">¥${list.product.shopPrice}</span></dd>
                            <div style="clear:both;"></div>
                        </dl>
                    </div>
                    <div style="clear:both;"></div>
                </div>
            </c:forEach>



        </div>
        <div class="confirmation">
            <div class="in-tit">
                <h3>订单信息</h3>
            </div>
            <div class="odr-cf">
                <p>卖家名称：商城自营专营店</p>
                <p>收货信息： ${orderExt.addr} ${orderExt.name}， ${orderExt.phone}， 000000</p>
                <p>成交时间：<fmt:formatDate value="${orderExt.orderTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> </p>
                <p>订单号：${orderExt.oId}</p>
            <%-- 遍历订单--%>
                    <c:forEach items="${orderExt.list}" var="list">
                        <p>商品单号：${list.itemId}  付款方ID： ${user.uId}   付款方卡号：${user.bankId}      收款方卡号：${list.product.marketOwner}     金额：${list.subTotal}</p>
                    </c:forEach>
                <p>总金额：${orderExt.total}</p>

            </div>
        </div>
        <div class="confirmation">
            <div class="in-tit">
                <h3>确认付款</h3>
            </div>
            <div class="odr-sh">

                <div class="psw">
                    <p class="psw-p1">私钥</p>
                    <input type="file" id="privkey" onchange="readPrivkey(this)" />
                </div>

                <div class="psw">
                    <p class="psw-p1">私钥密码</p>
                    <input type="text" placeholder="密码" id="password" />
                </div>
                <p class="reminder">温馨提示：私钥仅用于本地浏览器中对付款信息签名，不会发送到服务端。请确认信息后，再确认付款！否则您可能钱货两空！</p>
                <div class="zfb">
                    <button class="zfb-btn" onclick="submit_order()">确认付款</button>
                </div>
            </div>
        </div>
    </div>
<%-- 懒得写fetch了，下方隐藏的form用于向后端提交信息 --%>
    <div style="display: none">
        <form id="pay_form" action="${pageContext.request.contextPath}/order/paytoBank" method="post">
            <input type="hidden" name="oId" id="oId" />
            <input type="hidden" name="timestamp" id="timestamp" />
            <input type="hidden" name="signature" id="signature" />
        </form>
    </div>
    <div style="clear:both;"></div>
</div>

<script>
    const str2ab = (str) => {
        const buf = new ArrayBuffer(str.length);
        const bufView = new Uint8Array(buf);
        for (let i = 0, strLen = str.length; i < strLen; i++) {
            bufView[i] = str.charCodeAt(i);
        }
        return buf;
    }

    const ab2str = (buf) => {
        return String.fromCharCode.apply(null, Array.from(new Uint8Array(buf)));
    }

    const xorBuffer = (a, key) => {
        const a8 = new Uint8Array(a)
        const key8 = new Uint8Array(key)
        for (let i = 0; i < a.byteLength; i += 1)
            a8[i] ^= key8[i]
    }

    const getXorKey = async (password, length) => {
        const baseKey = await crypto.subtle.importKey(
            "raw", (new TextEncoder()).encode(password),
            "PBKDF2", false, ["deriveBits"]
        )
        // length for PBKDF2 key derivation must be a multiple of 8 bits
        const key = await window.crypto.subtle.deriveBits(
            {
                name: "PBKDF2",
                salt: str2ab("\x8doSl\x13h\x15B2\x16\x8d.\xac-O\x96"),
                iterations: 1926,
                hash: "SHA-256",
            }, baseKey, length * 8
        );
        return key.slice(0, length)
    }

    const importPEMPrivKey = async (privkey, password) => {
        privkey = privkey.trim()
        const pemHeader = '-----BEGIN PRIVATE KEY-----\n';
        const pemFooter = '\n-----END PRIVATE KEY-----';

        // fetch the part of the PEM string between header and footer
        const pemContents = privkey.substring(pemHeader.length, privkey.length - pemFooter.length);
        // base64 decode the string to get the binary data
        const binaryDerString = atob(pemContents);
        // convert from a binary string to an ArrayBuffer
        const binaryDer = str2ab(binaryDerString);
        // decrypt using password
        xorBuffer(binaryDer, await getXorKey(password, binaryDer.byteLength))

        return crypto.subtle.importKey(
            'pkcs8', binaryDer, {
                name: 'ECDSA',
                namedCurve: 'P-256',
            }, true, ['sign']
        );
    }

    const getPubKey = async (privKey) => {
        const jwkPrivate = await crypto.subtle.exportKey('jwk', privKey);
        delete jwkPrivate.d;
        jwkPrivate.key_ops = ['verify'];
        return crypto.subtle.importKey(
            'jwk', jwkPrivate, {
                name: 'ECDSA',
                namedCurve: 'P-256'
            }, true, ['verify']
        );
    }

    const wrapPEM = (raw) => {
        return raw.replace(/(.{64})/g, "$1\n")
    }

    const exportPEMPubKey = async (pubKey) => {
        const exported = await crypto.subtle.exportKey('spki', pubKey);
        const exportedAsBase64 = btoa(ab2str(exported));
        return "-----BEGIN PUBLIC KEY-----\n" + wrapPEM(exportedAsBase64) + "\n-----END PUBLIC KEY-----";
    }

    const exportPEMPrivKey = async (privKey, password) => {
        const binaryDer = await crypto.subtle.exportKey("pkcs8", privKey)
        xorBuffer(binaryDer, await getXorKey(password, binaryDer.byteLength))
        const binaryDerString = btoa(ab2str(binaryDer))
        return "-----BEGIN PRIVATE KEY-----\n" + wrapPEM(binaryDerString) + "\n-----END PRIVATE KEY-----"
    }

    const generateSignature = async (privkey, data) => {
        const signature = await crypto.subtle.sign(
            {
                name: 'ECDSA',
                hash: { name: 'SHA-256' },
            }, privkey, str2ab(data)
        );
        return btoa(ab2str(signature));
    }

    const generateKeyPair = async () => (
        crypto.subtle.generateKey(
            { name: 'ECDSA', namedCurve: 'P-256' },
            true, ["sign"]
        )
    )
    let privkey = ""
    const readPrivkey = async (input) => {
        const reader = new FileReader()
        reader.readAsText(input.files[0])
        reader.onload = async (e) => {
            privkey = e.target.result
        }
        console.dir(input.files[0])
    }
    const submit_order = async () => {
        const password = document.getElementById("password").value
        const timestamp = Date.now();
        const raw_msg = "${user.bankId}||${orderExt.list[0].getProduct().getMarketOwner()}||" +
            "${orderExt.getTotal()}||${orderExt.getList().get(0).toString()}||" + timestamp.toString()
        console.dir(raw_msg)
        const sig = await generateSignature(
            await importPEMPrivKey(privkey, password),
            // sign(from_id||to_id||amount||comment||timestamp)
            raw_msg
        )
        console.dir(privkey)
        console.dir(sig)
        document.getElementById("signature").value = sig
        document.getElementById("timestamp").value = timestamp
        document.getElementById("oId").value = "${orderExt.oId}"
        document.getElementById("pay_form").submit()
    }
</script>

<!-- 底部一块-->
<%@ include file="common/bottom.jsp" %>
</body>
</html>
