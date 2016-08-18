<?php define("pathtodir",$_SERVER['DOCUMENT_ROOT']."/");
define('pathtoweb','http://'.$_SERVER['HTTP_HOST']."/");
define('pathtomediacontent',pathtodir.'/media');
define('pathtomediacontentforweb',pathtoweb.'/media');
define("pathtoadmindir",pathtodir."user/");
define('pathtoadminweb',pathtoweb."user/");
define('EXT',".php");
define('_databaseuser','u363842967_data1');
define('_databasepassword','philong99');
define('_databasename','u363842967_data');
define('_databaseserver','mysql.hostinger.vn');
define('adminemail',"tambao@live.com");
include_once 'lib/lib.php';
$kw=new KW_Hook();
?>