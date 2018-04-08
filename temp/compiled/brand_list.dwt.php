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
<link href="themes/MyCCCShop201803/common.css" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'jquery.js,jquery_json.js')); ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,global.js,compare.js')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>

<div id="wrapper">
<?php echo $this->fetch('library/ur_here.lbi'); ?>
	<div class="box common_main" style="margin-top:10px;">
    	
         <div class="blank5"></div>
      <h3 class="border"><span><?php echo $this->_var['lang']['all_brand']; ?></span></h3>

     <div id="brandList" class="clearfix"  style="width:1180px; padding-bottom:20px; margin:auto;">
     <?php $_from = $this->_var['brand_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand_data');$this->_foreach['brand_list_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['brand_list_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['brand_data']):
        $this->_foreach['brand_list_foreach']['iteration']++;
?>
		  <div class="brandBox">
			
			  <div class="brandLogo">
              <?php if ($this->_var['brand_data']['brand_logo']): ?>
               <a href="<?php echo $this->_var['brand_data']['url']; ?>"><img src="data/brandlogo/<?php echo $this->_var['brand_data']['brand_logo']; ?>" alt="<?php echo htmlspecialchars($this->_var['brand_data']['brand_name']); ?> (<?php echo $this->_var['brand_data']['goods_num']; ?>)" /></a>
              <?php else: ?>
              <a href="<?php echo $this->_var['brand_data']['url']; ?>"><?php echo $this->_var['brand_data']['brand_name']; ?></a>
      			 <?php endif; ?>
				</div>
                
                
			
			 <p title="<?php echo $this->_var['brand_data']['brand_desc']; ?>"><?php echo $this->_var['brand_data']['brand_name']; ?>(<?php echo $this->_var['brand_data']['goods_num']; ?>)</p> 
			</div>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	

     </div>
     <div class="blank5"></div>
     <div class="dashed"></div>
 
</div>
</div>

<?php echo $this->fetch('library/page_footer.lbi'); ?>
<?php echo $this->fetch('library/right_sidebar.lbi'); ?>
</div>
</body>
</html>
