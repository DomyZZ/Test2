<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
