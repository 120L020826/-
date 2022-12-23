<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<%--    ${pageContext.request.contextPath}  动态获取项目名称  --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>
<script>
    //jquery    整个页面加载完毕后执行里面的内容
    $(function (){
       //获取name的元素  验证用户名
        $("#userName").change(function (){
            //发送jquery的ajax到后端
            $.ajax({
                url:"${pageContext.request.contextPath}/user/changeName",
                type:"post",
                data:{
                    name:$(this).val()
                },
                success:function (data){
                    //data返回的结果
                    if(data=="ok"){
                        //可用
                        $("#userNameMsg").attr("class","dui")
                        $("#userNameMsg").text("用户名可用")
                    }else {
                        //不可用
                        $("#userNameMsg").attr("class","cuo")
                        $("#userNameMsg").text("用户名不可用")
                    }
                }
            })

        })

        //验证密码
        $("#password").change(function (){
            //清空确认密码
            $("#rePasswordMsg").attr("class","")
            $("#rePasswordMsg").text("")
            $("#rePassword").val("")
            //写一个正则表达式
            var pattern= /^(?=.*[a-zA-Z])(?=.*[\d])(?=.*[\W])[a-zA-Z\d\W]{6,16}$/
            //获取秘吗
            var pass = $(this).val();
            //验证
            if(pattern.test(pass)){
                //符合规则
                $("#passwordMsg").attr("class","dui")
                $("#passwordMsg").text("密码可用")
            }else {
                //不符合规则
                $("#passwordMsg").attr("class","cuo")
                $("#passwordMsg").text("密码不符合")
            }

        })

        //确认密码
        $("#rePassword").change(function (){
            //拿到确认密码
            var repass = $(this).val();
            //拿到输入密码
            var pass = $("#password").val();
            if(repass==pass){
                $("#rePasswordMsg").attr("class","dui")
                $("#rePasswordMsg").text("密码可用")
            }else {
                $("#rePasswordMsg").attr("class","cuo")
                $("#rePasswordMsg").text("密码不可用")
            }

        })


        //验证手机号
        $("#phone").change(function (){
            //正则
            var phontPatter=/^1[3,5,7,8][\w]{9}$/
            //获取手机号
            var phone = $(this).val();
            if(phontPatter.test(phone)){
                $("#phoneMsg").attr("class","dui")
                $("#phoneMsg").text("手机号可用")
            }else {
                $("#phoneMsg").attr("class","cuo")
                $("#phoneMsg").text("手机号不可用")
            }

        })

        //验证银行卡号
        $("#bankId").change(function (){
            //正则
            var bankPatter=/^[4,6][\w]{4}$/
            //获取手机号
            var banKId = $(this).val();
            if(bankPatter.test(banKId)){
                $("#bankIdMsg").attr("class","dui")
                $("#bankId").text("银行卡号存在")
            }else {
                $("#bankIdMsg").attr("class","cuo")
                $("#bankId").text("银行卡号不存在")
            }

        })
        //阻止提交
        $('form').submit(function (){
            var flag=true

           //验证class属性有没有是cuo
            $("[name='msg']").each(function (){
                if($(this).attr("class")=="cuo"){
                    flag=false
                }
            })

            //验证标识符
            if (flag){
                return true
            }else {
                return false
            }

        })

        //注册失败提示信息
        if(${!empty error}){
            alert("注册失败")
        }

        //换图片
        $("#changeCode").click(function (){
            $("#code").attr("src","${pageContext.request.contextPath}/val/Code?"+Math.random())
        })

        //换图片2
        $("#code").click(function (){
            $("#code").attr("src","${pageContext.request.contextPath}/val/Code?"+Math.random())
        })

        //验证验证码
        $("#validate").change(function (){
            $.ajax({
                url: "${pageContext.request.contextPath}/val/checkValidate",
                data: {
                    code:$(this).val()
                },
                success:function (data){
                    if(data=="ok"){
                        $("#codeMsg").attr("class","dui")
                        $("#codeMsg").text("正确")
                    }else {
                        $("#codeMsg").attr("class","cuo")
                        $("#codeMsg").text("错误")
                    }
                }
            })
        })

    })
</script>

<body>

<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">


            <c:if test="${empty user}">
                Hi!您好，欢迎来到小杰购物，请登录 <a href="${pageContext.request.contextPath}/user/tologin">【登录】</a>
            </c:if>


        </p>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/user/toregister">免费注册</a><span>|</span>
            <a href="${pageContext.request.contextPath}/index/toindex">返回首页 </a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/docart">我的购物车</a><span>|</span>
            <a href="${pageContext.request.contextPath}/order/toMyOrder">我的订单</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>




    <!--内容开始-->
    <form action="${pageContext.request.contextPath}/user/doregister" method="post" onsubmit="return checkForm()">
    <div class="password-con registered">
        <div class="psw">
            <p class="psw-p1">用户名</p>
            <input type="text" placeholder="请输入用户名" name="username" id="userName" value="jack" required/>
            <span id="userNameMsg" class="" name="msg">用户名不能重复</span>
        </div>
        <div class="psw">
            <p class="psw-p1">输入密码</p>
            <input type="password" placeholder="请输入密码" name="password" id="password" required/>
            <input type="hidden" id="md5-password" >
            <span class="" id="passwordMsg" name="msg">密码由6-16的字母、数字、符号组成</span>
        </div>
        <div class="psw">
            <p class="psw-p1">确认密码</p>
            <input type="password" placeholder="请再次确认密码" name="rePassword" id="rePassword" required/>
            <input type="hidden" id="md5-repassword" >
            <span class="" id="rePasswordMsg" name="msg">密码不一致，请重新输入</span>
        </div>
        <div class="psw psw2">
            <p class="psw-p1">手机号/邮箱</p>
            <input type="text" placeholder="请输入手机/邮箱验证码" name="phone" id="phone" required/>
            <span class="" id="phoneMsg" name="msg">手机号为11位数字</span>
        </div>
        <div class="psw psw2">
            <p class="psw-p1">银行卡号</p>
            <input type="text" placeholder="请输入银行号码" name="bankId" id="bankId" required/>
            <input type="hidden" id="md5-bankId" >
            <span class="" id="bankIdMsg" name="msg">银行卡号为5位数字</span>
        </div>
        <div class="psw psw3">
            <p class="psw-p1">验证码</p>
            <input type="text" placeholder="请输入验证码" name="validate" id="validate"/>
            <span class="" id="codeMsg" name="msg">请输入验证码</span>
        </div>
        <div class="yanzhentu">
            <div class="yz-tu f-l">
                <img src="${pageContext.request.contextPath}/val/Code" id="code"/>
            </div>
            <p class="f-l">看不清？<a href="javaScript:;" id="changeCode">换张图</a></p>
            <div style="clear:both;"></div>
        </div>
        <div class="agreement">
            <input type="checkbox" name="hobby" id="hobby" required></input>
            <p>我有阅读并同意<span>《小杰购网站服务协议》</span></p>
        </div>
        <button class="psw-btn" id="register" >立即注册</button>
        <p class="sign-in">已有账号？请<a href="#">登录</a></p>
    </div>
    <script>
        function checkForm() {
            let password = document.getElementById('password');
            let md5_password = document.getElementById('md5-password');
            let repassword = document.getElementById('rePassword');
            let md5_repassword = document.getElementById('md5-repassword');
            let bankId = document.getElementById('bankId');
            let md5_bankId = document.getElementById('md5-bankId');
            // 把用户输入的明文变为MD5:
            md5_password.value = hex_md5(password.value);
            md5_repassword.value = hex_md5(repassword.value);
            md5_bankId.value = hex_md5(bankId.value);
            return true;
        }
    </script>
    </form>
    <script >
    /*
* A JavaScript implementation of the RSA Data Security, Inc. MD5 Message
* Digest Algorithm, as defined in RFC 1321.
* Version 2.1 Copyright (C) Paul Johnston 1999 - 2002.
* Other contributors: Greg Holt, Andrew Kepert, Ydnar, Lostinet
* Distributed under the BSD License
* See http://pajhome.org.uk/crypt/md5 for more info.
*/

    /*
     * Configurable variables. You may need to tweak these to be compatible with
     * the server-side, but the defaults work in most cases.
     */
    var hexcase = 0;  /* hex output format. 0 - lowercase; 1 - uppercase        */
    var b64pad  = ""; /* base-64 pad character. "=" for strict RFC compliance   */
    var chrsz   = 8;  /* bits per input character. 8 - ASCII; 16 - Unicode      */

    /*
     * These are the functions you'll usually want to call
     * They take string arguments and return either hex or base-64 encoded strings
     */
    function hex_md5(s){ return binl2hex(core_md5(str2binl(s), s.length * chrsz));}
    function b64_md5(s){ return binl2b64(core_md5(str2binl(s), s.length * chrsz));}
    function str_md5(s){ return binl2str(core_md5(str2binl(s), s.length * chrsz));}
    function hex_hmac_md5(key, data) { return binl2hex(core_hmac_md5(key, data)); }
    function b64_hmac_md5(key, data) { return binl2b64(core_hmac_md5(key, data)); }
    function str_hmac_md5(key, data) { return binl2str(core_hmac_md5(key, data)); }

    /*
     * Perform a simple self-test to see if the VM is working
     */
    function md5_vm_test()
    {
        return hex_md5("abc") == "900150983cd24fb0d6963f7d28e17f72";
    }

    /*
     * Calculate the MD5 of an array of little-endian words, and a bit length
     */
    function core_md5(x, len)
    {
        /* append padding */
        x[len >> 5] |= 0x80 << ((len) % 32);
        x[(((len + 64) >>> 9) << 4) + 14] = len;

        var a =  1732584193;
        var b = -271733879;
        var c = -1732584194;
        var d =  271733878;

        for(var i = 0; i < x.length; i += 16)
        {
            var olda = a;
            var oldb = b;
            var oldc = c;
            var oldd = d;

            a = md5_ff(a, b, c, d, x[i+ 0], 7 , -680876936);
            d = md5_ff(d, a, b, c, x[i+ 1], 12, -389564586);
            c = md5_ff(c, d, a, b, x[i+ 2], 17,  606105819);
            b = md5_ff(b, c, d, a, x[i+ 3], 22, -1044525330);
            a = md5_ff(a, b, c, d, x[i+ 4], 7 , -176418897);
            d = md5_ff(d, a, b, c, x[i+ 5], 12,  1200080426);
            c = md5_ff(c, d, a, b, x[i+ 6], 17, -1473231341);
            b = md5_ff(b, c, d, a, x[i+ 7], 22, -45705983);
            a = md5_ff(a, b, c, d, x[i+ 8], 7 ,  1770035416);
            d = md5_ff(d, a, b, c, x[i+ 9], 12, -1958414417);
            c = md5_ff(c, d, a, b, x[i+10], 17, -42063);
            b = md5_ff(b, c, d, a, x[i+11], 22, -1990404162);
            a = md5_ff(a, b, c, d, x[i+12], 7 ,  1804603682);
            d = md5_ff(d, a, b, c, x[i+13], 12, -40341101);
            c = md5_ff(c, d, a, b, x[i+14], 17, -1502002290);
            b = md5_ff(b, c, d, a, x[i+15], 22,  1236535329);

            a = md5_gg(a, b, c, d, x[i+ 1], 5 , -165796510);
            d = md5_gg(d, a, b, c, x[i+ 6], 9 , -1069501632);
            c = md5_gg(c, d, a, b, x[i+11], 14,  643717713);
            b = md5_gg(b, c, d, a, x[i+ 0], 20, -373897302);
            a = md5_gg(a, b, c, d, x[i+ 5], 5 , -701558691);
            d = md5_gg(d, a, b, c, x[i+10], 9 ,  38016083);
            c = md5_gg(c, d, a, b, x[i+15], 14, -660478335);
            b = md5_gg(b, c, d, a, x[i+ 4], 20, -405537848);
            a = md5_gg(a, b, c, d, x[i+ 9], 5 ,  568446438);
            d = md5_gg(d, a, b, c, x[i+14], 9 , -1019803690);
            c = md5_gg(c, d, a, b, x[i+ 3], 14, -187363961);
            b = md5_gg(b, c, d, a, x[i+ 8], 20,  1163531501);
            a = md5_gg(a, b, c, d, x[i+13], 5 , -1444681467);
            d = md5_gg(d, a, b, c, x[i+ 2], 9 , -51403784);
            c = md5_gg(c, d, a, b, x[i+ 7], 14,  1735328473);
            b = md5_gg(b, c, d, a, x[i+12], 20, -1926607734);

            a = md5_hh(a, b, c, d, x[i+ 5], 4 , -378558);
            d = md5_hh(d, a, b, c, x[i+ 8], 11, -2022574463);
            c = md5_hh(c, d, a, b, x[i+11], 16,  1839030562);
            b = md5_hh(b, c, d, a, x[i+14], 23, -35309556);
            a = md5_hh(a, b, c, d, x[i+ 1], 4 , -1530992060);
            d = md5_hh(d, a, b, c, x[i+ 4], 11,  1272893353);
            c = md5_hh(c, d, a, b, x[i+ 7], 16, -155497632);
            b = md5_hh(b, c, d, a, x[i+10], 23, -1094730640);
            a = md5_hh(a, b, c, d, x[i+13], 4 ,  681279174);
            d = md5_hh(d, a, b, c, x[i+ 0], 11, -358537222);
            c = md5_hh(c, d, a, b, x[i+ 3], 16, -722521979);
            b = md5_hh(b, c, d, a, x[i+ 6], 23,  76029189);
            a = md5_hh(a, b, c, d, x[i+ 9], 4 , -640364487);
            d = md5_hh(d, a, b, c, x[i+12], 11, -421815835);
            c = md5_hh(c, d, a, b, x[i+15], 16,  530742520);
            b = md5_hh(b, c, d, a, x[i+ 2], 23, -995338651);

            a = md5_ii(a, b, c, d, x[i+ 0], 6 , -198630844);
            d = md5_ii(d, a, b, c, x[i+ 7], 10,  1126891415);
            c = md5_ii(c, d, a, b, x[i+14], 15, -1416354905);
            b = md5_ii(b, c, d, a, x[i+ 5], 21, -57434055);
            a = md5_ii(a, b, c, d, x[i+12], 6 ,  1700485571);
            d = md5_ii(d, a, b, c, x[i+ 3], 10, -1894986606);
            c = md5_ii(c, d, a, b, x[i+10], 15, -1051523);
            b = md5_ii(b, c, d, a, x[i+ 1], 21, -2054922799);
            a = md5_ii(a, b, c, d, x[i+ 8], 6 ,  1873313359);
            d = md5_ii(d, a, b, c, x[i+15], 10, -30611744);
            c = md5_ii(c, d, a, b, x[i+ 6], 15, -1560198380);
            b = md5_ii(b, c, d, a, x[i+13], 21,  1309151649);
            a = md5_ii(a, b, c, d, x[i+ 4], 6 , -145523070);
            d = md5_ii(d, a, b, c, x[i+11], 10, -1120210379);
            c = md5_ii(c, d, a, b, x[i+ 2], 15,  718787259);
            b = md5_ii(b, c, d, a, x[i+ 9], 21, -343485551);

            a = safe_add(a, olda);
            b = safe_add(b, oldb);
            c = safe_add(c, oldc);
            d = safe_add(d, oldd);
        }
        return Array(a, b, c, d);

    }

    /*
     * These functions implement the four basic operations the algorithm uses.
     */
    function md5_cmn(q, a, b, x, s, t)
    {
        return safe_add(bit_rol(safe_add(safe_add(a, q), safe_add(x, t)), s),b);
    }
    function md5_ff(a, b, c, d, x, s, t)
    {
        return md5_cmn((b & c) | ((~b) & d), a, b, x, s, t);
    }
    function md5_gg(a, b, c, d, x, s, t)
    {
        return md5_cmn((b & d) | (c & (~d)), a, b, x, s, t);
    }
    function md5_hh(a, b, c, d, x, s, t)
    {
        return md5_cmn(b ^ c ^ d, a, b, x, s, t);
    }
    function md5_ii(a, b, c, d, x, s, t)
    {
        return md5_cmn(c ^ (b | (~d)), a, b, x, s, t);
    }

    /*
     * Calculate the HMAC-MD5, of a key and some data
     */
    function core_hmac_md5(key, data)
    {
        var bkey = str2binl(key);
        if(bkey.length > 16) bkey = core_md5(bkey, key.length * chrsz);

        var ipad = Array(16), opad = Array(16);
        for(var i = 0; i < 16; i++)
        {
            ipad[i] = bkey[i] ^ 0x36363636;
            opad[i] = bkey[i] ^ 0x5C5C5C5C;
        }

        var hash = core_md5(ipad.concat(str2binl(data)), 512 + data.length * chrsz);
        return core_md5(opad.concat(hash), 512 + 128);
    }

    /*
     * Add integers, wrapping at 2^32. This uses 16-bit operations internally
     * to work around bugs in some JS interpreters.
     */
    function safe_add(x, y)
    {
        var lsw = (x & 0xFFFF) + (y & 0xFFFF);
        var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
        return (msw << 16) | (lsw & 0xFFFF);
    }

    /*
     * Bitwise rotate a 32-bit number to the left.
     */
    function bit_rol(num, cnt)
    {
        return (num << cnt) | (num >>> (32 - cnt));
    }

    /*
     * Convert a string to an array of little-endian words
     * If chrsz is ASCII, characters >255 have their hi-byte silently ignored.
     */
    function str2binl(str)
    {
        var bin = Array();
        var mask = (1 << chrsz) - 1;
        for(var i = 0; i < str.length * chrsz; i += chrsz)
            bin[i>>5] |= (str.charCodeAt(i / chrsz) & mask) << (i%32);
        return bin;
    }

    /*
     * Convert an array of little-endian words to a string
     */
    function binl2str(bin)
    {
        var str = "";
        var mask = (1 << chrsz) - 1;
        for(var i = 0; i < bin.length * 32; i += chrsz)
            str += String.fromCharCode((bin[i>>5] >>> (i % 32)) & mask);
        return str;
    }

    /*
     * Convert an array of little-endian words to a hex string.
     */
    function binl2hex(binarray)
    {
        var hex_tab = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
        var str = "";
        for(var i = 0; i < binarray.length * 4; i++)
        {
            str += hex_tab.charAt((binarray[i>>2] >> ((i%4)*8+4)) & 0xF) +
                hex_tab.charAt((binarray[i>>2] >> ((i%4)*8  )) & 0xF);
        }
        return str;
    }

    /*
     * Convert an array of little-endian words to a base-64 string
     */
    function binl2b64(binarray)
    {
        var tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        var str = "";
        for(var i = 0; i < binarray.length * 4; i += 3)
        {
            var triplet = (((binarray[i   >> 2] >> 8 * ( i   %4)) & 0xFF) << 16)
                | (((binarray[i+1 >> 2] >> 8 * ((i+1)%4)) & 0xFF) << 8 )
                |  ((binarray[i+2 >> 2] >> 8 * ((i+2)%4)) & 0xFF);
            for(var j = 0; j < 4; j++)
            {
                if(i * 8 + j * 6 > binarray.length * 32) str += b64pad;
                else str += tab.charAt((triplet >> 6*(3-j)) & 0x3F);
            }
        }
        return str;
    }
</script>
<!--底部一块-->
<%@ include file="common/bottom.jsp" %>
    
</body>
</html>
