<?php if ($this->_var['script_name'] == "category"): ?>
<dl>
  <?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat_0_88187500_1522071320');if (count($_from)):
    foreach ($_from AS $this->_var['cat_0_88187500_1522071320']):
?> 
  <?php if ($this->_var['cat_0_88187500_1522071320']['id'] == $this->_var['category']): ?> 
  <?php $_from = $this->_var['cat_0_88187500_1522071320']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child_0_88200000_1522071320');if (count($_from)):
    foreach ($_from AS $this->_var['child_0_88200000_1522071320']):
?>
  <dt><a href="<?php echo $this->_var['child_0_88200000_1522071320']['url']; ?>"><?php echo htmlspecialchars($this->_var['child_0_88200000_1522071320']['name']); ?></a></dt>
  <?php $_from = $this->_var['child_0_88200000_1522071320']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'childer');if (count($_from)):
    foreach ($_from AS $this->_var['childer']):
?>
  <dd> <a href="<?php echo $this->_var['childer']['url']; ?>"><?php echo htmlspecialchars($this->_var['childer']['name']); ?></a> </dd>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  <?php endif; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</dl>
<?php else: ?>
<dl>
  <?php $_from = $this->_var['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat_0_88222900_1522071320');if (count($_from)):
    foreach ($_from AS $this->_var['cat_0_88222900_1522071320']):
?>  
  <dt><a href="<?php echo $this->_var['cat_0_88222900_1522071320']['url']; ?>"><?php echo htmlspecialchars($this->_var['cat_0_88222900_1522071320']['name']); ?></a></dt>
 <?php $_from = $this->_var['cat_0_88222900_1522071320']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child_0_88236900_1522071320');if (count($_from)):
    foreach ($_from AS $this->_var['child_0_88236900_1522071320']):
?>
  <dd> <a href="<?php echo $this->_var['child_0_88236900_1522071320']['url']; ?>"><?php echo htmlspecialchars($this->_var['child_0_88236900_1522071320']['name']); ?></a> </dd>
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</dl>
<?php endif; ?>