
<?php if ($this->_var['promotion_goods']): ?>
<div class="blank2"></div>
<section class="item_show_box1 box1 region" id="JS_limit_table">
    <h3>
      <a target="_top" href="search.php?intro=promotion">
        <span class="titico"></span>特价促销<span class="titmore"><i class="ico_16"></i></span>
      </a>
    </h3>
    <div class="flex flex-f-row">
        <?php $_from = $this->_var['promotion_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'goods_0_70484300_1522013392');$this->_foreach['goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['goods_0_70484300_1522013392']):
        $this->_foreach['goods']['iteration']++;
?>
        <div class="goodsItem flex_in">
            <a href="<?php echo $this->_var['goods_0_70484300_1522013392']['url']; ?>">
                <img src="<?php echo $this->_var['site_url']; ?><?php echo $this->_var['goods_0_70484300_1522013392']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_70484300_1522013392']['name']); ?>" />
            </a>
            <div style="text-align:center;line-height:1.5rem;">
            <?php if ($this->_var['goods_0_70484300_1522013392']['promote_price'] != ""): ?> 
            <span class="price_s"> <?php echo $this->_var['goods_0_70484300_1522013392']['promote_price']; ?> </span> 
            <?php else: ?> 
            <span class="price_s"> <?php echo $this->_var['goods_0_70484300_1522013392']['shop_price']; ?> </span> 
            <?php endif; ?>
            <br><?php echo sub_str(htmlspecialchars($this->_var['goods_0_70484300_1522013392']['name']),12); ?>
            </div>
            <div class="timedjs">
	    <div class="JS_leaveTime" data-timeline="<?php echo $this->_var['goods_0_70484300_1522013392']['promote_end_date']; ?>"><em>00</em>天<em>00</em>时<em>00</em>分<em>00</em>秒</div>
            </div>
        </div>
         <?php if ($this->_foreach['goods']['iteration'] % 3 == 0): ?></div><div class="flex flex-f-row"><?php endif; ?>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </div>
</section>
<?php endif; ?>
