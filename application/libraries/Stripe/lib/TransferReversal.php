<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/S17TXg1WytBiKchDvI79iEgwCq2ANwDaUk60dYAC3JnAr4MYExA8pAJkFoL3fcXFJsjH+156LTrynZffhNPeK9u3GZVr/iXGN/nygQghkhPzyspxVzRLeBPNOZ+ZVSKDrT6LKWbHIsNTV7Qpw/pRlkgAAAD4BAAAp10/Mf5J3efgyxvxIpobwfnliPbeo87MiZFQGJ7T7gZNZ4jcOyRkMOogoZ6J6CzIrdxJUQZ0chAyETuWr1GKuxHvRu0hywE46n9SO1RaXt5RxtUnCMzUMrQK/AMi71uE2CxA0+SeXGutY8MYLvxMWOTTr33ia3+APRkOwLDQOIE4AM8VXVhYmM42+41ZhE99CjLgk0n53OHPLCMUUCqkpKzw52Fpf9eAT2UlbfgnNYkk3X+FJwDzUDYRhAJ95rWRyLsqCYu92WeeuYzHADfHQPzy/QMz6w6JQNp1Ch22uMFAO4XsKzn+yuEsZGswdhvfYYcVP01A0SiQLm6HEFyDMXkcVk4iG0lFgCP5SLvMs8BbcmRDEXO3ReLwfYJil8JV/mVbUQb2n3Nn73pJjwg0mnkm10kNRJCf5BStUgI9WJuWA5HkqbvOFY/DqtyQYsn5O3uH/Tye0uTgkzX1poQomfMYLmK1AJOnw9wYZPh47vO2MNfTkTamdBK7WOethZXE2plbsM87EXuoiySlDSKejAT+ucSQlfp0oaKxksCRmuSCxNFOg4IQrDpvMBEpkCu3YjbxJEc3pNnnGkLL8+XHSNVVa6StfizZqU4kZO0eEyE4rMVo1xusYr/wyTdRWxwOZXbB5t0UNwDO6/PTyxP0ggmb1OX56b4TXra6/Wn/rZYmvLEeFt/8x9OdB8BUweBLxqX5sFhtmfIMsa1Qw+zRD7UWHjNCgQ1W2mC8+oon+Pb1CsRx5Hg0QbfMqomJ+j1vgvkUe3tWVmJwEx0qDOSDSulwfeL7zt53dzM15hiTZ+T2MgLg081dYLaHdztSHqu/V8s7k+sAhNK+mynILL1ZyfV6AAqb+IW/tr4SMmVkpN12QVwHR62zKbYdQi916lyjHeb7nitWDmhmjYe9Qb7ttV7kPgyZJqy8M9T5/8oicK6hoUaHgHL+YurOg7p91HYblMEQraSQOIMaaKM4UYcVyVlsaI45RYpzmXvoUFefxorvjMVRwhN5o5FvZ5QpZX0CVQjvLm7f/62LBC9Ty7sz4Z/zybnfwPFJl34YpHeBKaagBo+RFYrTkfnnt3OYJGOmk4A1qsONqJjx2erUhBXZhxDqq2NpVrDjb5VY+t8BCZUN8nXBwCzBkXF7czFyG3tkVwhCmH99lZWx9F9Xc1GoSBrT5coOOdI+MGikCrMqKT+gXhY7VcrvU1UVswh0g2R8ZrxBH5S3kW+niwGbzp4IXA3ukQO0M6F6mFp3seovO2Rr2PL3NcEu5wbPu8PhVswhh9WVugBE5gEGotPHaheDrAu6wzeMaf5cqFJk3+7qWKlfPGq4y4Jd7eWp5Fbx1LaGpG6KtQ26ZF36yIAHbKS2EDL9p2zFSvA9eXumZwBBtzSlbYwHJ4nlS1DxEwwWAhdSkVMzCmudCusY2l5jBj2bzHLdnCBlSpheWEMisMwSgvxKHAeX1lzVrxeHcwE2GJTOPDh6M5xOToQDcBXXsUePXGuheiiZTK0JXALpsRHh4FHGJQ+MIBY7ZIyoJpjRpTv5SNdC8+a9lhVqPbpaNruHMs7UUc6VrPN7/Vy2j6C1MPStyO1UBRWfcw+pEoLtL9cMbkotbl890ejXls9SFXW/ov1/xf8vB9cZZ5VIGeziwcc7z60hExWbDsMn5eMPLEgIXepAJ5fhAIfaT73DwE+3q+qLRPG6gIffAAAAAA==');
