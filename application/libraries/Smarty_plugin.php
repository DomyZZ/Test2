<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
