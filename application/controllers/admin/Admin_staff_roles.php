<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
