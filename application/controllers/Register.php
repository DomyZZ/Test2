<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
