<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');