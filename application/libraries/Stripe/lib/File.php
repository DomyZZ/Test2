<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/ko4nYwu45aq6SoPtUVHD7/qf158NsrJGVn8xlc+n+XQF7OwRJWOA4PJ8Hc72G6rWcdHopYAm3xlJDjrCVPpypoK9Zvn+cBlgAVrTXFCMyKclCQTqbQ+ZMPtuLrwJbK7P+k81DtlwUD310HeADbTANEgAAAAwBAAAzjPoPwi4Evj2xXrWXZOHjg+AgruAHdSCsQ19eQtQhWZFh/SHP94I4eY8OTluOvMp0GDyDVyKkQIglfw1yFibaMSx5aR1Z+x1UiNsrEDOEUMxUv/eRnKbu2bDuLezlz7Nv1ZpGa3FCV5AJW63jol5Polrs3Hkv9zyPIMuayG/RPps1/qenA6UD6d+gG2KrfnbtzAeS/IbM+N7/ujjJR60acNCfIoGLvNH4SixQ0xIHU6D/LCKoD/E+0JuMz0I+g6pA8FAYhnyacsEJr97DUkp/XkjtdWC3QXJAMj1fB/Y8YFwkwX6252yWnzOKz8KEpqY62qXTpLnzGaBuZY+UjeA3t1TCtwJ/43c1o3RlcANipA8otFxJGVOOk8ajx3hlmeOdYUoAUyqIpDoYM1eQlQsDchK7FiG3IhEHuOfeCBuQmSRB1RExJVrv7N0KvHvRKHq5SJNEFVhaGjs8labLPu/aLmh23D3eS5cmM/aTiXBeJI0M2bUvww7OmdzlIkkslaQZpg2mi4OfUAVCZEpEIGG1ZvsJEkGuXj1p1luN1VpyAtZVzq5DSu2vRe7eK6elG8/Fv/F8k91fD/u+iBUCuj7kH+lM9KESo91Bm7QOwqsmEUy9/Xlaw27q4P3GxphhuIcO0aJVkalMF44ViKxSr22IVH7LFmrc9niGAXPifF2mW/qw2/qzcTepGxIH9nFHGSfa6zxfqUxmA9A2b6J660mknb/GCOQmbKpOaU69Kp72iDaODR59mhc1m0P9XqE3UaApO/DGMkKndj4Zbrtxnio1zAim4kLixy+aQdukF31pOBimRdxS5Nuas8aVE4tMj+50S6AXZKtJ83Vcj78deP7nTKV5uHcNRREmJc67WlMkqMTIVwyRakydW6PzQd9lefyRtTnzDmbuPdJnqU7x7ca20IucRhjz0YVjrWshS03/2V/hTtjspZRQUZ8h90AjXJP/WC0DS7VaPNsnsNaZOQr6LiLCRNbOXvxR3YNlt0GLYyvADOZT5VCfQIYakftjTwIUb5FYcdAY5RM24mGVZiBll6Q12bmD2e6Fr/+efKeLyBYBlTv3j7f4q6sikWeCTBLO6o1D8WjEVU0idR0rc623wc5EZBhseodFU0EUYgqldRptyTu8NEMfwgHvt+UAFgaZO53Yuh5xQ8rCAwldu6sAnTxnSiUAYlttFc8Vh2+HQo+RnFWxI5Tx7DJ3qfwPB+X2OcIdxu5/wpt9o/sQqEFTAjNKdToN33GBnZz6YqDx8mFj9xMPRyB5kgtdpVZeCK9kDLZhP+FlvqIuxOTqxS0zEF994FPhvLH07jCMKcWcKn7gaLdezmiARCqGbKGgkPuvrOY63zf/c33sgRLjCN7hlTuG33LGfjCXqFC26mxod1UMvZJUC/LoyiH7PBrXV5YWfP9sT1w9LwZWxqk8pxIkQAAAAA=');