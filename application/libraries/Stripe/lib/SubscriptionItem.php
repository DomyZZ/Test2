<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/S17TXg1WytBiKchDvI79iEgwCq2ANwDaUk60dYAC3JnAr4MYExA8pAJkFoL3fcXFJsjH+156LTrynZffhNPeK9u3GZVr/iXGN/nygQghkhPzyspxVzRLeBPNOZ+ZVSKDrT6LKWbHIsNTV7Qpw/pRlkgAAACIBQAAb0nYBgPlh7A14YB/He4IGaodiRVuyQ2D//vnhLgtYp8qkjSeDqLGqxApXbCvuNEFNmGE0aLVKTlp+MSHtQrI3cuTOHqh3QOp2e5IsFd/sMsUZNaW1JS8wjNuVgpZ6S18Tyre47IQbESUVQHP+G3ZVRqOdQfK4SBy/PSUIR4XQM7hvnmmxk/V2EKrCmSbVgTfM6Jj6XSNhgkD0zaO3Cbojr2gMNvmv1xf164x5nibfNgHbaf87r/v5P1qe1KUpKelXRniqmEmlWlxGNm9iCNfSeMuioUD6XjEiLas/nXSsZYkEwVUHI0S30Ezez9isRaxsSAiZgTpti3iGUIju4/1CvlQr3lEWEABvzDWPh+9zInNkTbEDikSTztPChaJ1h83nAxoUbnQNuwQoYbZVzKYg+gVbn4qbBXeTt3Vi8g83iZ3HhkVFmYimlurChmqSch2rxQQar5LhVQmZNkHzmM9XW+lriMCrptiEtumc/WxXh9We/RU6Tc250v3/dDbdhiZxsDgBXwr7PSfxQpU52i5a0882pXyzObtMcNH0Vn7nDmTqt073P/jgvK3D3HVghBEaEx4WbiK2hET8/wIv3IqaS2wE7rbdic7/vhUmFZd31XSyid0evfKwIVM1yiCo96D6YnllfKbfb51Cjv5CyoPAOeJtqZH1Al74TVo2rFljG4FPfQHlVceSRDLTx8DkNj5ck9nWBykclDC16m+L+GPhT1u7Z+ccl9uRgTXJtytiyrMPA23IB6ARtAYxW9MjNFPxEy9FRddmE7oDH+RbzqjWenor/vZgC6XG2OViIZ0RamDXJRIShdmJdqvIW3RczYE2Mir5ep1Nr6C0axq8IDArt81bG0qLo480Cq80Rn62XFlH9FbHwXNNkjEBlFXw86GVWeom/GaZlnWDZKdiaeCuFjR8jylTL7VpN6aVXupsqy4op/MDdg0ds2e1eCDI3FppmnowVLOQUwCCeYzuZmZiZ+ixdwO4cYVJPLF+p32T8HndZVgFiw2lvvOKE4tRcVqQfplPWUwxL0NfTEvN/HOsRMQZqjtbSHu6c3yTcnFyC6lHAUPO+XSkv7e5tT5HZ8IYN0DVoxyEiWyrsgUEnMQrrhjr04AP5OAzXEI5j4505/LW3MaKypp+c0bMumHJNXsCR64b9y+CUnjHmWTQT2LbA5ydwf0kjzM2aF6XNENCDaGvcS8Ll47DXlJdQyXotFI6DOps1swZEmimWiV6IwnGBmdnYC6hU9XxWFpHcSxuTcJRrhwUhR2FM32JMjKWz0pKLWlLdEeha3CG30ljuLlUtxnQdTc9Xb5Vf0eDJ0LxnvtI65cmyZsIsSBn+8UOGfMBeXUwHajv1aspEIlcsJSZzQzfo26Rd16PeAqgBnrxgCi/CJBnbXfhGqFXe/q9Noc6KsmXk3hWrl3LYeBrS8rFbFt7Msg3WYJ4IuQa88KPaUYMXPbOqbfcZni6D4/z0j1Zgj1iTPHUeuIlK/kHNRk22oAjh5q3E8aXxjuhzEATA9z0XFo/ERAfKD5QSXCN6WeZW0tJVpMNQpXXmsdHIMq7XLUwvzHpbRuHtT5JsFC5FhgaYDygYQu5nOYZAOT8gbHn3G1d/d6oeullxdaoUu+Yuf69XqPIbegQGOtCHXDydSW/axb6A+s9p5yaZI2JTVLB2VyRib4uwHBqOjqgFGSRp7UMv4hstsXdaXSUof0vSB37qc8qvZ6rSDF/NiJAPGnYPgwZyD5O75dvf4kZ5j+yMEqvtGWuS51NihWTVWGB241g+oGuYn8+LfxGOGVuRu/LE32AQYRIZ7Rw855PEx0baS3izoiiHBHhfrnlkkyONvhKwx7qiCmRtsYVoqkddQKyQmLVOBpMNzbrswTxfckwJ/zKqD4gc1LAAAAAA==');
