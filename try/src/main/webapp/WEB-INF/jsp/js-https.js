// <script src="https://cdn.jsdelivr.net/npm/js-https@1.1.0/dist/js-https.min.js">
//
// </script>
// <script>
//     // a 2048-bit RSA public key
//     // header and footer are optional
//     // '\n' at the end of each line are also optional
//     const publicKey = "-----BEGIN PUBLIC KEY-----" +
//     "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2HrBycYe4BbgrxhnF/Au" +
//     "/FkK6OFdY9xwFmxLuS0FNu+51Xzz5cGFw8AbVR41dPYwMK3kDwM2+dEioNxIkE/r" +
//     "lyKUkd0lExjg1o08e02y/ytquAWpPyVrLlrN5AvHbLVezjqe9rNhTrXuvu9dI+RS" +
//     "J98vvitls106Ke6rVSdIzOv9Sp50ZHVC7wURS2UkLHhWFE4iBjGGY/41aKbjug4t" +
//     "GrAElilG5XiFjYk7wohlBaOQprB2W/qYbEgOcKElbOWXiqq7Kh0iSQyuo56PZNQf" +
//     "3svrfh+lgbNNz5onRaoTtK1UTvu7G+lF/CytjxloXp/xSQXEkStw/Ionq0HYM7MF" +
//     "LQIDAQAB" +
//     "-----END PUBLIC KEY-----";
//
//     function safeRequest(){
//     // a JsHttps object should be dedicated to each request
//     const jsHttps=new JsHttps();
//
//     var username = document.getElementById("name").value;
//     var psw = document.getElementById("psw").value;
//     const myRequestData={
//     username:username,
//     password:psw
// };
//
//     // ajax to any HTTP url
//     axios.post("${pageContext.request.contextPath}/user/dologin",
//     jsHttps.encryptRequestData(myRequestData,publicKey)
//     ).then(
//     // say that server responds with cipher string in response body directly
//     res=>{
//     console.log(jsHttps.decryptResponseData(res.data));
// });
// }
// </script>