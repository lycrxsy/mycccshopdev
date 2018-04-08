<?php if ($this->_var['brand_list']): ?>
<?php if ($this->_var['script_name'] == 'index'): ?>
<h3 class="box_title"><strong>品牌大全</strong><span class="gray">千万用户信赖的美妆网站</span></h3>
<div class="brands_box cle" id="brands_box">
<div class="pic fl">
<?php $_from = get_advlist_by_id(5); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ad');$this->_foreach['index_image'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['index_image']['total'] > 0):
    foreach ($_from AS $this->_var['ad']):
        $this->_foreach['index_image']['iteration']++;
?> 
<a href="<?php echo $this->_var['ad']['url']; ?>" target="_blank" title="<?php echo $this->_var['ad']['name']; ?>">
<img src="<?php echo $this->_var['ad']['image']; ?>" alt="<?php echo $this->_var['ad']['name']; ?>"/></a> 
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>     
</div>
<div class="list">
<ul class="cle">
<?php $_from = $this->_var['brand_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand_0_77504700_1522075029');$this->_foreach['brand_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['brand_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['brand_0_77504700_1522075029']):
        $this->_foreach['brand_foreach']['iteration']++;
?>
<li>
<a href="<?php echo $this->_var['brand_0_77504700_1522075029']['url']; ?>" target="_blank">
<img src="data/brandlogo/<?php echo $this->_var['brand_0_77504700_1522075029']['brand_logo']; ?>" alt="<?php echo htmlspecialchars($this->_var['brand_0_77504700_1522075029']['brand_name']); ?>" title="<?php echo htmlspecialchars($this->_var['brand_0_77504700_1522075029']['brand_name']); ?>" style="display: inline;">
</a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>
</div>
<div class="pic fr">
<?php $_from = get_advlist_by_id(6); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ad');$this->_foreach['index_image'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['index_image']['total'] > 0):
    foreach ($_from AS $this->_var['ad']):
        $this->_foreach['index_image']['iteration']++;
?> 
<a href="<?php echo $this->_var['ad']['url']; ?>" target="_blank" title="<?php echo $this->_var['ad']['name']; ?>">
<img src="<?php echo $this->_var['ad']['image']; ?>" alt="<?php echo $this->_var['ad']['name']; ?>"/></a> 
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>     
</div>
</div>
  <?php else: ?> 
   <div class="fixed-want" id="fixed-want">
    <div class="hd">大牌推荐</div>
    <div class="bd" style="border-top:0;">  
        <dl class="brand">
            <dd>
            	 <?php $_from = $this->_var['brand_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand_0_77534700_1522075029');$this->_foreach['brand_foreach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['brand_foreach']['total'] > 0):
    foreach ($_from AS $this->_var['brand_0_77534700_1522075029']):
        $this->_foreach['brand_foreach']['iteration']++;
?>
                <a href="<?php echo $this->_var['brand_0_77534700_1522075029']['url']; ?>" target="_blank" rel="nofollow"><?php echo htmlspecialchars($this->_var['brand_0_77534700_1522075029']['brand_name']); ?></a>
                  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                <p class="more"><a href="brand.php" target="_blank" rel="nofollow">更多&gt;</a></p>
            </dd>
        </dl>
        </div>
</div>
   <?php endif; ?>
  <?php endif; ?>

