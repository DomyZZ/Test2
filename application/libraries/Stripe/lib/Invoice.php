<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('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');
