<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');