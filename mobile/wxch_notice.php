<?php
function weixin_notice($order,$wxch_order_name){
	$time = time();
	$wxch_user_id = $_SESSION['user_id'];
	if(empty($wxch_user_id)){

	$wxch_user_id=$order['user_id'];

	}
	if($wxch_user_id > 0) 
	{
		$access_token = access_token2($db);
		$url = 'https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token='.$access_token;
		$query_sql = "SELECT wxid FROM " . $GLOBALS['ecs']->table('users') . " WHERE user_id = '$wxch_user_id'";
		$ret_w = $GLOBALS['db']->getRow($query_sql);
		$wxid = $ret_w['wxid'];
		if(empty($order['order_id'])) 
		{
			$order['order_id'] = $order_id;
		}
		if(empty($order_id)) 
		{
			$order_id = $order['order_id'];
		}
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('order_info') . " WHERE order_id = '$order_id'";
    $orders = $GLOBALS['db']->getRow($sql);
    $sql = "SELECT * FROM " . $GLOBALS['ecs']->table('order_goods') . " WHERE order_id = '$order_id'";
    $order_goods = $GLOBALS['db']->getAll($sql);
		$shopinfo = '';
		if(!empty($order_goods)) 
		{
			foreach($order_goods as $v) 
			{
				if(empty($v['goods_attr']))
				{
					$shopinfo .= $v['goods_name'].'('.$v['goods_number'].'),';
				}
				else
				{
					$shopinfo .= $v['goods_name'].'（'.$v['goods_attr'].'）'.'('.$v['goods_number'].'),';
				}
			}
			$shopinfo = substr($shopinfo, 0, strlen($shopinfo)-1);
		}
		$sql = "SELECT * FROM ". $GLOBALS['ecs']->table('weixin_order') ." WHERE order_name = '$wxch_order_name'";
		$cfg_order = $GLOBALS['db']->getRow($sql);
        $cfg_baseurl = $GLOBALS['db']->getOne("SELECT cfg_value FROM ". $GLOBALS['ecs']->table('weixin_cfg') ." WHERE cfg_name = 'baseurl' ");
        $cfg_murl = $GLOBALS['db']->getOne("SELECT cfg_value FROM ". $GLOBALS['ecs']->table('weixin_cfg') ." WHERE cfg_name = 'murl' ");
		if($orders['pay_status'] == 0) 
		{
			$pay_status = '支付状态：未付款';
		}
		elseif($orders['pay_status'] == 1) 
		{
			$pay_status = '支付状态：付款中';
		}
		elseif($orders['pay_status'] == 2) 
		{
			$pay_status = '支付状态：已付款';
		}
		$wxch_address = "\r\n收件地址：".$orders['address'];
		$wxch_consignee = "\r\n收件人：".$orders['consignee'];
		$w_title = $cfg_order['title'];
		if($orders['order_amount'] == '0.00') 
		{
			$orders['order_amount'] = $orders['money_paid'];
		}
		$w_description = '订单号：'.$orders['order_sn']."\r\n".'商品信息：'.$shopinfo."\r\n总金额：".$orders['order_amount']."\r\n".$pay_status.$wxch_consignee.$wxch_address;
		$w_url = $cfg_baseurl.$cfg_murl.'user.php?act=order_detail&order_id='.$order['order_id'].'&wxid='.$wxid;
		$http_ret1 = stristr($cfg_order['image'],'http://');
		$http_ret2 = stristr($cfg_order['image'], 'http:\\');
		if($http_ret1 or $http_ret2) 
		{
			$w_picurl = $cfg_order['image'];
		}
		else 
		{
			$w_picurl = $cfg_baseurl."/mobile/".$cfg_order['image'];

		}



		$post_msg = '{
		   "touser":"'.$wxid.'",
		   "msgtype":"news",
		   "news":{
			   "articles": [
				{
					"title":"'.$w_title.'",
					"description":"'.$w_description.'",
					"url":"'.$w_url.'",
					"picurl":"'.$w_picurl.'"
				}
				]
		   }
	   }';
		$ret_json = curl_grab_page($url, $post_msg);
		$ret = json_decode($ret_json);
	}
}
function new_access_token($db) 
{
	$time = time();
	$ret = $GLOBALS['ecs']->getRow("SELECT * FROM ". $GLOBALS['ecs']->table('weixin_config') ." WHERE `id` = 1");
	$appid = $ret['appid'];
	$appsecret = $ret['appsecret'];
	$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";
	$ret_json = curl_get_contents2($url);
	$ret = json_decode($ret_json);
	if($ret->access_token)
	{
		$GLOBALS['ecs']->query("UPDATE ". $GLOBALS['ecs']->table('weixin_config') ." SET `access_token` = '$ret->access_token',`dateline` = '$time' WHERE `id` =1;");
	}
	return $ret->access_token;
}
function access_token2($db) 
{
    $sql = "SELECT * FROM ". $GLOBALS['ecs']->table('weixin_config') ." WHERE id = 1";
    $ret = $GLOBALS['db']->getRow($sql);
	$appid = $ret['appid'];
	$appsecret = $ret['appsecret'];
	$access_token = $ret['access_token'];
	$dateline = $ret['dateline'];
	$time = time();
	if(($time - $dateline) >= 7200) 
	{
		$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";
		$ret_json = curl_get_contents2($url);
		$ret = json_decode($ret_json);
		if($ret->access_token)
		{
			$GLOBALS['db']->query("UPDATE ". $GLOBALS['ecs']->table('weixin_config') ." SET `access_token` = '$ret->access_token',`dateline` = '$time' WHERE `id` =1;");
			return $ret->access_token;
		}
	}
	elseif(empty($access_token)) 
	{
		$url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appid&secret=$appsecret";
		$ret_json = curl_get_contents2($url);
		$ret = json_decode($ret_json);
		if($ret->access_token)
		{
			$GLOBALS['ecs']->query("UPDATE ". $GLOBALS['ecs']->table('weixin_config') ." SET `access_token` = '$ret->access_token',`dateline` = '$time' WHERE `id` =1;");
			return $ret->access_token;
		}
	}
	else 
	{
		return $access_token;
	}
}
function curl_get_contents2($url) 
{
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_TIMEOUT, 1);
	curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER["HTTP_USER_AGENT"]);
	curl_redir_exec($ch);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
	$r = curl_exec($ch);
	curl_close($ch);
	return $r;
}
function curl_grab_page($url,$data,$proxy='',$proxystatus='',$ref_url='') 
{
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/4.0 (compatible; MSIE 5.01; Windows NT 5.0)");
	curl_setopt($ch, CURLOPT_TIMEOUT, 1);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	if ($proxystatus == 'true') 
	{
		curl_setopt($ch, CURLOPT_HTTPPROXYTUNNEL, TRUE);
		curl_setopt($ch, CURLOPT_PROXY, $proxy);
	}
	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
	curl_setopt($ch, CURLOPT_URL, $url);
	if(!empty($ref_url))
	{
		curl_setopt($ch, CURLOPT_HEADER, TRUE);
		curl_setopt($ch, CURLOPT_REFERER, $ref_url);
	}
	curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
	curl_redir_exec($ch);
	curl_setopt($ch, CURLOPT_POST, TRUE);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	ob_start();
	return curl_exec ($ch);
	ob_end_clean();
	curl_close ($ch);
	unset($ch);
}


function curl_redir_exec($ch,$debug="")
{
static $curl_loops = 0;
static $curl_max_loops = 20;
if ($curl_loops++ >= $curl_max_loops)
{
$curl_loops = 0;
return FALSE;
}
curl_setopt($ch, CURLOPT_HEADER, true);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$data = curl_exec($ch);
$debbbb = $data;
list($header, $data) = explode("＼n＼n", $data, 2);
$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
if ($http_code == 301 || $http_code == 302) {
$matches = array();
preg_match('/Location:(.*?)＼n/', $header, $matches);
$url = @parse_url(trim(array_pop($matches)));
//print_r($url);
if (!$url)
{
//couldn't process the url to redirect to
$curl_loops = 0;
return $data;
}
$last_url = parse_url(curl_getinfo($ch, CURLINFO_EFFECTIVE_URL));
/*    if (!$url['scheme'])
$url['scheme'] = $last_url['scheme'];
if (!$url['host'])
$url['host'] = $last_url['host'];
if (!$url['path'])
$url['path'] = $last_url['path'];*/
$new_url = $url['scheme'] . '://' . $url['host'] . $url['path'] . ($url['query']?'?'.$url['query']:'');
curl_setopt($ch, CURLOPT_URL, $new_url);
//    debug('Redirecting to', $new_url);
return curl_redir_exec($ch);
} else {
$curl_loops=0;
return $debbbb;
}
}
?>