<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link href="themes/MyCCCShop201803/index.css" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|<?php echo $this->_var['page_title']; ?>" href="<?php echo $this->_var['feed_url']; ?>" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,index.js')); ?>
</head>
<body>
<script type="text/javascript">
var process_request = "正在处理您的请求...";
</script>
 <?php echo $this->fetch('library/page_header.lbi'); ?> 
 <div class="banner">
 <?php echo $this->fetch('library/index_ad.lbi'); ?> 
 <?php echo $this->fetch('library/index_menu.lbi'); ?> 
 </div>
<div class="container wrap">
  <div class="guarantee-banner">
    <img src="themes/MyCCCShop201803/images/guarantee.png" alt="100%正品低价 100%绝对隐私 100%安全材质 100%质量保证">
  </div>
  
<?php echo $this->fetch('library/recommend_promotion.lbi'); ?>


<?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php echo $this->fetch('library/cat_goods.lbi'); ?>


<?php echo $this->fetch('library/cat_articles.lbi'); ?>


</div>
<?php echo $this->fetch('library/page_footer.lbi'); ?> 
<?php echo $this->fetch('library/right_sidebar.lbi'); ?>
</body>
</html>