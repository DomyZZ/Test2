<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');