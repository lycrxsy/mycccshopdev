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
<?php if ($this->_var['article']['cat_id'] == 3): ?>
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
<?php else: ?>
 
<div class="content">
<div class="bread">
 <div class="detail-title"><?php echo htmlspecialchars($this->_var['article']['title']); ?></div>
<div class="detail-time"><?php echo $this->_var['article']['add_time']; ?> (来源: <?php echo htmlspecialchars($this->_var['article']['author']); ?>)</div>
</div>
<div class="detail">
<?php if ($this->_var['article']['content']): ?>
<?php echo $this->_var['article']['content']; ?>
<?php if ($this->_var['page_nav']): ?>
<div class="listpage" style="background:none; padding-top:0; padding-bottom: 10px;"><?php echo $this->_var['page_nav']; ?></div>
<?php endif; ?>
<?php endif; ?> 
</div>
</div>

<div class="sidebar">
<div class="qrcode">
<?php $_from = get_advlist_by_id(8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ad');$this->_foreach['index_image'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['index_image']['total'] > 0):
    foreach ($_from AS $this->_var['ad']):
        $this->_foreach['index_image']['iteration']++;
?>
<a href="<?php echo $this->_var['ad']['url']; ?>" alt="<?php echo $this->_var['ad']['name']; ?>" target="_blank"><img src="<?php echo $this->_var['ad']['image']; ?>">
</a>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<div class="hot">
<div class="hot-title hot-title-up">
<div class="hot-title-text">相关推荐</div>
</div>
<div class="hot-list">
<?php $_from = $this->_var['art_rel_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'art_rel');if (count($_from)):
    foreach ($_from AS $this->_var['art_rel']):
?>
<div class="item">
<a  href="<?php echo $this->_var['art_rel']['url']; ?>" target="_blank">
<div class="item-pic">
<?php if ($this->_var['art_rel']['file_url'] != ""): ?>
<img src="<?php echo $this->_var['art_rel']['file_url']; ?>">
<?php else: ?>
<img src="themes/MyCCCShop201803/images/no_img.gif">
<?php endif; ?> 
</div>
</a>
<div class="item-info">
<div class="item-title">
<a  href="<?php echo $this->_var['art_rel']['url']; ?>" target="_blank">
<?php echo $this->_var['art_rel']['title']; ?></a>
</div>
<div class="item-desc"><?php echo $this->_var['art_rel']['description']; ?></div>
</div>
<div class="item-status">
<div class="item-view">
<div class="item-status-text"><?php echo $this->_var['art_rel']['click_count']; ?></div>
</div>
</div>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
</div>
<?php if ($this->_var['related_goods']): ?>
<div class="hot">
<div class="hot-title hot-title-up">
<div class="hot-title-text">相关商品</div>
</div>
<div class="hot-list">
<?php $_from = $this->_var['related_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'releated_goods_data');if (count($_from)):
    foreach ($_from AS $this->_var['releated_goods_data']):
?>
<div class="item">
<a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" target="_blank">
<div class="item-pic">
<img src="<?php echo $this->_var['releated_goods_data']['goods_thumb']; ?>">
</div>
</a>
<div class="item-info">
<div class="item-title">
<a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" target="_blank">
<?php echo $this->_var['releated_goods_data']['goods_name']; ?></a>
</div>
<div class="item-desc"><?php echo $this->_var['releated_goods_data']['goods_brief']; ?></div>
</div>
<div class="item-status">
<div class="item-views">
<div class="item-status-text article_price">
<?php if ($this->_var['releated_goods_data']['promote_price'] != 0): ?><?php echo $this->_var['releated_goods_data']['formated_promote_price']; ?>        
<?php else: ?>
<?php echo $this->_var['releated_goods_data']['shop_price']; ?>
<?php endif; ?>
</div>
</div>
<div class="item-up">
<div class="item-status-text article-cart">
<a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" target="_blank">立即购买</a>
</div>
</div>
</div>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
</div>
<?php endif; ?>  
</div>
<?php endif; ?>  
</div>
<div class="site-footer">
  <div class="footer-related"> 
	<?php echo $this->fetch('library/page_footer.lbi'); ?> 
  </div>
</div>

</body>
</html>