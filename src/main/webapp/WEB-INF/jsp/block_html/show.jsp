<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/my.css" rel="stylesheet">
    <!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <link href="/css/global.css" rel="stylesheet" type="text/css">
    <link href="/css/index.css" rel="stylesheet" type="text/css">
    <link href="/css/developer.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="/js/pub_js.js"></script>
</head>
<body class="index">
<div class="app">
    <div class="app-header">
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
                        <a class="nav-title nav-title-link" href="">登录<span class="icon-ins"></span></a>
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
        <!-- 公共头部 ]] -->
    </div>
    <div class="app-content">
        <!-- 头图 [[ -->
        <div class="img-wrap" style="margin-top: 45px ; margin-left: 108px">
            <div class="col-md-10 column">
                <h2>
                    区块信息
                </h2>
                <br>
                <table class="table table-bordered">
                    <tr>
                        <th>
                            <span>区块ID：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="id" value="${block.blockId}">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>上一个区块ID：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="id" value="${block.preBlockId}">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>Merkle Tree 树根哈希值：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="id" value="${block.treeHash}">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>时间戳：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="id" value="${block.timestamp}">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>交易单数量：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="id" value="${block.txCount}">
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <span>交易单ID</span>
                        </th>
                    </tr>

                    <c:set var="index" value="1"/>
                    <c:forEach items="${block.txIdList}" var="txId">
                        <tr>
                            <th>
                                <span style="font-size: 13px; color: #F00056">交易单${index}：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="id" value="${txId}">
                            </td>
                            <c:set var="index" value="${index + 1}"/>
                        </tr>
                    </c:forEach>

                    <tr>
                        <th>
                            <span>公钥：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="patientId" value="${block.pubKey}">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <span>数字签名：</span>
                        </th>
                        <td>
                            <input type="text" class="form-control" name="diagnosisDate" value="${block.signature}">
                        </td>
                    </tr>

                </table>

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



