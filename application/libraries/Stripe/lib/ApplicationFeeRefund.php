<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/5gsvxEmyP7IbvuLalhD5R0ow+4cRpSia+/+j7YBsA1/tR0zkVE178owyu4nucPOOZNd9jyAf+imBGEBvvNB7iGo8toS/AmH/EJV/7hj4NIcsh8Xrig6Q56lQbwDz2OH27T5theCNPHQKe7yT2EAIjUgAAADwBAAAeT5BnVB+ZJ/cpucknaaSNJ1SLSiY6N4KHaZ+CsSQJzqW1jMMQxiGdKUTqpigdrlzPZXZyJSNWFW9nUzEOyhdyG0KHnDLYxfOVa9dQvQcz012GebVGaBU6hBnYzTon7HZm/qC1EUIjyCBzHbNv9B52awRedHlcfNZsHjKw5ghj69yZ4bs0Md+UNCnzZQwh927UDQHwgYauTAtzDQGWvCaWfL7MpeFVvL8zKr8LxpI6pFOvPEn8GAoS3i0seVKC5tqs/LaFr+jIgL1XfWoYP9EYJUm/7wGWHxUOtWSry85EEOdeiIczFF1RMo7G4+mHVMT+eVJUY5V8HOt3ljbowshi28O9c2i2FddCwkTyTqPc+jwuD2DOztPWrI98OQbmKJgEXZxthuEEZz4Sz3GvN+tDcGQqbz3iUz6SDUJ0wLndtCinpbePj3Im2nIQZktwAauk3aGLLeKm3jfWWZJjUGr3csyyqRhG3tW37+Fs8wvjfiFnexNF3tB1ubXgWiu2WXjIklfktoOUkoZYIlqq8GgpaXKa7c35/ZuuYUa8zPNqK98Wq1eHcAR3z3nFwqjwsP4XqwZB97ZmVWeZxSF1LRhCwChF/Oe02Nr9UC5LKJtMpwLOkN7Gl2iCE6UGbtV579GBKbwykdi3Rah5uA9m0dU25WmI+qDwulIaTb1WCsoH8rZhiFLxiPX0S1Oaj6rJvrD1j1siup8lFQQz+h0PnXN0xEbYUVeMqhS8wd/cMmn+HP9mQ1XfsD6lao+OaKMAj5hXBX5DBuXvhKmAc6xywrFbX1eM2sMM/im+bo5bXwFn5R0lUoMhc3dN0NK3Cr02sIz+pOqzjiQmrSeHdTBv6f9m/S0f+ARTKFLq6fOHXnbS5swUTMfuQIiPR1eFqtSBRtiiDOo8nVBIOBfDq5S/DNBwu8aC1Uzp2QhC1FN5ZGUrrDI2KpC0r3b24LTGpodOQqhYCiWYYrFIAGRMPKzK97hzJgSu5gYLBREjPG5bsXHGNcclKZXgavfkBAAvnKZloI8RF7lP+S6qPnxJJvqq2cnm9D8JIOURP3j4u0CpSpIz2rgwP1EnukLbVQxJsOUSJQmb8uH+Q9T6qVHXNIRZoZAfQjwvznbySXHg/6WCvwWZiB1eeG3pPB/37qKRpD3tev5mu1jifOnrRvCj0rU6K+5YbpQVCX98M1lQW5wZ7hSUmTx6qH0xRnvmqsdtsrR+2cjkgPu6/MSa2wdTzS/SFXrVxV4gfoX+W04H46+CfwcCvT2v/dpaMaor8ZtLBs05diEUH2vYsSwgP2UUIDwEOiEgfNXyLW7++YBJsBgo5D4cF5GB0UQNSzq4PhwxuWgnqOCYXkui+XGteAmbvHI2EvciP5e0+inkS61cdEJMWhOkBtfKiftBBVUKL6iZof6KidtArbxoOcyMBOa6KsPUv+aRbqxtijzpWGQFLH/ZTAv3hX1Wi089xi+3DdY/28n61Cs9OUYw4D0DknN8VUubmKZ/mt3i+H60Y/AQIOzxNoJUh+drYgIQoBz+tV4wKMqeCm0c8U0vFp+Hzew3s7Pzx7sdUuQH9VNX3C4U5gsyiz8jIy3gVDnACXj4M5SlEjR65NRfZfyumwIv0Kd9+sjmRKkNg1jNOnbu4Gb6aWGnrl+jnKPX6l8OBWffNcE2HfI4Yk+qlWiFWixLV0Q78BObCsIdwAAAAA=');