<?php if ($this->_var['cat_goods']): ?>
<div class="chosen-box clf">
<div class="chosen-menu fl">
<h2 class="chosen-title chosen-title-<?php echo $this->_var['goods_cat']['sort_order']; ?>F">
<i class="chosen-title-floor"><?php echo $this->_var['goods_cat']['sort_order']; ?></i>
<span><?php echo htmlspecialchars($this->_var['goods_cat']['name']); ?></span></h2>
<ul class="chosen-aside">
 <?php $_from = get_cat_id_goods_best_list($this->_var[goods_cat][id],8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_16544900_1523256977');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_16544900_1523256977']):
        $this->_foreach['goods']['iteration']++;
?>
<li class="chosen-aside-item clf <?php if ($this->_foreach['goods']['iteration'] == 1): ?>first<?php endif; ?> <?php if (($this->_foreach['goods']['iteration'] <= 1)): ?>current<?php endif; ?>">
<span class="serial-number"><?php echo $this->_foreach['goods']['iteration']; ?></span>
<a class="chosen-aside-img hide" rel="nofollow" target="_blank" href="<?php echo $this->_var['goods_0_16544900_1523256977']['url']; ?>">
<img class="lazy" data-original="<?php echo $this->_var['goods_0_16544900_1523256977']['thumb']; ?>" src="<?php echo $this->_var['goods_0_16544900_1523256977']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_16544900_1523256977']['name']); ?>" style="display: inline;"></a>
<a class="chosen-aside-name" target="_blank" href="<?php echo $this->_var['goods_0_16544900_1523256977']['url']; ?>"><?php echo htmlspecialchars($this->_var['goods_0_16544900_1523256977']['name']); ?></a>
<p class="chosen-aside-price hide"><?php echo $this->_var['goods_0_16544900_1523256977']['shop_price']; ?></p>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>          
</ul>
</div>
<div class="chosen-list-box fl">
<div class="chosen-list-cate relative">
<ul>
<?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat_0_16574600_1523256977');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['cat_0_16574600_1523256977']):
        $this->_foreach['no']['iteration']++;
?>
<?php if ($this->_var['cat_0_16574600_1523256977']['name'] == $this->_var['goods_cat']['name']): ?>
<?php $_from = $this->_var['cat_0_16574600_1523256977']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child_0_16583900_1523256977');if (count($_from)):
    foreach ($_from AS $this->_var['child_0_16583900_1523256977']):
?>
<li><a href="<?php echo $this->_var['child_0_16583900_1523256977']['url']; ?>" target="_blank"><?php echo htmlspecialchars($this->_var['child_0_16583900_1523256977']['name']); ?></a></li>
         <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
         <?php endif; ?>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>
<a href="<?php echo $this->_var['goods_cat']['url']; ?>" target="_blank" class="chosen-list-more">所有<i class="chosen-list-arrow"></i></a></div>
<div class="chosen-list">
<?php $_from = get_left_ad_cat_id($GLOBALS[smarty]->_var[goods_cat][id]); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ad_0_16598000_1523256977');$this->_foreach['index_image'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['index_image']['total'] > 0):
    foreach ($_from AS $this->_var['ad_0_16598000_1523256977']):
        $this->_foreach['index_image']['iteration']++;
?>
<div class="left-ad fl">
<a href="<?php echo $this->_var['ad_0_16598000_1523256977']['url']; ?>">
<img alt="<?php echo $this->_var['ad_0_16598000_1523256977']['name']; ?>" src="<?php echo $this->_var['ad_0_16598000_1523256977']['image']; ?>" target="_blank">
</a>
</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<ul class="list-item relative fr clf">
<?php $_from = $this->_var['cat_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_16609000_1523256977');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods_0_16609000_1523256977']):
        $this->_foreach['goods']['iteration']++;
?>
<li class="chosen-item goods-<?php echo $this->_foreach['goods']['iteration']; ?>">
<a target="_blank" href="<?php echo $this->_var['goods_0_16609000_1523256977']['url']; ?>">
<img src="<?php echo $this->_var['goods_0_16609000_1523256977']['thumb']; ?>"></a>
<h4><?php echo htmlspecialchars($this->_var['goods_0_16609000_1523256977']['name']); ?></h4>
<div>
<span class="shop_price">
<?php if ($this->_var['goods_0_16609000_1523256977']['promote_price'] != ""): ?>
<?php echo $this->_var['goods_0_16609000_1523256977']['promote_price']; ?>
<?php else: ?>
<?php echo $this->_var['goods_0_16609000_1523256977']['shop_price']; ?>
<?php endif; ?></span>
<del><?php echo $this->_var['goods_0_16609000_1523256977']['market_price']; ?></del>
</div>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</ul>
</div>
</div>
</div>
<?php endif; ?>
