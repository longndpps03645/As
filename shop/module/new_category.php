<link href="../css/css.css" rel="stylesheet" type="text/css">
<table width="98%"  border="0" cellspacing="0" cellpadding="0">	
<?
$catinfo= getRecord("tbl_new_category","id=".$cat);

$parentCode = $_lang=='vn'?'vn':'vn';
$sqlParent = "select * from tbl_new_category where status=0 and parent=(select id from tbl_new_category where code='".$parentCode."') order by sort, date_added";
$resultParent = @mysql_query($sqlParent,$conn);
$i=1;
while($rowParent = mysql_fetch_assoc($resultParent)){
	$isHaveChild = isHaveChild("tbl_new_category", $rowParent['id'])?0:1;
?>
	<tr onClick="return showhideProduct('menu_cat'+<?=$rowParent['id']?>,<?=$isHaveChild?>);">
		<td valign="middle"><div class="sub_tab"><?=$i++;?>&divide; &nbsp;<?=$rowParent['name']?></div></td>
	</tr>	
	 <tr>
         <td height="1"></td>
     </tr>
<?
if($_REQUEST['frame']=='news'){
	$catinfo = getRecord("tbl_new_category","id = (select parent from tbl_new where id=".$_REQUEST['id'].")");
}
?>
	<tr id="menu_cat<?=$rowParent['id']?>" <?=$catinfo['parent']!=$rowParent['id']?'':''?>>
		<td height="20" style="padding-left:8px" valign="middle">
		<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">				
<?
$p1 = 0;
$p2 = 1;
$sqlChild = "select * from tbl_new where status=0 and parent='".$rowParent['id']."' order by date_added desc limit 0,1";
$resultChild = @mysql_query($sqlChild,$conn);
while($row = mysql_fetch_assoc($resultChild)){
?>				
	 <tr>
         <td><a href="./?frame=news&id=<?=$row['id']?>"><strong><?=$row['name']?></strong></a>
                          <em><span style="font-family:Arial; font-size:12px; color:#666666">(<?=date('d/m/Y',strtotime($row['date_added']))?>)</span></em><br />
	                          <img src="<?=$row['image']?>" width="150" height="120" hspace="10" align="left" vspace="10"/>
						  <?=$row['detail_short']?>
			 </td>
		  </tr>
	 <tr>
		<td height="10"> </td>		
  	</tr>			
<? }?>
				</table>
		</div>
		
		<div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">				
<?
$p1 = 2;
$p2 = 5;
$sqlChild = "select * from tbl_new where status=0 AND parent='".$rowParent['id']."' order by date_added desc limit 1,10";
$resultChild = @mysql_query($sqlChild,$conn);
while($rowChild = mysql_fetch_assoc($resultChild)){
?>				
	 <tr>
          <td width="100%" align="justify"><a href="./?frame=news&id=<?=$rowChild['id']?>" class="content_service"><?=$rowChild['name']?></a></td>
     </tr>
	 <tr>
		<td height="1"> </td>		
  	</tr>			
<? }?>
				</table>
		</div>
		</td>
	</tr>	
<? }?>

</table>