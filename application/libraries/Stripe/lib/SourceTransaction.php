<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/S17TXg1WytBiKchDvI79iEgwCq2ANwDaUk60dYAC3JnAr4MYExA8pAJkFoL3fcXFJsjH+156LTrynZffhNPeK9u3GZVr/iXGN/nygQghkhPzyspxVzRLeBPNOZ+ZVSKDrT6LKWbHIsNTV7Qpw/pRlkgAAAB4AQAAB4fgC1PNP5v3r5j9dBLBvQO6zqnyLTcdRrkC3h4JtoDaWapdmYo1kS54ZrzMBNkYYb5fmEIvvYCfZZ8kFSdZvkUj9qQd7sVe9utiAdg/+dEpZhRagk6H+7afB4K4hpDiV87QdCMSnMbu9feIB8C8Ggdlpw4R5jaCpCuuatkrRPRA7oX6tBoW5JfAa2rPcxG6d/dgGuLE4WgFVGcR149BuX6GY4zAmlaC8MQtKfL7WfXsPHOCMkt/PKyJRxRQAKkvAAuNtJcSIIaS1wlmNr3sG3RZwyzyzRA1j+ekYugOIwlSDQJpIzNkU+jn9lNl7JPxf2V1XIVQjYNLnh9iXmjtW06SHwgrra140VUs7XnRPb2uJ6Qac62FI+OUdOHhJF5dIPrsAYut+nrt6pN3IDFyy1RypbkloRQGNbn3jD1xRx0XALfEisGkYW3AzVmHqg1NtxvARm/Vq7OeJHQ6zAzd/2/7c3BP4ADaV9vjtuD5rtQHC5of0l7YywAAAAA=');