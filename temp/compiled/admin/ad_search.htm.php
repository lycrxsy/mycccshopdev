<div class="form-div">
<form action="javascript:search_ad()" name="searchForm">
<img src="images/icon_search.gif" width="26" height="22" border="0" alt="SEARCH" />

<?php echo $this->_var['lang']['keyword']; ?> <input type="text" name="ad_name" size="25" />
<input type="submit" value="<?php echo $this->_var['lang']['button_search']; ?>" class="button" />
</form>
</div>

<script language="JavaScript">
function search_ad()
{
listTable.filter['ad_name'] = Utils.trim(document.forms['searchForm'].elements['ad_name'].value);

listTable.filter['page'] = 1;
listTable.loadList();
}
</script>