<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
