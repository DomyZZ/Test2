<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/kjgFPgU//JOzSblGoJyWiDr4Ut1dNs64eFNDoyrBulQjN0D/yC9euMhQ8kUzTnzZhezwRji/8124gzkLPUYdbLrXw/LRYJufXmlHu7SP8NiRwQTaWaO+nPo6XmJH6Z2ZNTBi8Mjx7yTSc0wE/Phj8kgAAAAIBQAA6iEAOWl5vFv4C+eoiLV0Akvnc/a7X1+bZNZk84KKJYOjdusoLrMtqjfwB4GmwA9QVWCg2cy7+1LQu9tgbJipiFWCLAkCueozjlyLazKvHvv6li+be42ay3ZTqcPVN+mC7GtqDcGzYyxQ3AC+OQ5gCQXS9PFDy75IfuTnCWqyKFZx8G1wt8B0/d8TpyCJ3wKkV/uQ8Gm59eMBbwWoJQDC6xuenBGbt3IdrAT4Y3VfeTWRDSHpOtZSuBavhjSJIrK6DrjeZ+I1Ec66AgijgLXlz/rU3WKRVw24xdEcxXbFzRVsPrTLGwj9RIY/zwcddN9+aMwQQaY4AUX5ldvGUllumMBiKafilhosIUZh55S4t+xxBlfxzzFOMMItBgRkg+8lI/O9hT9x4JEoFj4YTw957B+kwe8v/KLzIZe4Pq8RBCg/PsWyA7DnltUAytr7UgNeYJ/liPV7JDuSnJaOD08FfeDmBjkk7QItkwpVBwO8XaOBwyMe/UZv/jpqj+Vvphi/rrCSqtI+UbIFCeaQM8Dsx9oqpgLj6OPRi4NbihQFfAE/Ix8CD4gD9pw2p90tVaiWyEm1rfUbn4ihLnHtN1kiyQCp8j3htEc7TInClWezgQYYJP0fHRNboDnj3oqFEfZ6LKD2AabZOUDkJgcMq2g/pzGTvB1QSNf1lI6NCvDD9mmzT+iRlibY2DXocnZt21nU3Lb6QxCYUO16RDPlBErlI+lnZYZFmC9viQRp25hH1gOJM77unNVK/b2S3r7vv+3Ai6F2zF8LKwARvORXl9jWIe9hrBnx//U3haCEkw2mFVNlOktpAYOJU+kF3/BQs8l3qQVcwZrPQKQmduV9yrzXFpRrpp0oFnqjILcoB0eVHTaHYqVaGOg7Y7koG6D+040apoZ9ECQiq9mM3SxO52TvVKLVOLBOCbBHadOMVfpCMpPYxbKjKNiinHfUZ6tJvC9q91rtqWtyVOEcYcAYf1JZ4XouUAtH2yeJh/88w3iRs1VMlAx/a/rKZf+H4dLSkzj+6T/oc3rPDLH7sDM1DGynQyb8PzykTHgNz60khSV2lhjdJXTXlaJ8zIaWCAMKIabPO8Pd95c53BsP8AK0NzQafSY9dfF63sVgKHTmWoj0Ou8qeADE4nf0t0ptMLlqTWiVL6XGoDR5HbecmM3u84T1tVUD6frP7QqfNwqorwESmQ9NA8t7tOt2RazVMq3OuQZihM2lL4uqxGosGC/1qRvPu/efyuce6S6wIpl4by1FcapULX0vuIoAm5x9dk53Py94JH5q1V7Bu0BWFitwILBIJeS85FOfM819me6QG8Zjn+KnB56a1F5Li4i2aaIY+BwcEhoDLyeYmUuPJ8ABe0K1ZDHZqWj5Wy8BJHfsUA+0n/amGdYKAbrZBSJ3kkp6ZFSmn8cZJgT0ZWY0o7ZYzqk+WU3ELVOjeAGYExHNJi2Scy01VoRngYlm/9dvtEtXrdToGp+TZB8o20gM7wfy/htrv7wWO/7EEK2OLxt2YNRdlnGUfXdKsl2jY862ex6zuINqMmKSM5zkpokb+tG8E2lHgyRpxbz5FRNpRh6YWeHQ8H/yOAsLdTrk4GoAN/KNd1uPVYpgIxIA/gaP8KCWummrjY3eTsUHEQ6rIoC0qjhtp0ycc6pM6w2V15SwyjhCyqPsgnuox3//I6bzO1AWjXGRAMEwSBwRW/QqXsKNV1UoUvJnggtuQzkMWAAAAAA=');