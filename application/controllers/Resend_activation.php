<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
