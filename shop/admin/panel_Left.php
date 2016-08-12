<?
$arrMenu = array(
	array(
		'Danh m&#7909;c s&#7843;n ph&#7849;m',
		'Danh m&#7909;c s&#7843;n ph&#7849;m_$_./?act=product_category',		
		'S&#7843;n ph&#7849;m_$_./?act=product',
		'S&#7843;n ph&#7849;m m&#7899;i_$_./?act=product_new',
		'S&#7843;n ph&#7849;m ba&#769;n ch&#7841;y_$_./?act=product_special',
		),	
		array(
		'Danh m&#7909;c N&#7897;i dung',
		'Gi&#7899;i thi&#7879;u_$_./?act=intro',												
		'Lien he_$_./?act=contact',
		'D&#7883;ch v&#7909;_$_./?act=service',
		'T&#432; v&#7845;n_$_./?act=consulting',
		'Tuy&#7875;n d&#7909;ng_$_./?act=employment',
		'H&#7895; tr&#7907; tr&#7921;c tuy&#7871;n(Yahoo)_$_./?act=yahoo',
		'H&#7895; tr&#7907; tr&#7921;c tuy&#7871;n(Skype)_$_./?act=skype',
		'Qu&#7843;n ly&#769; banner_$_./?act=banner',
	),
	array(
		'Danh mu&#803;c Qua&#777;ng Ca&#769;o',
		'Qu&#7843;ng ca&#769;o tra&#769;i_$_./?act=advleft',
		'Qu&#7843;ng ca&#769;o ph&#7843;i_$_./?act=advright',	
		'Qu&#7843;ng ca&#769;o d&#432;&#7899;i_$_./?act=advbottom',													
	),	
	array(
		'Danh mu&#803;c tin t&#432;&#769;c',		
		'Tin t&#7913;c_$_./?act=news',
	),	
	array(
		'Danh mu&#803;c Tha&#768;nh Vien',		
		'Tha&#768;nh Vien_$_./?act=member',
		'&#272;&#417;n Ha&#768;ng_$_./?act=order',		
	),			
	array(
		'H&#7879; th&#7889;ng',
		'Cau hi&#768;nh_$_./?act=config',
		'&#272;&#7893;i m&#7853;t kh&#7849;u_$_./?act=changepass',
		'Thoa&#769;t_$_./?act=logout',
	),
);

for($i=0;$i<count($arrMenu);$i++){?>
<table border="1" bordercolor="#110025" style="border-collapse: collapse" width="161" cellpadding="0">
	<tr>
		<td width="161" height="20" bgcolor="#110025" class="title">
			&nbsp;<font style="font-weight: 700" color="#FFFFFF"><?=$arrMenu[$i][0]?></font>
		</td>
	</tr>
	<?
	for($j=1;$j<count($arrMenu[$i]);$j++){
		$arr = explode('_$_',$arrMenu[$i][$j]);
	?>
	<tr>
		<td width="161" height="25" class="normalfont" style="border-bottom-color:#CCCCCC">
			<? if(substr($arr[1],7)!=$_REQUEST['act']){?>
				&nbsp;&nbsp;&nbsp;<a href="<?=$arr[1]?>"><?=$arr[0]?></a>
			<? }else{?>
				&nbsp;&nbsp;&nbsp;<a href="<?=$arr[1]?>"><font color="#CC0000"><?=$arr[0]?></font></a>
			<? }?>
		</td>
	</tr>
	<? }?>
</table>


<? }?>