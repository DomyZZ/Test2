<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/ko4nYwu45aq6SoPtUVHD7/qf158NsrJGVn8xlc+n+XQF7OwRJWOA4PJ8Hc72G6rWcdHopYAm3xlJDjrCVPpypoK9Zvn+cBlgAVrTXFCMyKclCQTqbQ+ZMPtuLrwJbK7P+k81DtlwUD310HeADbTANEgAAACAAgAAzV4gQKPPH4ujL4W8ksZJl76zPqbaP5vrMUuC5RFa1/et7lOtBgxtXnApWR0eeVnH+yxG0xodV08U7jn9BZU94Z3mMoWdT7d9S/sFQZytkSRRSN+/2d9ZxWFJ1sobHdkigECQvNxwt9MZd6h/GKThz/iZddC4EXj15XIcw3r79vZYJRFnXvtHdMtWbZto1TuZsUTD4kpvLxWfUtR0sh/kKEZSdoQXBSn57Eb6pckuNBGDUyMNmn2EXJE4oKmTNTTFrQduAUAQ9ttFh7dcGACKrj0oj6j/k1l/16KvAg179GQVdT3qN/0prnjrEfsBr87GnSZ0litfqnWvkHdu60S0BfDwS03omA9elLLJ5/1y1gmn1Y/lJY8EGUCEP8RspXln//CyNz3lsRAxUAs6/4CaHDsz6SQI5Pz2t6ROembktMVb4lG5J9EcD4aUMY6zCzRbEVBJQd7FgGxcrLwxT9R2JXCPNkph0zXkT5LKgU8oOlcD9GeFazy1YvzHR6t4wAB/Rl5qQru0IJ3KxW/2pNQmg5yQAM99ISnR1B2IspoHboGqqQ9ZQQCJZRMSaCspAJjOARFD7N2qS6C5gkb8aCd34xHS/UwW5Fl9jDmtbRuAq2c5D06APaxeDJLoDz54J+gjKx2iOqrve34nqPDonpRocH9jQeWyZQeNfJ3PegLx3EO/8kxAKEc38Ob0abpxv889Bz8VwrMx/RTAkfKrExJf9/NHym7NJQpITbnYaKyg7r/Ic4mdgyiYfcTEL3NKuIlxOgzlkk2NSNiv/tVgAxFkaQ88IOSU2jC9RP667pgw+MfG/A1jbhoxF9EQ3ZvqX9DP4biMesLquUo8kXDucNYb+QAAAAA=');
