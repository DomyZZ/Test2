<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');