<%--
  Created by IntelliJ IDEA.
  User: sky
  Date: 2018/8/23
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!-- saved from url=(0174)https://baas.trustsql.qq.com/web/trust_blockchain/developer/developer_login.shtml?target=https%3A%2F%2Fbaas.trustsql.qq.com%2Fweb%2Ftrust_blockchain%2Fservice%2Fservice.shtml -->
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><link rel="stylesheet" type="text/css" href="./腾讯区块链登录_files/loading.css"><link rel="stylesheet" type="text/css" href="./腾讯区块链登录_files/box.css">

    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta http-equiv="pragma" content="no-cache">
    <meta content="" name="pgv">
    <script type="text/javascript">
        var _speedMark = new Date();
    </script>
    <title>腾讯区块链</title>
    <!-- 对比到主干时，href路径要替换成绝对路径，域名为https://mqq-imgcache.gtimg.cn -->
    <link href="./腾讯区块链登录_files/global.css" rel="stylesheet" type="text/css">

    <!-- 对比到主干时，href路径要替换成绝对路径，域名为https://mqq-imgcache.gtimg.cn -->
    <link href="./腾讯区块链登录_files/developer.css" rel="stylesheet" type="text/css">

    <!-- 对比到主干时，href路径要替换成绝对路径，域名为https://mqq-imgcache.gtimg.cn -->
    <link href="./腾讯区块链登录_files/swiper.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        //如果直接通过域名访问，则直接跳转到默认的首页 （暂时通过前端来解决该问题）
        var  pathName =  location.pathname;
        //如果直接通过域名访问，path为/，此时需要补全路径，避免左侧菜单链接出现404
        if("/" == pathName ){
            location.href = "https://baas.trustsql.qq.com/web/trust_blockchain/service/service.shtml";
        }


        function ISLogin (data) {
            var retcode = parseInt(data.retcode, 10),
                DUrl = '//baas.trustsql.qq.com/web/trust_blockchain/developer/developer_login.shtml',
                JUrl;

            try {
                var JUrl = DUrl + '?target=' + encodeURIComponent(top.document.URL);
            } catch(e) {
                var JUrl = DUrl;
            }


            var path = document.location.pathname;
            var isLoginPage = false;
            if(path.indexOf("/developer_login.shtml") > -1){
                isLoginPage = true;
            }


            if ((retcode == 83153002 || retcode == 51000013 ) && !isLoginPage) {
                //没有登录，统一跳转到登录页面
                //如果是登录页，则不需要再跳转，避免进入循环
                window.location.href = JUrl;
            }

            //如登录，并且是登录首页，则自动跳转到登录后的首页
            // if (retcode == 0 && isLoginPage) {
            //     window.location.href = "//baas.trustsql.qq.com/web/trust_blockchain/service/service.shtml";
            // }
        }
        document.write('<' + 'scr' + 'ipt t' + 'ype="text/javascript" src="' + '//baas.trustsql.qq.com/cgi-bin/v1.0/trustsql_baas_query_login_status.cgi?JsonObj=ISLogin&r=' + Math.random() + '"><' + '/sc' + 'ript>');
    </script><script type="text/javascript" src="./腾讯区块链登录_files/trustsql_baas_query_login_status.cgi"></script>
    <script></script></head><style type="text/css" id="418113205292"></style>

<body class="developer">
<div class="nav-developer-wrap mod-header-wrap">
    <div class="mod-header new-global-header">
        <div class="header-wrap clearfix">
            <a href="https://trustsql.qq.com/" class="logo-area">
                <span class="logo">TrustSQL</span>
            </a>
            <ul class="topnav">
                <li class="nav-index"><a class="nav-title" href="https://trustsql.qq.com/">首页</a>
                </li>
                <li class="nav-drop">
                    <span class="icon-triangle"><!-- 三角图标 --></span>
                    <span class="nav-title" style="background: #1e2535;color: #fff;">开放平台</span>
                    <div class="drop-wrap">
                        <a href="https://baas.trustsql.qq.com/web/trust_blockchain/developer/developer_login.shtml">BaaS开放平台</a>
                        <a href="https://baas.trustsql.qq.com/web/trust_blockchain/doc/v1.0/index.shtml">开发文档</a>
                        <a href="https://baas.trustsql.qq.com/web/baas_test_static/index.html" target="_Blank">在线测试</a>
                    </div>
                </li>
                <li class="nav-scheme"><a class="nav-title" href="https://trustsql.qq.com/chain_oss/scheme.html">方案</a>
                </li>
                <li class="nav-tech"><a class="nav-title" href="https://trustsql.qq.com/chain_oss/tech.html">技术</a>
                </li>
                <li class="nav-demo"><a class="nav-title" href="https://trustsql.qq.com/chain_oss/index_kx.html">演示</a>
                </li>
            </ul>
        </div>
    </div>

</div>
<!-- Swiper 轮播图 [[ -->
<div class="swiper-container swiper-container-horizontal swiper-container-fade">
    <div class="swiper-wrapper">
        <div class="swiper-slide swiper-slide-active" style="background-image: url(&quot;https://mqq-imgcache.gtimg.cn/res/web/open_blockchain/img/developer/banner.jpg?t=20171109&quot;); width: 2400px; opacity: 1; transform: translate3d(0px, 0px, 0px);"></div>
    </div>
    <!-- Add Pagination -->
    <!-- Add Arrows -->
    <!-- <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div> -->
    <div class="banner-cont" style="margin-left: -590px;top:300px;font-family: Microsoft YaHei;">
        <div class="banner-title" style="font-family: Microsoft YaHei;">欢迎登陆BaaS开放平台</div>
    </div>
    <div class="container">
        <form action="https://baas.trustsql.qq.com/web/trust_blockchain/developer/developer_login.shtml?target=https%3A%2F%2Fbaas.trustsql.qq.com%2Fweb%2Ftrust_blockchain%2Fservice%2Fservice.shtml" class="developer-login">
            <div class="form-header">
                <p class="">登录</p>
            </div>
            <div class="form-content">
                <div class="mod-input">
                    <label for="" class="mod-input-label">登录邮箱</label>
                    <input type="text" placeholder="请输入登录邮箱" name="uname" id="uname" data-xss="1" require="" data-empty="请输入登录邮箱" value="">
                </div>
                <div class="mod-input">
                    <label for="" class="mod-input-label">密码</label>
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
<!-- Swiper 轮播图 ]] -->
<div class="mod-footer">
    <div class="footer-wrap clearfix">
        <div class="footer-l">
            <div class="about">
                <div class="about-tt">TrustSQL 腾讯区块链</div>
                <div class="help-contact clearfix">
                    <div class="help-support">
                        <div><a href="https://trustsql.qq.com/chain_oss/Q&amp;A.html">Q&amp;A</a></div>
                        <div><a href="https://trustsql.qq.com/chain_oss/developer_installation_guide.html">开发指南</a></div>
                        <div><a href="https://baas.trustsql.qq.com/web/trust_blockchain/nodeguide/concept.shtml?relate_id=concept">节点部署指南</a></div>
                    </div>
                    <div class="contact-us">
                        <div class="cont-tt">联系我们</div>
                        <div><a href="mailto:trustsql@tencent.com">Email:trustsql@tencent.com</a></div>
                    </div>
                </div>
            </div>
            <div class="copyright-wrap">
                <div class="line">
                    <span class="logo-tencent">Tencent</span>
                    <a href="http://open.qq.com/">腾讯开放平台</a>
                    <a href="https://www.tenpay.com/v3/">财付通</a>
                    <a href="https://www.qcloud.com/">腾讯云</a>
                    <a href="https://open.weixin.qq.com/">微信开放平台</a>
                </div>
                <div class="copyright">Copyright @2016-2017 Trustsql.com 腾讯区块链版权所有</div>
            </div>
        </div>
        <div class="footer-r">
            <img class="qr-img" src="./腾讯区块链登录_files/qr_img.jpg" alt="">
            <div class="qr-title">请扫码关注<br>了解最新动态</div>
        </div>
    </div>
</div>

<script type="text/javascript" id="dustnode" src="./腾讯区块链登录_files/dust-min.js"></script>
<script type="text/javascript">
    dust.config({
        base:"https://mqq-imgcache.gtimg.cn/res/",
        cwd:"https://mqq-imgcache.gtimg.cn/",
        compressApi:"https://mqq-imgcache.gtimg.cn/c/="
        //crossorigin : true
    });
    dust.config({debug:false})
    /*
    dust.config({
        base:"http://sandbox.wxy.qq.com/res/",
        cwd:"http://sandbox.wxy.qq.com/",
        compressApi:"http://sandbox.wxy.qq.com/c/="
    });
    */
</script>


<script type="text/javascript">
    <!--[VERSION-START]-->
    dust.config({onlineVersion:{"/res/g/js/lib/jquery/jquery.js":8354483592,"/res/web/open_blockchain/js/mod/json/json.js":10278579847,"/res/g/js/mod/global.js":9756929515,"/res/g/js/mod/stat.js":1580703633,"/res/web/open_blockchain/js/global.js":631503642,"/res/web/open_blockchain/js/mod/box/box.js":8858591638,"/res/web/open_blockchain/js/mod/loading/loading.js":10067312165,"/res/g/js/mod/get.js":1715046772,"/res/g/js/mod/wx_ready.js":2171679434,"/res/web/open_blockchain/js/mod/template/template.js":2088276920,"/res/web/open_blockchain/js/app.js":4236962420,"/res/web/open_blockchain/js/iframe/product/product_suc.js":1860535383,"/res/g/js/mod/md5.js":5948427137,"/res/web/open_blockchain/js/mod/ajax/majax.js":2976011326,"/res/web/open_blockchain/js/global/formCheck.js":5744247000,"/res/web/open_blockchain/js/global/regexp.js":12472690225,"/res/web/open_blockchain/js/developer/developer_login.js":6766705849,"/res/web/open_blockchain/js/developer/resetpwd.js":5181371205,"/res/web/open_blockchain/js/global/emailUrl.js":3631546338,"/res/web/open_blockchain/js/global/tips.js":13497058336,"/res/web/open_blockchain/js/developer/iforgot.js":22862313899,"/res/g/js/mod/form.js":1565348875,"/res/web/open_blockchain/js/global/form_handle.js":1939698830,"/res/web/open_blockchain/js/global/produceConfig.js":961032757,"/res/web/open_blockchain/js/iframe/product/open_product.js":7100868686,"/res/web/open_blockchain/js/global/renderSidler.js":4581052007,"/res/web/open_blockchain/js/global/user.js":1944561936,"/res/web/open_blockchain/js/developer/developer_info.js":5060013494,"/res/web/open_blockchain/js/product/product_share.js":2094093597,"/res/web/open_blockchain/js/product/product.js":3143211313,"/res/web/open_blockchain/js/mod/file_upload/file_upload.js":2787216274,"/res/web/open_blockchain/js/global/verifyCode.js":479854226,"/res/web/open_blockchain/js/global/select.js":1125446313,"/res/web/open_blockchain/js/developer/developer_enterprise.js":2513121197,"/res/web/open_blockchain/js/account/Setting.js":760742683,"/res/web/open_blockchain/js/sharebook/share.js":13700259336,"/res/web/open_blockchain/js/sharebook/baseconfig.js":231730764,"/res/g/js/mod/amount.js":6573920211,"/res/web/open_blockchain/js/mod/clipboard/clipboard.js":8346140172,"/res/g/js/mod/string.js":1857940439,"/res/web/open_blockchain/js/mod/clipboard/ClipboardAction.js":2320786727,"/res/web/open_blockchain/js/mod/clipboard/E.js":3120114882,"/res/web/open_blockchain/js/mod/clipboard/listen.js":16541484967,"/res/web/open_blockchain/js/mod/clipboard/select.js":1588412001,"/res/web/open_blockchain/js/mod/clipboard/is.js":11600603775,"/res/web/open_blockchain/js/mod/clipboard/delegate.js":995945751,"/res/web/open_blockchain/js/mod/clipboard/closest.js":7832898136,"/res/web/open_blockchain/js/mod/JTopo/jtopo-0.4.8-min.js":1567227904,"/res/web/open_blockchain/js/sharebook/baseInfo.js":12188238126,"/res/web/open_blockchain/js/mod/JTopo/playJTop.js":1447561227,"/res/web/open_blockchain/js/global/table.js":3780447259,"/res/web/open_blockchain/js/sharebook/record.js":7593299043,"/res/web/open_blockchain/js/mod/datetimepicker/datetimepicker.js":6163854479,"/res/web/open_blockchain/js/sharebook/record_detail.js":1733187618,"/res/g/js/mod/date.js":4655329752,"/res/g/js/mod/bytes2size.js":7288800096,"/res/web/open_blockchain/js/account/statistics.js":870370468,"/res/web/open_blockchain/js/notice/index.js":10367022674,"/res/web/open_blockchain/js/iframe/ledger/mch.js":11121023106,"/res/web/open_blockchain/js/iframe/chain/chain.js":5713827668,"/res/web/open_blockchain/js/global/config.js":11140776438,"/res/web/open_blockchain/js/iframe/ledger/ledger.js":6544197536,"/res/web/open_blockchain/js/iframe/chain/node.js":4367341836,"/res/web/open_blockchain/js/iframe/chain/ledger.js":4159833998,"/res/web/open_blockchain/js/service/service.js":4137293491,"/res/web/open_blockchain/js/chain/chain.js":4969425142,"/res/web/open_blockchain/js/testchain/baseinfo.js":7538795261,"/res/web/open_blockchain/js/datetimepicker/datetimepicker.js":12932834162,"/res/web/open_blockchain/js/ledger/ledger.js":259998023,"/res/web/open_blockchain/js/testchain/ledger.js":2547148657,"/res/web/open_blockchain/js/iframe/chain/updatenode.js":4445972825,"/res/g/js/mod/doT.js":3537255600,"/res/web/open_blockchain/js/global/util.js":13456087101,"/res/web/open_blockchain/js/global/speed.js":1183792873,"/res/g/js/mod/speed/speed.js":10570245402,"/res/g/js/mod/speed/get_network.js":9285261813,"/res/g/js/mobile/weixin/jweixin-1.2.0.js":11810065466}});
    dust.config({"cacheFlag":true,"compressFlag":true,"base":"https://mqq-imgcache.gtimg.cn/res/","cwd":"https://mqq-imgcache.gtimg.cn/","compressApi":"https://mqq-imgcache.gtimg.cn/c/=","debug":false,"splitFlag":false});
    dust.config({relation:{"/res/web/open_blockchain/js/app.js":["/res/g/js/lib/jquery/jquery.js","/res/web/open_blockchain/js/mod/json/json.js","/res/g/js/mod/global.js","/res/web/open_blockchain/js/global.js","/res/web/open_blockchain/js/mod/box/box.js","/res/web/open_blockchain/js/mod/loading/loading.js","/res/web/open_blockchain/js/global/speed.js","/res/web/open_blockchain/js/mod/template/template.js","/res/web/open_blockchain/js/mod/box/box.js","/res/g/js/mod/speed/speed.js","/res/g/js/mod/wx_ready.js"],"/res/web/open_blockchain/js/developer/developer_login.js":["/res/g/js/mod/md5.js","/res/web/open_blockchain/js/mod/ajax/majax.js","/res/web/open_blockchain/js/global/formCheck.js","/res/web/open_blockchain/js/global/regexp.js"],"/res/g/js/mod/speed/get_network.js":[],"/res/g/js/mobile/weixin/jweixin-1.2.0.js":[]}});
    <!--[VERSION-END]-->

    <!--[SCRIPT-START]-->
    dust.use(['web/open_blockchain/js/app','web/open_blockchain/js/developer/developer_login'],function(app, developer_login) {
        app.init(function  () {
            developer_login.init();
        });
    });
    <!--[SCRIPT-END]-->
</script><div class="mod-box hide" id="MOD_COMMON_BOX"><div class="box-wrap js-common-box hide" id="MOD_COMMON_BOX_HTML">  <div class="box-inner">    <a class="btn-close show" href="javascript:;" id="MOD_COMMON_BOX_HTML_TITLE_CLOSE">关闭</a>    <div class="box-title show"><h2 id="MOD_COMMON_BOX_HTML_TITLE">提示</h2></div>    <div class="box-main">      <div id="MOD_COMMON_BOX_HTML_BODY">      </div>      <div class="box-buttons" id="MOD_COMMON_BOX_HTML_BTNS">      </div>    </div>  </div></div><div class="box-wrap js-common-box hide" id="MOD_COMMON_BOX_PRESET">  <div class="box-inner">    <a class="btn-close" href="javascript:;" id="MOD_COMMON_BOX_PRESET_TITLE_CLOSE">关闭</a>    <div class="box-title"><h2 id="">提示</h2></div>    <div class="box-main">      <div id="MOD_COMMON_BOX_PRESET_BODY">      </div>      <div class="box-buttons" id="MOD_COMMON_BOX_PRESET_BTNS">      </div>    </div>  </div></div><div class="box-wrap js-common-box hide" id="MOD_COMMON_BOX_MODE">  <div class="box-inner">    <a class="btn-close show" href="javascript:;" id="MOD_COMMON_BOX_MODE_TITLE_CLOSE">关闭</a>    <div class="box-title show"><h2 id="MOD_COMMON_BOX_MODE_TITLE">提示</h2></div>    <div class="box-main">      <div id="MOD_COMMON_BOX_MODE_BODY">      </div>      <div class="box-buttons" id="MOD_COMMON_BOX_MODE_BTNS">      </div>    </div>  </div></div><div class="box-wrap js-common-box hide" id="MOD_COMMON_BOX_IFRAME">  <div class="box-inner">    <a class="btn-close show" href="javascript:;" id="MOD_COMMON_BOX_IFRAME_TITLE_CLOSE">关闭</a>    <div class="box-title show"><h2 id="MOD_COMMON_BOX_IFRAME_TITLE">提示</h2></div>    <div class="box-main">      <div id="MOD_COMMON_BOX_IFRAME_BODY">          <iframe id="MOD_COMMON_BOX_IFRAME1" src="./腾讯区块链登录_files/saved_resource.html" width="100%" height="100%" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="yes" allowtransparency="yes"></iframe>      </div>      <div class="box-buttons" id="MOD_COMMON_BOX_IFRAME_BTNS">      </div>    </div>  </div></div><div class="box-mask hide" id="MOD_COMMON_BOX_MASK"></div></div>
<!-- Swiper 轮播图 JS -->
<!-- 对比到前端时，href路径要替换成绝对路径，域名为https://mqq-imgcache.gtimg.cn -->
<script src="./腾讯区块链登录_files/swiper.min.js"></script>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        spaceBetween: 30,
        effect: 'fade'
    });
</script>



<script type="text/javascript" src="./腾讯区块链登录_files/stats" charset="UTF-8"></script>

</body>
</html>
