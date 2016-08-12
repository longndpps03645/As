<? if(!session_id()); session_start(); ?>
<? 
require("../config.php");
require("../common_start.php");
$errMsg='';

if (isset($_POST['btnLogin'])){
	$uid = $_POST['txtUid'];
	$pwd = $_POST['txtPwd'];
	$sql = "select * from tbl_user where uid='".$uid."' and pwd='".$pwd."' limit 1";
	if (mysql_num_rows(mysql_query($sql,$conn))>0) {
		$log = $uid;
		session_register("log");
		$_SESSION['log'] = $uid;
		echo "<script>window.location='./'</script>";
	}else{
		$errMsg="Tên đăng nhập / mật khẩu không đúng !";
	}
} 
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<LINK href="../lib/cssAdmin.css" rel="stylesheet" type="text/css">
<title></title>
<script language="javascript" src="../lib/md5.js"></script>
<script language="javascript" src="../lib/javascript.lib.js"></script>
<script language="javascript" src="../lib/varAlert.vn.unicode.js"></script>
<script language="javascript">
function btnLogin_onClick(){
	if(test_empty(document.frmLogin.txtUid.value)){
		alert('Hãy nhập "tên đăng nhập" !');document.frmLogin.txtUid.focus();return false;
	}
	if(test_empty(document.frmLogin.txtPwd.value)){
		alert('Hãy nhập "mật khẩu" !');document.frmLogin.txtPwd.focus();return false;
	}
	document.frmLogin.txtPwd.value = hex_md5(document.frmLogin.txtPwd.value);
	return true;
}
</script>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="document.frmLogin.txtUid.focus();" bgcolor="#000000">
<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top">
<form method="post" name="frmLogin" style="padding-top:50px">
<table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      
      <td width="786"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="40" align="center"><? if($errMsg!=''){echo '<p align=center class="err">'.$errMsg.'<br>&nbsp;</p>';}?><font color="#FFFFFF" size="4">Sử 
			dụng tên người dùng và mật khẩu hợp lệ để truy cập vào Administrator</font><font color="#0069A8" size="4">
							</font></td>
        </tr>
        <tr>
          <td align="center">
			<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
                  
                  <tr>
                    <td width="1%">
					<table width="1%" border="0" cellspacing="0" cellpadding="0" height="138">
                        <tr>
                          <td align="left" valign="top" class="font_login">
							&nbsp;</td>
                        </tr>
                        <tr>
                          <td height="10" align="left" valign="top">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="center">&nbsp;</td>
                        </tr>
                    </table></td>
                    <td width="99%" align="left" valign="top">
					<table width="250" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                        
                          <td><table width="100%" border="0" align="center" cellpadding="1" cellspacing="1">
                              <tr>
                                <td class="font_xam">Username </td>
                                <td><input type="text" name="txtUid" size="20"></td>
                              </tr>
                              <tr>
                                <td valign="top" class="font_xam">Password</td>
                                <td valign="top"><input type="password" name="txtPwd" size="20"></td>
                              </tr>
                              <tr>
                                <td align="right" valign="top"><input name="rem" type="checkbox" id="rem" value="1" {checked} /></td>
                                <td valign="top" class="font_login">Lưu lại mật khẩu </td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><input type="submit" name="btnLogin" id="button" value="Đăng nhập"  onClick="return btnLogin_onClick();"/></td>
                              </tr>
                          </table></td>
                         
                        </tr>
                        </table>
					<p align="center"><font color="#FFFFFF">Code Edit By</font>
			<font color="#ED008C"><a href="http://shopbi.net/">
			<font color="#ED008C">ChenZi</font></a><font color="#ED008C"> </font></font>
					<p align="center"><font color="#008000">Mời Các Webmater 
					Các Shop Thời Trang Đặt Banner Quảng Cáo Cùng Nhau 
					Phát Triển ^^!</font><p align="center">
					<font color="#0069A8">Liên Hệ : ChenZi . Yahoo : dqt_92</font></td>
                  </tr>
              </table></td>
              <td style="background-image:url(images/login_line_right.jpg)"></td>
            </tr>
            </table></td>
        </tr>
      </table></td>
    </tr>
</table>
</form>

		</td>
	</tr>
</table>
	

</body>
</html>
<? require("../common_end.php") ?>