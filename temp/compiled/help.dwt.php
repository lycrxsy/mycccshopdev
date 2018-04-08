<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link href="themes/MyCCCShop201803/help.css" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.js,jquery_json.js,transport_jquery.js')); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="w-main">
	<div class="mb15"></div>
	<div class="breadcrumb clearfix">
    	<a href="./" class="index">首页</a><span class="crumbs-arrow">&gt;</span><a href="help.php?id=9" class="index">帮助中心</a><span class="crumbs-arrow">&gt;</span><span class="last"><?php echo htmlspecialchars($this->_var['article']['title']); ?></span>
    </div>
    <div class="mb15"></div>
    <div class="clearfix">
    	<?php echo $this->fetch('library/left_help.lbi'); ?>
<div class="right-con">
<div class="right-inner">
<h3 class="article-tit"><?php echo htmlspecialchars($this->_var['article']['title']); ?></h3>
<div class="article-detail"> 
<?php if ($this->_var['article']['content']): ?> 
<?php echo $this->_var['article']['content']; ?> 
<?php endif; ?> 
</div>
</div>
</div>
</div>
</div>
<div class="blank"></div>
<div class="site-footer">
    <div class="footer-related">
<?php echo $this->fetch('library/page_footer.lbi'); ?>
  </div>
</div>
</body>
</html>
