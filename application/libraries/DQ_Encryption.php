<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/kjgFPgU//JOzSblGoJyWiDr4Ut1dNs64eFNDoyrBulQjN0D/yC9euMhQ8kUzTnzZhezwRji/8124gzkLPUYdbLrXw/LRYJufXmlHu7SP8NiRwQTaWaO+nPo6XmJH6Z2ZNTBi8Mjx7yTSc0wE/Phj8kgAAAAoBQAAOk+MQKy9UIEZy8T0Fp9+zWSH/Ky8qbXZU/fg84oY2urJWPFN5fau+BqNuHaZ3PPAvvg+iC/dTzRqqwAQprxUf9wG5kB9dHKMlGOOaBcAwiGVZoXa9YDxfSfQfvL7GMBCbnnKRT9BCz62BiL7uQhfE4FUOdwQRrTGiezitQ2lJpM5iUSrJo2sC307I5T7Uf3ZjtIUCyTnWMfJNtNuhszhGBRI6qWE45GRmY68MPNq+YP3OD6ANQ8os5LIV++Fl/D9LCsZxbs+kf9Jrr/kTo3a84PowSeTyzpMp4c7g/rcwxNzh/FtAJFXqZzaT3hpY5j8Joc8omwC7Cvz1Z/k/ctFISeBI16G7m+/NFbkLjEAQsURNjrmCy3wvXvTXhugLISM3IkKQ1+Wq/pQKfryxL0rtWyLcSX+s+IBOb0Fdv1GH/PtyAESxfkoxp/zjYxqpPyQjpQs1bVLsfc1Ck4Fh5TaQW4mBqYLube2U8YCMOtBjhUxUAxy1/ZF+bPax51xd6AlmeNKc4p+cdHVT5T7Op2JRmzpuVdAoOZ33041C3Oxj115qkhmbhwIIlP2fUwVOGAgqO+iiwkzQ6ePbsvM1zR3HuSZxOugNnB62igGW8hXhkCE9+GdyQc+jFXUK10h4is93hGMmE8NrgeVY4h/yO+KlB1q9pq2rvxn9G1/E339gCBdrCO1yiGDhIMvMGWX/FJjE0je7R3d6fyXOcgY0+mBt026WVCLMynwUjmV2v+RpnGf6zZxcmBTbSdXAEiLFfS+LS/Y3xqCxRrf3AgxDMQl+Lz771/TuPioaaL66xpb2RzUUl9wCthvBYdt5Tuw+p6+vp+kRjQdEbj3Cx/kfsf51yluH/ax0DsoKgZLAyfEEVPuWWDttcVmRuo+UKF3UqlGkk+aY2Rc8muzN/Phj/if16RooGeHW5lheA5G5RsjGyAGS3kCzMU/5s2tXBNruKuvQEVyv63chNCd6wsABa1ZcXBbAErTb/9CYhm6VGnFA982y3Njv73JuYRLuXUr/RT+/NhDWnLfUh5SGWHwbE1ewI/2eTVHZ6zbjMT0hNTAwUpjPrHdllw//xeOY/ctLdATBQkrLiCocwBMW+1N9xPyr4FiwP9nXKZ94FvfNuM0shA8Yq0ZFaIDRTdUnRrpFmKfzl8RqTdL2LH/2EG7m1ekNhDOjcid2BIt/tNF9HXiATYgPTtZ8qITjMMFEwyCQAlMcuPEGbSakO3pJ0qb/+VR5n2ySqjYjgeLfC48RhmsXpPCnD7ueqgHWky1hI5Wo8kCWFOKaLiWekTua1MWldxKSj6rZC6KPnIzFVdQgoELIKEs2npVxxRgog25UOfpcsRoRZPCF178S4QebJZBMhNDAjEel9XH1AaO3YcrRsK3rS6WzsVh+YcmSGGm9jl/ywXjzBpqRzm96eblJio/sUxGjGdbK4uTsLKdQJukDtwLx/l4umYXAA0vkam11VyCyEtxbEJQSiCqls7Ze5F6uWbBTYlTrS+9EjtJCfHeZTSsJnLiAH7bo3+So5CB4zxKijZgtDJns+Usz5rbn/LWf5WXduBTr4ZSbGdGgEpFqhcUoJqfq/lP93zBZ2szb/7lx2YtUXCCXf940fGQSHeHbLJ/Fv5wVYHzmEZkWFhOtAypeMMj5MzBdqPeZ+MI9/loF0ZtNuqNrNDVnpoECirm298YBCICwkvWmuAjICiL+HGfW3Zmlgt39R4MQYZ9GK3JK8psPPCkQTye+2Ns4Yj8Qf2uHBsWP6TBhgDcAAAAAA==');
