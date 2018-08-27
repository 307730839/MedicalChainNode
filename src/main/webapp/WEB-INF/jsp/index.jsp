<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>传染病区块链数据平台</title>
        <link href="css/global.css" rel="stylesheet" type="text/css">
        <link href="css/index.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/pub_js.js"></script>
</head>
<body class="tech">

<div class="mod-header ext-header-ftop">
    <div class="header-main">
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

        <!-- 头图 [[ -->
 <div class="index-banner" >
     <li>
         <div class="banner_text_w3layouts" style="margin-left: 150px;margin-right: 150px ;margin-top: 145px ;">
             <p >传染病防控领域与人类健康息息相关，对数据利用的时效有较高的要求，同时需要不同城市的部门和实验室之间实现数据共享和交互，以及标准化的数据分析流程，区块链打通这些环节提供了可能性。</p>
         </div>
     </li>
 </div>

<div class="app-footer">
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
        <!-- 公共页脚 ]] -->
    </div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- 包括所有已编译的插件 -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
