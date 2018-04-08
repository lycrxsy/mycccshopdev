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
<div class="blank"></div>
<div class="w-main clearfix">
	<?php echo $this->fetch('library/ur_here.lbi'); ?>
    <div class="clearfix">
    	<div class="right-con">
            <div class="right-inner">
            	<div class="article-tit"><?php echo htmlspecialchars($this->_var['article']['title']); ?><p><?php echo htmlspecialchars($this->_var['article']['author']); ?> / <?php echo $this->_var['article']['add_time']; ?></p></div>
                <div class="article-detail">
                    <?php if ($this->_var['article']['content']): ?> 
                    <?php echo $this->_var['article']['content']; ?> 
                    <?php endif; ?> 
                    <?php if ($this->_var['article']['open_type'] == 2 || $this->_var['article']['open_type'] == 1): ?><br />
                    <div><a href="<?php echo $this->_var['article']['file_url']; ?>" target="_blank"><?php echo $this->_var['lang']['relative_file']; ?></a></div>
                    <?php endif; ?>
                </div>
                <div class="article-bottom clearfix">
                	<div class="fl">
                	<?php if ($this->_var['next_article']): ?>
                	<?php echo $this->_var['lang']['next_article']; ?>:<a href="<?php echo $this->_var['next_article']['url']; ?>"><?php echo $this->_var['next_article']['title']; ?></a><br /><?php endif; ?> 
                	<?php if ($this->_var['prev_article']): ?>
                 	<?php echo $this->_var['lang']['prev_article']; ?>:<a href="<?php echo $this->_var['prev_article']['url']; ?>"><?php echo $this->_var['prev_article']['title']; ?></a> <?php endif; ?>
                    </div>
                    <div class="fr">
                    </div>
                </div>
            </div>
		</div>
        <div class="left-con">
        	<?php echo $this->fetch('library/article_category_tree.lbi'); ?>
			
        </div>
    </div>
</div>
<div class="site-footer">
  <div class="footer-related"> 
	<?php echo $this->fetch('library/page_footer.lbi'); ?> 
  </div>
</div>

</body>
</html>