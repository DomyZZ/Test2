<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');