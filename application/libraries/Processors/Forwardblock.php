<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');