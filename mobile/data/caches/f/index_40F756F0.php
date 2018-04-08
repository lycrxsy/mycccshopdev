<?php exit;?>a:3:{s:8:"template";a:6:{i:0;s:52:"C:/WEB/MyCCCShop/Syy/mobile/themes/default/index.dwt";i:1;s:66:"C:/WEB/MyCCCShop/Syy/mobile/themes/default/library/ad_position.lbi";i:2;s:69:"C:/WEB/MyCCCShop/Syy/mobile/themes/default/library/recommend_best.lbi";i:3;s:74:"C:/WEB/MyCCCShop/Syy/mobile/themes/default/library/recommend_promotion.lbi";i:4;s:64:"C:/WEB/MyCCCShop/Syy/mobile/themes/default/library/cat_goods.lbi";i:5;s:66:"C:/WEB/MyCCCShop/Syy/mobile/themes/default/library/page_footer.lbi";}s:7:"expires";i:1522125198;s:8:"maketime";i:1522121598;}<!DOCTYPE html>
<html>
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta charset="utf-8" />
<title>MyCCCShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no" />
<link href="themes/default/images/touch-icon.png" rel="apple-touch-icon-precomposed" />
<link href="themes/default/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="themes/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="themes/default/js/TouchSlide.js"></script>
<script type="text/javascript" src="themes/default/js/jquery.min.js"></script>
<script type="text/javascript" src="themes/default/js/jquery.mmenu.js"></script>
<script type="text/javascript" src="themes/default/js/ectouch.js"></script>
<script type="text/javascript">
  function getLocalTime(nS) {
    return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:\d{1,2}$/, ' ');
  }
  function limitCount() {
    var a = limitCount.doms = limitCount.doms || $("#JS_limit_table div.JS_leaveTime");
    a.each(function() {
      var c = $(this);
      var b = c[0]._timeline = c[0]._timeline || c.data("timeline");
      c.html(limitFormatTime(b - limitCount.unixTime));
    });
  }
  function limitFormatTime(e) {
    if (e < 0) {
      e = 0;
    }
    var NowTime = new Date();
    var t = e * 1000 - NowTime.getTime();
    /*var d=Math.floor(t/1000/60/60/24);
        t-=d*(1000*60*60*24);
        var h=Math.floor(t/1000/60/60);
        t-=h*60*60*1000;
        var m=Math.floor(t/1000/60);
        t-=m*60*1000;
        var s=Math.floor(t/1000);*/
    var d = Math.floor(t / 1000 / 60 / 60 / 24);
    if (d<10){
       d = '0' + d;
    }
    var h = Math.floor(t / 1000 / 60 / 60 % 24);
    if (h<10){
       h = '0' + h;
    }
    var m = Math.floor(t / 1000 / 60 % 60);
    if (m<10){
       m = '0' + m;
    }
    var s = Math.floor(t / 1000 % 60);
    if (s<10){
       s = '0' + s;
    }
    if (t < 0) {
    return "活动结束";
    }
    return '<em>'+ d + '</em>天' + '<em>' + h + '</em>时<em>' + m + '</em>分<em>' + s + '</em>秒';
  }
  function _COMMON_UNIX_TIME() {
    limitCount.unixTime = 0;
    setInterval(limitCount, 1000);
  }
  _COMMON_UNIX_TIME();
</script>
 
<style>
*{outline:0;-webkit-tap-highlight-color:transparent;-webkit-box-sizing:border-box;box-sizing:border-box}
.user_top_goods {
height: 5rem;
overflow: hidden; 
background:#ffbf6b;
position:relative
}
.user_top_goods dt {
float: left;
margin: 0.8rem 0.8rem 0;
text-align: center;
position: relative;
width: 3.7rem;
height: 3.7rem;
border-radius: 3.7rem;
padding:0.15rem; background:#FFFFFF
}
.user_top_goods dt img {
width: 3.7rem;
height:3.7rem;
border-radius: 3.7rem;
}
.guanzhu {
background-color: #ffbf6b;
}
.guanzhu {
color: #fff;
border: 0;
height: 2.5rem;
line-height: 2.5rem;
width: 100%;
-webkit-box-flex: 1;
display: block;
-webkit-user-select: none;
font-size: 0.9rem;
}
#cover2 {
    background-color: #333333;
    display: none;
    left: 0;
    opacity: 0.8;
    position: absolute;
    top: 0;
    z-index: 1000;
}
#share_weixin, #share_qq {
    right: 10px;
    top: 2px;
    width: 260px;
}
#share_weixin, #share_qq, #share_qr {
    display: none;
    position: fixed;
    z-index: 3000;
}
#share_weixin img, #share_qq img {
    height: 165px;
    width: 260px;
}
		.button_3 {
    background-color: #EEEEEE;
    border: 1px solid #666666;
    color: #666666;
    font-size: 16px;
    line-height: 20px;
    padding: 10px 0;
    text-align: center;
}
#share_weixin button, #share_qq button {
    margin-top: 25px;
    width: 100%;
}
</style>
 
</head>
<body>
<div id="page">
  <header id="header" >
    <div class="header_l"> <a class="ico_02" href="#menu"> 菜单栏 </a> </div>
    <h1> MyCCCShop </h1>
    <div class="header_r"> <a class="ico_01" href="flow.php"> 购物车 </a> </div>
  </header>
</div>
 
<div id="focus" class="focus region">
  <div class="hd">
    <ul>
    </ul>
  </div>
  <div class="bd">
    
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"1";s:3:"num";s:1:"3";}554fcae493e564ee0dc75bdf2ebf94ca
  </div>
</div>
<script type="text/javascript">
TouchSlide({ 
	slideCell:"#focus",
	titCell:".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
	mainCell:".bd ul", 
	effect:"leftLoop", 
	autoPlay:true,//自动播放
	autoPage:true //自动分页
});
</script>
<div id=content class="wrap">
  
  <header class=region>
    <div class=content>
      <div id=fake-search>
        <div class="fakeInput radius15">
          <button class="text" id="get_search_box" style="color:silver;">搜本站商品</button>
          <div class="search ico_03"> </div>
        </div>
      </div>
    </div>
  </header>
  
  <div class="region row row_category">
    <ul class="flex flex-f-row">
            <li class="flex_in"> <a href="cat_all.php" title="全部分类"> <div class="CarouselImg"><img src="data/item_pic/1443584338752549142.png" /></div> </a>
        <p> 全部分类 </p>
      </li>
                  <li class="flex_in"> <a href="article_cat.php?id=3" title="帮助中心"> <div class="CarouselImg"><img src="data/item_pic/1448075935109557161.png" /></div> </a>
        <p> 帮助中心 </p>
      </li>
                  <li class="flex_in"> <a href="user.php" title="个人中心"> <div class="CarouselImg"><img src="data/item_pic/1443584373727011961.png" /></div> </a>
        <p> 个人中心 </p>
      </li>
                  <li class="flex_in"> <a href="distribute.php" title="分销中心"> <div class="CarouselImg"><img src="data/item_pic/1443586488909704319.png" /></div> </a>
        <p> 分销中心 </p>
      </li>
            </ul><ul class="flex flex-f-row">
                  <li class="flex_in"> <a href="ectouch.php?act=contact" title="联系我们"> <div class="CarouselImg"><img src="data/item_pic/1443586300343329180.png" /></div> </a>
        <p> 联系我们 </p>
      </li>
                  <li class="flex_in"> <a href="group_buy.php" title="团购"> <div class="CarouselImg"><img src="data/item_pic/1443585779204202237.png" /></div> </a>
        <p> 团购 </p>
      </li>
                  <li class="flex_in"> <a href="exchange.php" title="积分商城"> <div class="CarouselImg"><img src="data/item_pic/1443586061863736586.png" /></div> </a>
        <p> 积分商城 </p>
      </li>
                  <li class="flex_in"> <a href="flow.php" title="购物车"> <div class="CarouselImg"><img src="data/item_pic/1443584408064043342.png" /></div> </a>
        <p> 购物车 </p>
      </li>
                </ul>
  </div>
  
  
<div class="blank2"></div>
<div class="mainCon">
  <dl class="wholeTime">
     <dt class="wholePoint surper clearfix">
        <span class="san fl"><i></i>特色市场</span>
     </dt>
     <dd>
     <div class="superBan clearfix">
       <div class="featurBan1 fl">
         
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"2";s:3:"num";s:1:"2";}554fcae493e564ee0dc75bdf2ebf94ca
       </div>
       <div class="featurBan2 fl">
         
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"3";s:3:"num";s:1:"1";}554fcae493e564ee0dc75bdf2ebf94ca
       </div>
     </div>        
     </dd>
  </dl>
</div>
<div class="blank2"></div>
<div class="mainCon">
  <dl class="wholeTime">
    <dt class="wholePoint surper clearfix">
      <span class="san fl">
        <i>
        </i>
        热门市场
      </span>
    </dt>
    <dd>
      <div class="superBan brandWallBan clearfix">
         
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"4";s:3:"num";s:1:"9";}554fcae493e564ee0dc75bdf2ebf94ca
      </div>
    </dd>
  </dl>
</div>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="search.php?intro=best">
        <span class="titico"></span>精品推荐<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
                <div class="goodsItem flex_in">
            <a href="goods.php?id=40">
                <img src="http://mycccshop.com/data/static/images/no_picture.gif" alt="test" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>219</span> </span> 
                        <br>test            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=41">
                <img src="http://mycccshop.com/data/static/images/no_picture.gif" alt="test5" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>219</span> </span> 
                        <br>test5            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=42">
                <img src="http://mycccshop.com/data/static/images/no_picture.gif" alt="test6" />
            </a>
            <div style="text-align:center">
             
            <span class="price_s"> ￥<span>219</span> </span> 
                        <br>test6            </div>
        </div>
         </div><div class="flex flex-f-row">            </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region" id="JS_limit_table">
    <h3>
      <a target="_top" href="search.php?intro=promotion">
        <span class="titico"></span>特价促销<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
                <div class="goodsItem flex_in">
            <a href="goods.php?id=40">
                <img src="http://mycccshop.com/data/static/images/no_picture.gif" alt="test" />
            </a>
            <div style="text-align:center;line-height:1.5rem;">
             
            <span class="price_s"> ￥<span>219</span> </span> 
                        <br>test            </div>
            <div class="timedjs">
	    <div class="JS_leaveTime" data-timeline="1546848000"><em>00</em>天<em>00</em>时<em>00</em>分<em>00</em>秒</div>
            </div>
        </div>
                         <div class="goodsItem flex_in">
            <a href="goods.php?id=41">
                <img src="http://mycccshop.com/data/static/images/no_picture.gif" alt="test5" />
            </a>
            <div style="text-align:center;line-height:1.5rem;">
             
            <span class="price_s"> ￥<span>219</span> </span> 
                        <br>test5            </div>
            <div class="timedjs">
	    <div class="JS_leaveTime" data-timeline="1546848000"><em>00</em>天<em>00</em>时<em>00</em>分<em>00</em>秒</div>
            </div>
        </div>
                     </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="category.php?id=1">
        <span class="titico"></span>个护、美妆类<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
            </div>
    <div class="item_tags clearfix">
                        <A href="category.php?id=11">
            面部护肤        </A>
                <A href="category.php?id=14">
            洗发护发        </A>
                <A href="category.php?id=15">
            身体护理        </A>
                <A href="category.php?id=10">
            口腔护理        </A>
                <A href="category.php?id=16">
            女性护理        </A>
                <A href="category.php?id=9">
            美妆        </A>
                    </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="category.php?id=2">
        <span class="titico"></span>家装、工具类<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
            </div>
    <div class="item_tags clearfix">
                        <A href="category.php?id=80">
            机电设备        </A>
                <A href="category.php?id=77">
            手动工具        </A>
                <A href="category.php?id=81">
            零件耗材        </A>
                <A href="category.php?id=78">
            电动工具        </A>
                <A href="category.php?id=82">
            电子物料        </A>
                <A href="category.php?id=79">
            测量工具        </A>
                    </div>
</section>
<div class="blank2"></div>
<section class="item_show_box1 box1 region">
    <h3>
      <a target="_top" href="category.php?id=3">
        <span class="titico"></span>厨具、电器、家庭清洁<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
            </div>
    <div class="item_tags clearfix">
                        <A href="category.php?id=86">
            Zwilling双立人厨具        </A>
                <A href="category.php?id=85">
            WMF福腾宝厨具        </A>
                <A href="category.php?id=87">
            Fissler菲仕乐厨具        </A>
                <A href="category.php?id=90">
            Brita碧然德        </A>
                <A href="category.php?id=94">
            厨房家电        </A>
                <A href="category.php?id=97">
            家庭清洁        </A>
                    </div>
</section>
</div>
 
<div id="content" class="footer mr-t20">
  <div class="in">
    <div class="search_box">
      <form method="post" action="search.php" name="searchForm" id="searchForm_id">
        <input name="keywords" type="text" id="keywordfoot" />
        <button class="ico_07" type="submit" value="搜索" onclick="return check('keywordfoot')"> </button>
      </form>
    </div>
    <a href="./" class="homeBtn"> <span class="ico_05"> </span> </a> <a href="#top" class="gotop"> <span class="ico_06"> </span> <p> TOP </p>
    </a>
  </div>
  <p class="link region"> <a href="./"> 返回首页 </a> <a href="flow.php"> 购物车 </a> <a href="user.php"> 会员中心 </a> <a href="ectouch.php?act=contact"> 联系我们 </a> </p>
  <p class="region"> 
     
    &copy; 2005-2018 MyCCCShop 版权所有，并保留所有权利。 </p>
  <div class="favLink region"> <a href="http://www.ccc-global.com"> powered by CCC Global GmbH </a> </div>
</div>
<div class="global-nav">
    <div class="global-nav__nav-wrap">
        <div class="global-nav__nav-item">
            <a href="./" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-index">&#xf0001;</i>
                <span class="global-nav__nav-tit">首页</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="cat_all.php" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-category">&#xf0002;</i>
                <span class="global-nav__nav-tit">分类</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="javascript:get_search_box();" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-search">&#xf0003;</i>
                <span class="global-nav__nav-tit">搜索</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="flow.php?step=cart" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-shop-cart">&#xf0004;</i>
                <span class="global-nav__nav-tit">购物车</span>
                <span class="global-nav__nav-shop-cart-num" id="carId">554fcae493e564ee0dc75bdf2ebf94cacart_info_number|a:1:{s:4:"name";s:16:"cart_info_number";}554fcae493e564ee0dc75bdf2ebf94ca</span>
            </a>
        </div>
        <div class="global-nav__nav-item">
            <a href="user.php" class="global-nav__nav-link">
                <i class="global-nav__iconfont global-nav__icon-my-yhd">&#xf0005;</i>
                <span class="global-nav__nav-tit">会员中心</span>
            </a>
        </div>
    </div>
    <div class="global-nav__operate-wrap">
        <span class="global-nav__yhd-logo"></span>
        <span class="global-nav__operate-cart-num" id="globalId">554fcae493e564ee0dc75bdf2ebf94cacart_info_number|a:1:{s:4:"name";s:16:"cart_info_number";}554fcae493e564ee0dc75bdf2ebf94ca</span>
    </div>
</div>
<div id="toTop" class="toTop">
  <img alt="" src="themes/default/images/scropTop.png">
</div>
<script>
$(function(){
	isIe6 = false;
	
	if ('undefined' == typeof(document.body.style.maxHeight)) {
		isIe6 = true;
	}
	var offset = $("#toTop").offset();		
	var bottom = $("#toTop").css("bottom");		
	$(window).scroll(function(){
		if ($(window).scrollTop() > 500){
			$("#toTop").fadeIn(800);
			
			if(isIe6)
			{			
				$("#toTop").css("position","absolute")	
				$("#toTop").css("bottom",bottom)
			}
		}
		else
		{
			$("#toTop").fadeOut(500);
		}
		
	});
	
	$("#toTop").click(function(){
		$('body,html').animate({scrollTop:0},500);
		return false;
	});
})
</script>
<script type="text/javascript" src="themes/default/js/zepto.min.js"></script>
<script type="text/javascript">
Zepto(function($){
   var $nav = $('.global-nav'), $btnLogo = $('.global-nav__operate-wrap');
   //点击箭头，显示隐藏导航
   $btnLogo.on('click',function(){
     if($btnLogo.parent().hasClass('global-nav--current')){
       navHide();
     }else{
       navShow();
     }
   });
   var navShow = function(){
     $nav.addClass('global-nav--current');
   }
   var navHide = function(){
     $nav.removeClass('global-nav--current');
   }
   
})
function get_search_box(){
	try{
		document.getElementById('get_search_box').click();
	}catch(err){
		document.getElementById('keywordfoot').focus();
 	}
}
</script> 
<nav id="menu" style="display:None">
  <ul>
        <li> <a href="category.php?id=4"> 母婴、玩具类 </a>
      <ul>
                <li> <a href="category.php?id=36"> 宝宝奶粉 </a>
          <ul>
                        <li> <a href="category.php?id=57"> 爱他美Aptamil </a> </li>
                        <li> <a href="category.php?id=99"> 喜宝Hipp </a> </li>
                        <li> <a href="category.php?id=113"> 特福芬Töpfer </a> </li>
                        <li> <a href="category.php?id=110"> 泓乐Holle </a> </li>
                        <li> <a href="category.php?id=114"> 美乐宝Milupa </a> </li>
                        <li> <a href="category.php?id=107"> 雀巢贝巴BEBA </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=33"> 营养辅食 </a>
          <ul>
                        <li> <a href="category.php?id=131"> 辅食油 </a> </li>
                        <li> <a href="category.php?id=128"> 宝宝甜点 </a> </li>
                        <li> <a href="category.php?id=121"> 米粉米糊 </a> </li>
                        <li> <a href="category.php?id=129"> 宝宝面条 </a> </li>
                        <li> <a href="category.php?id=133"> 吸吸乐 </a> </li>
                        <li> <a href="category.php?id=124"> 有机果泥 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=37"> 宝宝护理 </a>
          <ul>
                        <li> <a href="category.php?id=144"> 儿童牙膏牙刷 </a> </li>
                        <li> <a href="category.php?id=145"> 洗澡用品 </a> </li>
                        <li> <a href="category.php?id=142"> 儿童护肤 </a> </li>
                        <li> <a href="category.php?id=146"> 尿不湿 </a> </li>
                        <li> <a href="category.php?id=143"> 儿童防晒 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=34"> 益智玩具 </a>
          <ul>
                        <li> <a href="category.php?id=160"> Playmobil </a> </li>
                        <li> <a href="category.php?id=161"> 芭比Babie </a> </li>
                        <li> <a href="category.php?id=165"> 儿童学步车 </a> </li>
                        <li> <a href="category.php?id=159"> 乐高Lego </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=31"> 妈妈用品 </a>
          <ul>
                        <li> <a href="category.php?id=157"> 妈咪包 背婴帯 </a> </li>
                        <li> <a href="category.php?id=154"> 孕妈专用药妆 </a> </li>
                        <li> <a href="category.php?id=155"> 孕妈营养品 </a> </li>
                        <li> <a href="category.php?id=156"> 孕妈保健品 </a> </li>
                        <li> <a href="category.php?id=153"> 孕妈专业洗护 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=38"> 喂养用品 </a>
          <ul>
                        <li> <a href="category.php?id=150"> 辅食料理机 </a> </li>
                        <li> <a href="category.php?id=147"> 奶瓶奶嘴 </a> </li>
                        <li> <a href="category.php?id=152"> 吸奶器 </a> </li>
                        <li> <a href="category.php?id=148"> 水杯水壶 </a> </li>
                        <li> <a href="category.php?id=149"> 儿童餐具 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=1"> 个护、美妆类 </a>
      <ul>
                <li> <a href="category.php?id=11"> 面部护肤 </a>
          <ul>
                        <li> <a href="category.php?id=104"> 洁面 </a> </li>
                        <li> <a href="category.php?id=106"> 爽肤水 </a> </li>
                        <li> <a href="category.php?id=100"> 面霜 </a> </li>
                        <li> <a href="category.php?id=101"> 精华 </a> </li>
                        <li> <a href="category.php?id=102"> 面膜 </a> </li>
                        <li> <a href="category.php?id=103"> 眼部护理 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=14"> 洗发护发 </a>
          <ul>
                        <li> <a href="category.php?id=108"> 洗发 </a> </li>
                        <li> <a href="category.php?id=109"> 护发 </a> </li>
                        <li> <a href="category.php?id=111"> 染发 </a> </li>
                        <li> <a href="category.php?id=112"> 造型 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=15"> 身体护理 </a>
          <ul>
                        <li> <a href="category.php?id=115"> 沐浴 </a> </li>
                        <li> <a href="category.php?id=116"> 身体乳 </a> </li>
                        <li> <a href="category.php?id=117"> 手部护理 </a> </li>
                        <li> <a href="category.php?id=119"> 足部护理 </a> </li>
                        <li> <a href="category.php?id=120"> 防晒 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=10"> 口腔护理 </a>
          <ul>
                        <li> <a href="category.php?id=122"> 牙膏 </a> </li>
                        <li> <a href="category.php?id=123"> 牙刷 </a> </li>
                        <li> <a href="category.php?id=125"> 电动牙刷 </a> </li>
                        <li> <a href="category.php?id=126"> 漱口液 </a> </li>
                        <li> <a href="category.php?id=127"> 牙线 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=16"> 女性护理 </a>
          <ul>
                        <li> <a href="category.php?id=130"> 卫生巾 </a> </li>
                        <li> <a href="category.php?id=132"> 卫生棉条 </a> </li>
                        <li> <a href="category.php?id=134"> 私密护理 </a> </li>
                        <li> <a href="category.php?id=135"> 脱毛 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=9"> 美妆 </a>
          <ul>
                        <li> <a href="category.php?id=136"> 底妆 </a> </li>
                        <li> <a href="category.php?id=137"> 眼妆 </a> </li>
                        <li> <a href="category.php?id=139"> 腮红 </a> </li>
                        <li> <a href="category.php?id=140"> 遮瑕 </a> </li>
                        <li> <a href="category.php?id=138"> 唇部 </a> </li>
                        <li> <a href="category.php?id=141"> 美甲 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=6"> 食品、饮品类 </a>
      <ul>
                <li> <a href="category.php?id=67"> 巧克力 </a>
          <ul>
                        <li> <a href="category.php?id=183"> 夹心巧克力 </a> </li>
                        <li> <a href="category.php?id=181"> 威化饼干 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=56"> 糖果 </a>
          <ul>
                        <li> <a href="category.php?id=175"> 儿童糖果 </a> </li>
                        <li> <a href="category.php?id=173"> 软糖 </a> </li>
                        <li> <a href="category.php?id=174"> 含片 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=68"> 饮品 </a>
          <ul>
                        <li> <a href="category.php?id=197"> 冰酒 </a> </li>
                        <li> <a href="category.php?id=185"> 蛋白粉 </a> </li>
                        <li> <a href="category.php?id=195"> 养生果蔬汁 </a> </li>
                        <li> <a href="category.php?id=192"> 脱脂有机奶粉 </a> </li>
                        <li> <a href="category.php?id=193"> 功能饮料 </a> </li>
                        <li> <a href="category.php?id=184"> 养生茶 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=73"> 咖啡 </a>
          <ul>
                        <li> <a href="category.php?id=206"> 咖啡豆 </a> </li>
                        <li> <a href="category.php?id=207"> 速溶咖啡 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=70"> 休闲零食 </a>
          <ul>
                        <li> <a href="category.php?id=203"> 意面 </a> </li>
                        <li> <a href="category.php?id=200"> 饼干 </a> </li>
                        <li> <a href="category.php?id=201"> 坚果 </a> </li>
                        <li> <a href="category.php?id=202"> 麦片 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=3"> 厨具、电器、家庭清洁 </a>
      <ul>
                <li> <a href="category.php?id=86"> Zwilling双立人厨具 </a>
          <ul>
                        <li> <a href="category.php?id=176"> 刀具 </a> </li>
                        <li> <a href="category.php?id=177"> 炒锅 </a> </li>
                        <li> <a href="category.php?id=178"> 炖锅 </a> </li>
                        <li> <a href="category.php?id=180"> 套装 </a> </li>
                        <li> <a href="category.php?id=179"> 高压锅 </a> </li>
                        <li> <a href="category.php?id=182"> 其他用品 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=85"> WMF福腾宝厨具 </a>
          <ul>
                        <li> <a href="category.php?id=186"> 刀具 </a> </li>
                        <li> <a href="category.php?id=187"> 炒锅 </a> </li>
                        <li> <a href="category.php?id=188"> 炖锅 </a> </li>
                        <li> <a href="category.php?id=189"> 套装 </a> </li>
                        <li> <a href="category.php?id=190"> 高压锅 </a> </li>
                        <li> <a href="category.php?id=191"> 其他 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=87"> Fissler菲仕乐厨具 </a>
          <ul>
                        <li> <a href="category.php?id=194"> 刀具 </a> </li>
                        <li> <a href="category.php?id=196"> 炒锅 </a> </li>
                        <li> <a href="category.php?id=198"> 炖锅 </a> </li>
                        <li> <a href="category.php?id=199"> 套装 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=90"> Brita碧然德 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=94"> 厨房家电 </a>
          <ul>
                        <li> <a href="category.php?id=204"> 咖啡机 </a> </li>
                        <li> <a href="category.php?id=205"> 面包机 </a> </li>
                        <li> <a href="category.php?id=208"> 空气炸锅 </a> </li>
                        <li> <a href="category.php?id=209"> 榨汁机 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=97"> 家庭清洁 </a>
          <ul>
                        <li> <a href="category.php?id=210"> 洗洁精 </a> </li>
                        <li> <a href="category.php?id=211"> 清洁剂 </a> </li>
                        <li> <a href="category.php?id=212"> 清洁布 </a> </li>
                        <li> <a href="category.php?id=214"> 洗衣液 </a> </li>
                        <li> <a href="category.php?id=215"> 洗衣机清洗剂 </a> </li>
                        <li> <a href="category.php?id=217"> 家具护理液 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=5"> 营养、保健类 </a>
      <ul>
                <li> <a href="category.php?id=88"> 维生素 </a>
          <ul>
                        <li> <a href="category.php?id=158"> 维他命A </a> </li>
                        <li> <a href="category.php?id=162"> 维他命B </a> </li>
                        <li> <a href="category.php?id=163"> 维他命C </a> </li>
                        <li> <a href="category.php?id=164"> 维他命D </a> </li>
                        <li> <a href="category.php?id=166"> 维他命E </a> </li>
                        <li> <a href="category.php?id=167"> 多种维他命 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=89"> 矿物质 </a>
          <ul>
                        <li> <a href="category.php?id=168"> 钙 </a> </li>
                        <li> <a href="category.php?id=169"> 镁 </a> </li>
                        <li> <a href="category.php?id=170"> 铁 </a> </li>
                        <li> <a href="category.php?id=171"> 锌 </a> </li>
                        <li> <a href="category.php?id=172"> 其他 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=95"> 调节三高 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=96"> 补血补铁 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=93"> 减肥塑身 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=91"> 骨骼健康 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=2"> 家装、工具类 </a>
      <ul>
                <li> <a href="category.php?id=80"> 机电设备 </a>
          <ul>
                        <li> <a href="category.php?id=230"> 断路器 </a> </li>
                        <li> <a href="category.php?id=231"> 开关 </a> </li>
                        <li> <a href="category.php?id=232"> 配电箱 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=77"> 手动工具 </a>
          <ul>
                        <li> <a href="category.php?id=213"> 多功能维修工具 </a> </li>
                        <li> <a href="category.php?id=216"> 水平尺 </a> </li>
                        <li> <a href="category.php?id=218"> 润滑油 </a> </li>
                        <li> <a href="category.php?id=219"> 工具箱 </a> </li>
                        <li> <a href="category.php?id=220"> 刀剪 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=81"> 零件耗材 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=78"> 电动工具 </a>
          <ul>
                        <li> <a href="category.php?id=221"> 多功能电钻 </a> </li>
                        <li> <a href="category.php?id=222"> 起子机 </a> </li>
                        <li> <a href="category.php?id=223"> 切割机 </a> </li>
                        <li> <a href="category.php?id=224"> 抛光机 </a> </li>
                        <li> <a href="category.php?id=225"> 焊接装备 </a> </li>
                        <li> <a href="category.php?id=226"> 电动工具电池充电器 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=82"> 电子物料 </a>
          <ul>
                        <li> <a href="category.php?id=233"> Wogo </a> </li>
                        <li> <a href="category.php?id=234"> B&amp;R </a> </li>
                        <li> <a href="category.php?id=235"> Arduino </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=79"> 测量工具 </a>
          <ul>
                        <li> <a href="category.php?id=227"> 红外线测量尺 </a> </li>
                        <li> <a href="category.php?id=228"> 墙体探测仪 </a> </li>
                        <li> <a href="category.php?id=229"> 装修内窥镜 </a> </li>
                      </ul>
        </li>
              </ul>
    </li>
        <li> <a href="category.php?id=7"> 医疗护理、器械类 </a>
      <ul>
                <li> <a href="category.php?id=58"> 医疗护理、器械类二级分类1 </a>
          <ul>
                        <li> <a href="category.php?id=98"> 医疗护理、器械类三级分类1 </a> </li>
                      </ul>
        </li>
                <li> <a href="category.php?id=59"> 医疗护理、器械类二级分类2 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=60"> 医疗护理、器械类二级分类3 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=61"> 医疗护理、器械类二级分类4 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=62"> 医疗护理、器械类二级分类5 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=63"> 医疗护理、器械类二级分类6 </a>
          <ul>
                      </ul>
        </li>
                <li> <a href="category.php?id=64"> 医疗护理、器械类二级分类7 </a>
          <ul>
                      </ul>
        </li>
              </ul>
    </li>
      </ul>
</nav>
<div id="main-search" class="main-search">
<div class="hd"> <span class="ico_08 close"> 关闭 </span> </div>
<div class="bd">
  <div class="search_box">
    <form action="search.php" method="post" id="searchForm" name="searchForm">
      <div class="content">
        <input class="text" type="search" name="keywords" id="keywordBox" autofocus />
        <button class="ico_07" type="submit" value="搜 索" onclick="return check('keywordBox')"></button>
      </div>
    </form>
  </div>
</div>
</div>
<script type="text/javascript">
window.onload = function(){
  $('#menu').css('display','');
}
$(function() {
	$('nav#menu').mmenu();
	$('#get_search_box').click(function(){
		$(".mm-page").children('div').hide();
		$("#main-search").css('position','fixed').css('top','0px').css('width','100%').css('z-index','999').show();
		//$('#keywordBox').focus();
	})
	$("#main-search .close").click(function(){
		$(".mm-page").children('div').show();
		$("#main-search").hide();
	})
});
</script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
  wx.config({
    debug: false,
    appId: '',
    timestamp: 1522121599,
    nonceStr: '5lHFix1YzrMkN0m8',
    signature: '3a2e173131992ab06841923ca0cae68e57b20d9e',
    jsApiList: [
        'onMenuShareTimeline',
        'onMenuShareAppMessage' 
    ]
  });
 wx.ready(function () {
	//模板之家监听“分享给朋友”
    wx.onMenuShareAppMessage({
      title: 'MyCCCShop-专注于德国货源供应！',
      desc: 'MyCCCShop-专注于德国货源供应！',
      link: '',
      imgUrl: '',
      trigger: function (res) {
		
				alert('糟糕，需要分销商登录才能获得提成哦！');
				
      },
      success: function (res) {
		      },
      cancel: function (res) {
        alert('很遗憾，您已取消分享');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });
	//分享到朋友圈模板之家
    wx.onMenuShareTimeline({
      title: 'MyCCCShop-专注于德国货源供应！',
      link: '',
      imgUrl: '',
      trigger: function (res) {
			
        			alert('糟糕，需要分销商登录才能获得提成哦！');
		      },
      success: function (res) {
       	      },
      cancel: function (res) {
         alert('很遗憾，您已取消分享');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });
});
</script>
</body>
</html>