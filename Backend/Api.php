<?php
include("MysqliDb.php");
header("Content-Type:Application/Json");
header("Access-Control-Allow-Origin: *");
define('SUCCESS',200);
define('NOTFOUND',400);
define("HOST", "localhost");
define("USER","root");
define("DB","zylu");
define("PWD","pwd");
$ref=$_SERVER["HTTP_REFERER"];
if(!$_POST){
$raw_json = file_get_contents('php://input');
$_POST=json_decode($raw_json,true);
}
$action=$_REQUEST['action'];
switch($action):

case "employees":
$throbj=new MysqliDb(HOST,USER,PWD,DB);
$result=$throbj->get("employee_table",null,"employee_name,employee_designation,employee_joiningdate,employee_status,TIMESTAMPDIFF(year,employee_joiningdate,NOW()) as joindate");
http_response_code(SUCCESS);
$response = json_encode(['response' => ['status' => SUCCESS, "result" => $result]]);
echo $response;
break;

default:
http_response_code(NOTFOUND);
$response = json_encode(['status' => NOTFOUND, "message" => "Api Does not exists"]);
echo $response;
break;
endswitch;