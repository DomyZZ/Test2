<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');