<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
