<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');