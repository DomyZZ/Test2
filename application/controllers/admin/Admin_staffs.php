<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');