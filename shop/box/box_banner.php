<!--<script language="javascript">
function chkImage( $param, $data, $item ){
if( !empty( $data ) ){
$d_match = preg_match( "/^(image)\/(gif|png|bmp|jpeg|jpg|pjpeg)/i", $data );
if( $d_match <= 0 ){
$this->err_msg_[$param] = $item;
} else {
return $data;
}}
</script>-->

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
<?
$code = $_lang=='vn' ? "vn_banner" : "en_banner";
$sql = "select * from tbl_content where status=0 and parent in (select id from tbl_content_category where code='".$code."') order by sort, date_added";
$result = @mysql_query($sql,$conn);
while($row=mysql_fetch_assoc($result)){
?>
<tr>
  <td align="center">
    <?  $str = substr($row['image'],-3);	
		if($str='swf')
		{?><? }
		else if($str='jpg' || $str='gif' || $str='png' || $str='bmp'){?>
			<a href="<?=$row['code']?>" target="_blank"><img border="0" src="<?=$row['image']?>" width="571" height="245"></a>
		<? }
		
	?>	 					
  </td>
</tr>
<? }
?>
</table>