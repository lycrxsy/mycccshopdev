<div class="wrap homepage-submenu relative">
  <div class="submenu">
<?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat_0_16743000_1522069450');$this->_foreach['categories'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['categories']['total'] > 0):
    foreach ($_from AS $this->_var['cat_0_16743000_1522069450']):
        $this->_foreach['categories']['iteration']++;
?>
	    <?php if ($this->_foreach['categories']['iteration'] < 8): ?>
        <div class="submenu-item">
        <p class="submenu-title i-global i-menu-<?php echo $this->_foreach['categories']['iteration']; ?>">
         <?php echo htmlspecialchars($this->_var['cat_0_16743000_1522069450']['name']); ?><i class="i-global submenu-arrow"></i>
         <i class="submenu-shelter hide" style="display: none;"></i>
        </p>
        <ul class="submenu-hot clf">
       <?php $_from = $this->_var['cat_0_16743000_1522069450']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child_0_16761000_1522069450');if (count($_from)):
    foreach ($_from AS $this->_var['child_0_16761000_1522069450']):
?>
          <li><a target="_blank" title="<?php echo htmlspecialchars($this->_var['child_0_16761000_1522069450']['name']); ?>" href="<?php echo $this->_var['child_0_16761000_1522069450']['url']; ?>" rel="nofollow"><?php echo htmlspecialchars($this->_var['child_0_16761000_1522069450']['name']); ?></a></li>
         <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
         </ul>
        <dl class="submenu-detail hide" style="display: none;">
         <dt class="submenu-detail-title"><?php echo htmlspecialchars($this->_var['cat_0_16743000_1522069450']['name']); ?></dt>
          <dd class="menu-column">
            <ul class="submenu-list clf">
            <?php $_from = $this->_var['cat_0_16743000_1522069450']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child_0_16776100_1522069450');if (count($_from)):
    foreach ($_from AS $this->_var['child_0_16776100_1522069450']):
?>
              <li><a target="_blank" title="<?php echo htmlspecialchars($this->_var['child_0_16776100_1522069450']['name']); ?>" href="<?php echo $this->_var['child_0_16776100_1522069450']['url']; ?>" rel="nofollow"><?php echo htmlspecialchars($this->_var['child_0_16776100_1522069450']['name']); ?></a></li>
               <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              </ul>
          </dd>
          <dt class="submenu-detail-title">知名品牌</dt>
          <dd class="menu-column">
            <ul class="submenu-list clf">
            <?php $_from = $this->_var['cat_0_16743000_1522069450']['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand_0_16789500_1522069450');$this->_foreach['brands'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['brands']['total'] > 0):
    foreach ($_from AS $this->_var['brand_0_16789500_1522069450']):
        $this->_foreach['brands']['iteration']++;
?>
              <?php if ($this->_foreach['brands']['iteration'] < 10): ?>
              <li><a target="_blank" title="<?php echo htmlspecialchars($this->_var['brand_0_16789500_1522069450']['brand_name']); ?>" href="<?php echo $this->_var['brand_0_16789500_1522069450']['url']; ?>" rel="nofollow"><?php echo htmlspecialchars($this->_var['brand_0_16789500_1522069450']['brand_name']); ?></a></li>
             <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
              </ul>
          </dd>
          <dt class="submenu-detail-title">热卖商品</dt>
          <dd class="menu-column">
          <ul class="submenu-hot-sale clf">
<?php if ($this->_var['cat_0_16743000_1522069450']['id'] == 1): ?>
<?php $_from = cat_hot_list(1,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16812100_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16812100_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16812100_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16812100_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16812100_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16812100_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16812100_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>  
<?php elseif ($this->_var['cat_0_16743000_1522069450']['id'] == 2): ?>
<?php $_from = cat_hot_list(2,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16835000_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16835000_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16835000_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16835000_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16835000_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16835000_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16835000_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>        
<?php elseif ($this->_var['cat_0_16743000_1522069450']['id'] == 3): ?>
<?php $_from = cat_hot_list(3,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16855400_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16855400_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16855400_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16855400_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16855400_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16855400_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16855400_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>        
<?php elseif ($this->_var['cat_0_16743000_1522069450']['id'] == 4): ?>
<?php $_from = cat_hot_list(4,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16875600_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16875600_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16875600_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16875600_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16875600_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16875600_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16875600_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>        
<?php elseif ($this->_var['cat_0_16743000_1522069450']['id'] == 5): ?>
<?php $_from = cat_hot_list(5,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16895900_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16895900_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16895900_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16895900_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16895900_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16895900_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16895900_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>        
<?php elseif ($this->_var['cat_0_16743000_1522069450']['id'] == 6): ?>
<?php $_from = cat_hot_list(6,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16916300_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16916300_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16916300_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16916300_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16916300_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16916300_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16916300_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>   
<?php elseif ($this->_var['cat_0_16743000_1522069450']['id'] == 7): ?>
<?php $_from = cat_hot_list(7,8); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'hot_0_16938900_1522069450');$this->_foreach['hots'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['hots']['total'] > 0):
    foreach ($_from AS $this->_var['hot_0_16938900_1522069450']):
        $this->_foreach['hots']['iteration']++;
?>
<li><a target="_blank" href="<?php echo $this->_var['hot_0_16938900_1522069450']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['hot_0_16938900_1522069450']['name']); ?>">
<p class="submenu-hot-sale-pic">
<img src="<?php echo $this->_var['hot_0_16938900_1522069450']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['hot_0_16938900_1522069450']['name']); ?>" style="display: inline;">
</p><?php echo htmlspecialchars($this->_var['hot_0_16938900_1522069450']['name']); ?></a>
</li>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>      
<?php endif; ?>
</ul>        
          </dd>
        </dl>
      </div>
      <?php endif; ?>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
      </div>
      <?php $_from = get_advlist_by_id(2); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'ad');$this->_foreach['index_image'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['index_image']['total'] > 0):
    foreach ($_from AS $this->_var['ad']):
        $this->_foreach['index_image']['iteration']++;
?>
    <div class="leading-product">
    <a href="<?php echo $this->_var['ad']['url']; ?>" target="_blank" rel="nofollow">
   <img src="<?php echo $this->_var['ad']['image']; ?>" alt="<?php echo $this->_var['ad']['name']; ?>" style="display: inline;">
  </a> 
  </div>
     <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </div>
