<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');