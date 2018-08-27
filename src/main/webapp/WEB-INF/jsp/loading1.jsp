<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>传染病区块链数据平台</title>
        <link href="css/global.css" rel="stylesheet" type="text/css">
        <link href="css/index.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/loading.css" rel="stylesheet" type="text/css">

        <link href="css/swiper.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/pub_js.js"></script>
</head>
<body class="developer">
      <div class="nav-developer-wrap mod-header-wrap">
          <div class="mod-header new-global-header">
              <div class="header-wrap clearfix">

                  <h1 class="mod-logo ext-logo-chain new-logo-header" style="width:300px">
                      <a class="nav-title nav-title-link" style="font-size:25px">传染病区块链数据平台<span class="icon-ins" ></span></a>
                  </h1>
                  <ul class="mod-nav ext-nav-table new-nav-header">
                      <li class="nav-item nav-item-home">
                          <a class="nav-title nav-title-link" href="${pageContext.request.contextPath}/">首页<span class="icon-ins"></span></a>
                      </li>
                      <li class="nav-item nav-item-open">
                          <a class="nav-title nav-title-link" href="${pageContext.request.contextPath}/loading">登录<span class="icon-ins"></span></a>
                      </li>
                      <li class="nav-item nav-item-scheme">
                          <a class="nav-title nav-title-link" href="${pageContext.request.contextPath}/record/add">添加传染病<span class="icon-ins"></span></a>
                      </li>
                      <li class="nav-item nav-item-scheme">
                          <a class="nav-title nav-title-link" href="${pageContext.request.contextPath}/tx/index">查询传染病<span class="icon-ins"></span></a>
                      </li>
                  </ul>
              </div>
          </div>

      </div>
      <div class="swiper-container swiper-container-horizontal swiper-container-fade" style="background-image: url(/picture/s1.jpg)">
          <div class="btn-line">
        <div >欢迎登陆BaaS开放平台</div>

            <div class="container">
                <form action="https://baas.trustsql.qq.com/web/trust_blockchain/developer/developer_login.shtml?target=https%3A%2F%2Fbaas.trustsql.qq.com%2Fweb%2Ftrust_blockchain%2Fservice%2Fservice.shtml" class="developer-login">
                    <div class="form-header">
                        <p class="">登录</p>
                    </div>
                    <div class="form-content">
                        <div class="mod-input">
                            <label  class="mod-input-label">登录邮箱</label>
                            <input type="text" placeholder="请输入登录邮箱" name="uname" id="uname" data-xss="1" require="" data-empty="请输入登录邮箱" value="">
                        </div>
                        <div class="mod-input">
                            <label  class="mod-input-label">密码</label>
                            <input type="password" placeholder="请输入密码" name="pwd" id="pwd" require="" data-empty="请输入密码" value="">
                            <p class="form-error hide" id="error_tip">用户名或密码无效</p>
                            <a href="https://baas.trustsql.qq.com/web/trust_blockchain/developer/iforgot.shtml" class="forgot-link">忘记密码</a>
                        </div>
                        <div class="form-btn">
                            <button class="mod-btn" type="submit" id="login_btn">登录</button>
                            <a href="https://baas.trustsql.qq.com/web/trust_blockchain/developer/developer_info.shtml" class="mod-btn ext-btn-white">注册</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
      </div>





        <!-- 公共页脚 [[ -->
        <div class="mod-footer">
            <div class="footer-wrap clearfix">
                <div class="footer-l">
                    <div class="about">
                        <div class="about-tt">传染病区块链数据平台</div>
                        <div class="help-contact clearfix">
                            <div class="help-support">
                                <div><a href="${pageContext.request.contextPath}/block/blockchain">区块链</a></div>
                                <div><a href="${pageContext.request.contextPath}/block/index">区块</a></div>
                            </div>
                            <div class="contact-us">
                                <div><a href="${pageContext.request.contextPath}/tx/index_id">交易单</a></div>
                                <div><a href="${pageContext.request.contextPath}/node/show">节点</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
