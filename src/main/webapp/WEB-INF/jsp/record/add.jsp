<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: chao
  Date: 2018/5/25
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
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
        <div class="img-wrap" style="margin-top: 45px ">
            <div class="col-md-10 column" style="margin-left: 108px ">
                <h2>
                    添加传染病信息
                </h2>
                <br>
                <form action="${pageContext.request.contextPath}/record/save" method="post">
                    <table class="table table-bordered">
                        <tr>
                            <th>
                                <span>StrainName：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="strainName">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>VirusSpecies:</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="virusSpecies">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>GenBankAccession:</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="genbankAccession">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>SequenceLength：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="sequenceLength">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>CollectionDate：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="collectionDate">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>Host：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="host">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>GenBankHost：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="genbankHost">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>Country：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="country">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>MolType：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="molType">
                            </td>
                        </tr>
                    </table>
                    <button type="submit" class="btn btn-primary btn-lg">提交</button>
                </form>
                <c:if test = "${txId != null}">
                    <span>提交成功，生成交易单 ID 为：<span style="color: #F00056">${txId}</span></span>
                </c:if>

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
