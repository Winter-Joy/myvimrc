<?php
/**
* @property \Core\Repositories\Admin\MenuRepository menuRepo 
* @property asdfasdf
* @property  bbbbb
"
*/
class test{

}
//$str = "* @property \ Core\Repositories\Admin\MenuRepository menuRepo 
//";
$classReflaction = new \ReflectionClass("test");
$comment = $classReflaction->getDocComment();
$preg =  "/[\s]*\*[\s]*@property[\s]*.+\n/";
preg_match_all($preg, $comment, $p);


print_r($p);
