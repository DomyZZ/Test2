<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
