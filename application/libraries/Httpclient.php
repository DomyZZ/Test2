<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');