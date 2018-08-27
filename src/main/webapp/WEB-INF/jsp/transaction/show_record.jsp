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
        <div class="img-wrap" style="margin-top: 45px ; margin-left: 108px">

            <div class="col-md-10 column">
                <h2>
                    传染病信息
                </h2>
                <br>
                <form id="tx_form" action="${pageContext.request.contextPath}/tx/update" method="post">
                    <table class="table table-bordered">
                        <tr>
                            <th>
                                <c:if test="${delTxId != null}">
                                    <span class="label label-danger">已删除</span>
                                </c:if>
                                <span>交易单ID：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="txId" value="${tx.txId}"
                                       readonly="readonly">
                            </td>
                        </tr>
                        <c:if test="${delTxId != null}">
                            <tr>
                                <th>
                                    <span>删除交易单ID:</span>
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="delTxId" value="${delTxId}"
                                           readonly="readonly">
                                </td>
                            </tr>
                        </c:if>
                        <tr>
                            <th>
                                <span>所在区块ID：</span>
                            </th>
                            <td>
                                <a href="${pageContext.request.contextPath}/block/search?blockId=${blockId}">
                                    <input type="text" class="form-control" name="blockId" value="${blockId}"
                                           readonly="readonly">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>数字签名：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="signature" value="${tx.signature}"
                                       readonly="readonly">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>交易单类型：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="txType" value="${tx.txType}"
                                       readonly="readonly">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>公钥：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="pubKey" value="${tx.pubKey}"
                                       readonly="readonly">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>时间戳：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="timestamp" value="${tx.timestamp}"
                                       readonly="readonly">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>StrainName：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="strainName" value="${tx.content.strainName}">
                                <c:if test="${oldTx!=null and tx.content.strainName != oldTx.content.strainName}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span> <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>VirusSpecies：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="virusSpecies"
                                       value="${tx.content.virusSpecies}">
                                <c:if test="${oldTx!=null and tx.content.virusSpecies != oldTx.content.virusSpecies}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span> <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>GenBankAccession：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="genbankAccession"
                                       value="${tx.content.genbankAccession}">
                                <c:if test="${oldTx!=null and tx.content.genbankAccession != oldTx.content.genbankAccession}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span> <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>SequenceLength：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="sequenceLength"
                                       value="${tx.content.sequenceLength}">
                                <c:if test="${oldTx!=null and tx.content.sequenceLength != oldTx.content.sequenceLength}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span> <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>collectionDate：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="collectionDate"
                                       value="${tx.content.collectionDate}">
                                <c:if test="${oldTx!=null and tx.content.collectionDate != oldTx.content.collectionDate}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span> <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>Host：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="host"
                                       value="${tx.content.host}">
                                <c:if test="${oldTx!=null and tx.content.host != oldTx.content.host}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span>
                                    <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>GenBankHost：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="genbankHost"
                                       value="${tx.content.genbankHost}">
                                <c:if test="${oldTx!=null and tx.content.genbankHost != oldTx.content.genbankHost}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span>
                                    <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>Country：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="country"
                                       value="${tx.content.country}">
                                <c:if test="${oldTx!=null and tx.content.country != oldTx.content.country}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span>
                                    <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <span>MolType：</span>
                            </th>
                            <td>
                                <input type="text" class="form-control" name="molType"
                                       value="${tx.content.molType}">
                                <c:if test="${oldTx!=null and tx.content.molType != oldTx.content.molType}">
                                    <span class="label label-warning">已修改</span>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${oldTx.txId}">
                                            原交易为:${oldTx.txId}</a></span>
                                    <br>
                                    <span><a href="${pageContext.request.contextPath}/tx/search?txId=${updateTx.txId}">
                                            update 交易单为：${updateTx.txId}</a></span>
                                </c:if>
                            </td>
                        </tr>

                    </table>
                </form>
                <form id="tx_id_form" action="${pageContext.request.contextPath}/tx/delete" method="post">
                    <input type="hidden" class="form-control" name="txId" value="${tx.txId}">
                </form>
                <div style="text-align: center">
                    <button type="submit" form="tx_form" class="btn btn-primary btn-lg">修改</button>
                    &nbsp;
                    <button type="submit" form="tx_id_form" class="btn btn-primary btn-lg btn-danger">删除</button>
                </div>

            </div>




        </div>
    </div>


</div>

</body>
</html>
