<?php
if(!function_exists('sg_load')){$__v=phpversion();$__x=explode('.',$__v);$__v2=$__x[0].'.'.(int)$__x[1];$__u=strtolower(substr(php_uname(),0,3));$__ts=(@constant('PHP_ZTS') || @constant('ZEND_THREAD_SAFE')?'ts':'');$__f=$__f0='ixed.'.$__v2.$__ts.'.'.$__u;$__ff=$__ff0='ixed.'.$__v2.'.'.(int)$__x[2].$__ts.'.'.$__u;$__ed=@ini_get('extension_dir');$__e=$__e0=@realpath($__ed);$__dl=function_exists('dl') && function_exists('file_exists') && @ini_get('enable_dl') && !@ini_get('safe_mode');if($__dl && $__e && version_compare($__v,'5.2.5','<') && function_exists('getcwd') && function_exists('dirname')){$__d=$__d0=getcwd();if(@$__d[1]==':') {$__d=str_replace('\\','/',substr($__d,2));$__e=str_replace('\\','/',substr($__e,2));}$__e.=($__h=str_repeat('/..',substr_count($__e,'/')));$__f='/ixed/'.$__f0;$__ff='/ixed/'.$__ff0;while(!file_exists($__e.$__d.$__ff) && !file_exists($__e.$__d.$__f) && strlen($__d)>1){$__d=dirname($__d);}if(file_exists($__e.$__d.$__ff)) dl($__h.$__d.$__ff); else if(file_exists($__e.$__d.$__f)) dl($__h.$__d.$__f);}if(!function_exists('sg_load') && $__dl && $__e0){if(file_exists($__e0.'/'.$__ff0)) dl($__ff0); else if(file_exists($__e0.'/'.$__f0)) dl($__f0);}if(!function_exists('sg_load')){$__ixedurl='https://www.sourceguardian.com/loaders/download.php?php_v='.urlencode($__v).'&php_ts='.($__ts?'1':'0').'&php_is='.@constant('PHP_INT_SIZE').'&os_s='.urlencode(php_uname('s')).'&os_r='.urlencode(php_uname('r')).'&os_m='.urlencode(php_uname('m'));$__sapi=php_sapi_name();if(!$__e0) $__e0=$__ed;if(function_exists('php_ini_loaded_file')) $__ini=php_ini_loaded_file(); else $__ini='php.ini';if((substr($__sapi,0,3)=='cgi')||($__sapi=='cli')||($__sapi=='embed')){$__msg="\nPHP script '".__FILE__."' is protected by SourceGuardian and requires a SourceGuardian loader '".$__f0."' to be installed.\n\n1) Download the required loader '".$__f0."' from the SourceGuardian site: ".$__ixedurl."\n2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="\n3) Edit ".$__ini." and add 'extension=".$__f0."' directive";}}$__msg.="\n\n";}else{$__msg="<html><body>PHP script '".__FILE__."' is protected by <a href=\"https://www.sourceguardian.com/\">SourceGuardian</a> and requires a SourceGuardian loader '".$__f0."' to be installed.<br><br>1) <a href=\"".$__ixedurl."\" target=\"_blank\">Click here</a> to download the required '".$__f0."' loader from the SourceGuardian site<br>2) Install the loader to ";if(isset($__d0)){$__msg.=$__d0.DIRECTORY_SEPARATOR.'ixed';}else{$__msg.=$__e0;if(!$__dl){$__msg.="<br>3) Edit ".$__ini." and add 'extension=".$__f0."' directive<br>4) Restart the web server";}}$__msg.="</body></html>";}die($__msg);exit();}}return sg_load('40F8DD39C7C4FC7BAAQAAAAXAAAABHAAAACABAAAAAAAAAD/zdk5eCCXN1fSVL7bS2wTuk0NkDKo/N1IYuINHOfC4yvBI7AvsIXTbRIoIWYYz0S9/k188oW+OvAqNqbJ7CwjFV3Aog0nXLUCjFT6Qc2fdTJcMiY1wxC8dq/nHxesdrNxrRW0K5HKROupkjC8RmFw20gAAAAYGQAAwHbvVh1QKSy+M7Zp5UQOFnaVuLaqtbWfwRt/eUt6WQhCGFs52k8UTNYucd1Sk6VOe0PeeLRwlokhbCSe5/rB5gWfxe7cpRVzHH7PCZ1Gq1CnRq8W0Sr8CaN2W+2ypj7HRubY+rLjdLLIdbbf/OfhBoc58aVE3u5vwA0zPfkcm4GBbYcyIBCUs5u9Kayu5sq+mxh/l81aiREBZD7V0oaEbTdlk5IM6JxMOR6jXEPpQbjyauD8NuGtOUul/IePnxDUODfXhbeO/dEVZpQSMsQ1G8+uOH6RH9T7r7HmbqNM2QgRb37bSbyP0LOouwOIamDd16mWjOKITj/8cbpTfWSjrECxtgh6WYE0g67SuoGCqVFYK2v2BKwBXLQtFCdvabjIzphXZgY51gP3SrPhzQTcJjGbnI8jVmX19S7hKXod4F6Y0Q7hVWcoM2YBjQijZ6PZyA6FlFRH5Qpm9W/ZRmdfEj4EhIkuJC/JJcASBGUEdN2pYRbd4dwb8QXn72VoZBBW5xNZgepZd6czG/aHdtFI3VrC5kBlI3JnCa0RCMofpiHcyIHEDepVrLM7riluDeUmdLmftMmbFuFWwbgMzpg4DB3aD0/zkQ0/34IerDCg5gbNiCTo77emhEeCrQBrGq0fE8Xs9wrs/w9q7cq7ulEbmKjiEYlr9HkyUzDXj+kEDQDf+SwYOvHzZHgxvNIQsi5oN6qoSzZMvrioE1V+I5Uy+hvl8RD1SYEHT9DqE1iJK2RsE7sKHrBHdQaVFTiZZF7v/XniYjciMeXt3jrLomrGXq1bsNnPdOzgNa4U4tciKXSpyci+Z5yCKvWoDE01W/yD1F+yW4WWFexAKyvQWDG/WzXeDRrpiZ9JuN4BHLFP7V/dXWxm3hC3hxUtnsnvdm2ergnKSbc4PP83RylJdhDhtZGspQ6VQP1XJwW2bm9/vcRDkj7kz9r45jO7LeQZuEj2bico2h43K9LXBJQGz3KsBKzepFolHX1kRc7+6K60lj38YwZ9aY2xfP7ZtOdeYVWrY5Fzj8zN8YtkNCVSxYdX8n1/uaVLygF/NhbjoWH/+8XE0D76jYWeiR829KWB2mk2F9hqo3Ijwa8jGyejxxKnOiVBMURiNgm3az2IWzXKunEaEL1qvJmTG/Qwu002yItS5BnuR5WPqmERvTA4H8eHeqAtVcDV5xzCUAFog/dOu8cZxq+0fGVM4JhHFujT8M5GviF81tYwKAN+iGFdCe28AyXtfhs3YEChyGGP/gAFQXY5N3XlV6Mj1+dPxud4951QPfJn1EdCQg1oJVzEG808/hrZ5bOw5qkIqiwdnDatpaouOp8XNV3bh6tYpg5alXXy6hvu0NOTBEFzuSyH0Ysvzdui3IagAwjHXeRBRZq2j04kZoHPO5pvuxbBA2PkQ62v/Hw4vH5mW88bOZcjZlPI+aURjuCR4aeV22cRLQPA7jvFdVyhlwbCgqUWkOIHxX1IpYXjffF9SYX/feVJrHkdMkheiJyvOT5YT5OeJ5qQ3OMvxNTaH0w/Qpb/bp7zZIRmyTNd3fXMxDnN++KzHqKYgQZi2VCMex8rHb78NJIL0X7vQGCL1s+ZKl/CDOPpVfz3AejeP9pabwd3+Qc+2U4z9GZSGM5OqtFT9o0WshohFkK1ynqVQBkZx+G/5iFn6vrBpe0LGAx6RIeqeZmAmEIv8UAzBIJZ3jLssvcyKXM9YPXHQ6py7YZB6BmmpscyPGqK3kMASrFnTJErB841NUhwXzQ4qIol5Tmkb/1ftkEXZ/yOpPvzct2D7xHKAbmrUhbXxbx5V0MRxBXgYXI9bpGCqpZKL+tzZHeL9nSt9RBfDtx6YWxei6q6R2m6L8QZ53cwMl4C8lyaoL82hKW9+MBpARbl7WOlMIaKtyeYueAbxYLqPaLgt3HQg8opdvAxemiTdieehVO3hVH/5Us11M7tkI5V6IgYeQO1Il7VtYCmtuefpwMhFH8ku7bSr30I3jMTRek0HZ6FUGHCKyFekbx5xD+tRauqy1KHjqzldYDZa0MRUK2iMvz61dGmAbh4XSNIiILAQB606/B4nTL0AyH+FPDvWYphrhT415BuIEutOzQpFfoNMk8IfC3bzr6iouLPI5+pYNiVsBj/izUSYkFfuuFKjAKLiY2wHczr+OhVUAagtG2Kl/bBDKc2iBBZt8Jeikjy7uNpFeyoLzOKb9EPnNsNGHGKrx4NvTUjX3os9iJ/2ZBRZPyu6N0Bg7WO3jTXCBiHfmJGsBpbpgjzinYeRsjySYEOIRvXdL6OwBEti6KjPbFfJjaobLK5Nn6hPCgzZgq+moD8aH19Ju/8JzF7yWSU2rnGPNswhjjUCvNnXM3maDXULg8y9VwKsaD2+ClJG/1SjNaIp1SH8yDNeyQ4IfO34QhMfdQvHwq9h4mcq5zPJriyOPcK2v55jthphWS80eoSJdBXa0IDsEDpR1mVohKOlL8aQ2/z2mBxYL05n/GGveCi1QQYbHu+2WYQwNHSYYvUFy8d5hL0ARZtMDwIpyeoebWhSz5O9YHlOyrS++913KbIdA7kH3T4l8R8HwwJSNva+/zyBK9SLTOX3y7isB6bTYSXHEXzcGrU2A2kxRhbTxl7HFBY6cTsnrFymoTATbJMBat/Ng5rl2z7Yos0K7q+0prqmtc0KQrxcr0U+FN5AaqKKCFVzasu4SK1J5W2QGHSWh2DsjNLg6IZQoM3+0Rnsxebp15128jzcDXrsYhfYWVxfWQMkgLRQiHodg93FTJQeEyy1eKTnYMdWeVrWI6wsPkV4pcv4bTWHVHAXMCtq/Ud4Su54b6soe8DkV7qBn6o5HvwMPSNyJPKKEza0gs7zAzC4UX0NW+uTkqWOvSHl5m4MFkMnCPAFp1KgEOwW6xN2/1/rnVSZWE9mqPXsFd0zSM3x40/knfmlYeGFVmw2dPepWsVeMnBDsWjJ6fuyPYNU58JYTdC/rI+ghJzYCkan5HChdhw/PR4tUm8h/dnX3ICfLVlN3zIH4AYd9XM6jeM/Qn1V4Sn+uoFTEAzWcDKMVpzS7fx7qsrwEk3OTMWthhsX73V5zbKe+lrj5SwP9gc6zxPmOCYHdSDZV7adnz7dlUsTthuYEfEGEgBvTmtpo4E75L85uHUK/zgjUvj/CgBKUdekrl/Sn5z8beiEfwgQ5zKuPFXaYibIS7N0JmLNFXSrHLNmC2OO8BXvNk64RP6ybbpwEqDg166YFd2QUKSivT1HhTA9LJlnHTbpSCimnvoRwhDzG6dikhwwJwkIsk//Wv5gQYgNqa7RFVXbK8j1Hlj9QOttnq2ngTXMJxXOBSVdXj4L86utARbN5dwRLWTbmiRowYqrUPMEVT9KrmyAqYtya7fLA71yIpjrnrAcy9d3HU0UvBJdy+IKw2V4UrQ0I0t46rzjWyiwBChn/QNIKwzwzpXY8/0m70x/brrTWTSSCEUjPNYBaE8fof8ZQOWi53DPmclYTBz+nIZc+xrvfE46gIjGXfK1KHS+c/q0lHHiq6MzxTcb4qeJWW+BoPYJcEZ3zcG0T674yixNMqP20qnGv0WhwraAgMn7/nPECavSQBAndNkW1sW2aCgNKYBoY6uq/lFWdAdSbMOrC+BKT5zacqpRAH5mtbb9Oe7qvzNJWJJZ0vei5l2tg3ePJmd6CILm4cA5pwX7RotFwwnLWozfmpNRiCTQWQwX+/5acoAQR9D0NKWlGJSnDxi62+11tscG0D4zujy17Hsl2gPiJoLh5dz2Z8TO5LpqxOka9p2u7i/vn0eY7YgW7II2QFWTAqJs6VKLQ/n8OXWcp3DODizOWjOwFqiJ/8frf5H0w+2PRj0SvDqAr7ssV8pnXdIU0yPv7X4MaM8V2AOFJRlmC57IGGoBJLWJwdClTm0YIH/hkYShYSfqkSM/MO4FcF/jqI0BW7/j5L7P6zlMbSEAFNV4tDB/tIOEUNwiJYk3US0HRFVWIxZkAclSPlU3Ed5iKcx4pZ2Twi+aHoGRSj7cbX2yAa1C5thVq7+eDCEkl4k1AyU0l3hRlfAghdjzn0FofVUNR6OuPg4IhG6/jvTM5R1dZx7B45cfbXI2TbrWx9xAnXb6XYB8cVNGXUt7iOhu9YIuakhxRmWwVs2+Oz6l4d0Z6AysOtwyOi80dVBYu+lsBQnt1uJtEd1rwwj9QNBKxqDmNCzD61Y1CHJ5n91plAuTG3z1DZQmYF0HjkgYCK3qIFLdM5buThHHHiSWXuxciv8Uo1RP8VTK8M9A9V1JUF0jvqjRszwm8ucSPuXUrH1tKLwhAJZ9hN0nXq0AFVnAaHn09uEY5dqrzElMiYXnlon+fRMRZaWW1+Yx8LEKlyIT9+yLnkMzBS0T49SRplDxDiHSvI09F3NBfJXUAos+qDYOpC3C+n6B3tvYfUJNmznHQiBA9ocIFtGx2POPIhe7QgcEhgqC3a5UjdHzLSCINdElzzJ0RggBSxIbu78zoXZNHgD2eHdaR4rzueZcPI7QAV/0Ee+ym6W6j7MCjZiOYPxDNeYSIdi/XknyiT3HCi8Nol7giu2ASkClH8SsW6FDHIFT8bah5bOmb9Ih2eiC6CTpS/mkv0vELtkfOK2krE6q5wVnm6QSIxt4XOjZXCqPJ3MP6bhqkzf8RTh1QVyVHAU1yW21dYLTJS7XHR97+HdiPxoDUCh74km/LcToWFbZ2+TaYzT0FVR5yNLHYvrt0Zz89ytDlrsafFV4faIiKkS6kA7Pe3cukLsmTQPt+JcBgoDKfIzvUOg5e7WmH14QYW+qrXHAblUKOffbVzkrvVsCvZ4DW/PjpoMGoWAPOVUNlcoN+CGCix79ZvBGt9umytM/IN/dT0cYU/0FSndIEt3SFwZVmoXpkkZpir0Nr1FKOml5RUbUlNKERx7kN2zLmHwSi4eFKDAtoELbxJA0kKA0J6C62+bj8+edQznwMEdBPlEbjfS5d5xZiUH1OUalqmlXzhghW/KgfwaqZsIVK0scHxZixIqHfwM1l1Mn06Vjkh28P4rDNoTUCEBXfIuN6PbiipsUYyFNCEvTR/aeHXYi4ysPKyeU9XhAwYy3qeBEHYEUM6Hm+6Ju0xpBPbTn1Jd4c69LQFgYoUNh1NiFceTT6lLT9+1vPL/uQwpVNFKTwqhzh8QI1Hq9XF3ZbGjmwZmmYUkQm751H1mvZ0prwdqgPQZ86osU9Wjb/YZTxCwQEqK+A+LCyF8q0Fqr6v5ea9t8cZNlukhEImL9fx2lJO4eARzDEipIwQt87iVV2kKFMP7qZPxDbaMEYXeqoOxu1sNrdivmODGyF12nuVb8UAEPs4Hps56oYNyeNrG7Su9mJJLoFq1EgPdeU9YJH77EK2uiu1Y3bZwoQU4KutZ/vXK3Rdwsn3w4bAhszJqmaDqlJg+TZp+CZx21Fowzb3TqF6UW1ud6NGL/G9ttemFsRd4xK2up0PJF+WWkqmCs3mro5jJWrKqAphlEiYY5fgmX8izH17W7v19xSZPgz0txk1SZ3Yy+oPIgxIMWbFj57hN6+IbpUyzMmrGMzhPXaHOc0u9SUgQ3IRhSAIwhzc1K+mNIoxK6+ndhfV/GkJ16YLUpTuc1jJ8d85TBGsULeCgIHTIdPrSmVWtwrKKgbmwKaw4DJGrq8PIHFv16VL1IKxnfDMEc4vimIgU5dv+DWcftrB3d34UO1q6OqeF39zP7GKte0i0CSqz4L7qc8fQ/xJJWudRE7nMPGHpFzv+8Qaw07gUlS0jpW+BO6lSOA9N+hInxwPotuGxDm8OOv1ZO18JZBhV6Hbdz8G2vpXW8GHT0R9FKr7G7jvQCDTXNeAzdCHZnO4VJViRTEItiXgMUjF4R6qmlPQv+EYqm+j2aqObf36rHm7jxHmeRpGf9l4hq0ZWB7zl/eCAGQ4Rs40uAP7KNDFbDSvtQP28qIWX8fg+MjdiB+SpJUPXD8130H6/huvHeRzGjTlK//IQcYxJS3wdhhO7tBPtEfxpeO/Z4v8oI1P2TTk4jHkz7t6YhRK1cs++/vEzqwmx305tZFIT2KUzEbgC86beheAIe1DCexQBoRrCUNi1Qv6KSH+vS9q4eGQz1G+MlmGRkftrgk02aAX4eCf6KNPW09GT6yMvor2J+Yj5Npiz3Q2W4+7fB6+wqYh/+OTYMySHr/VUZ8MMDypSeDGrebJ2uM9ORs0cbygpR/rSQLwdBoJyYFPr7Nnao4fKzHSvLN16vlbYvgag2WsDNtIbWdOh1qzo/11IZzgQdufFeIm8HOHI0sJJtDETFZvS7rtRpXC8VJkNPA/0rH3cVqgiraKvOy+R0fQ6rEZKXHKjcWGu6dU6Q5OWm1w2wadKm6mhcKShQTqrILVJAYY3beDTzEhP4mcZahprgzjZQgNOndB5l9Lf3QmT6owMQZNpXqGXCqVnUBL5FjMTAz0fxA396GuSENjzSpXnGOghNlVs0ZWrK6CNkVBtkwgCijbeyM+vcOmGFmE6GiG59SJFsJAEavrQs7pk9Lnkeybf4RRiWe9FVvPhI9jVBKyKEZBFCnQTEZHLJ8bQNk/uRS0+ex4N3cESigPOVFGz0VJZoOf+nYRDxEJuNDoSOKi1Xff+P8JxC0W9LfHZoTqc3xmT8aEVvQVV/Oa0xyBJkuv70NakLI0xGIsKVzBoNKesgtb/gvc+M0ex6C4+GItwjgEGZKkx6qjqTWrCkURCBuh4+M5pQgpbooPd9W/GQnRUxjBPZZQhUloHZJAeQl/RlfSjup6cfgovAj0QKGMuQ7chflHI0sAGBvTMKbIyt1zbgrTh6yJaH/IRhTka71srbOXDseYfQyZ/SNuVB9PQ8d2Jfrk5d0hksM5yMmaqKq0GKQQsUP7HhPSeAi1a9NV3pre3H6Dk/JoZrATmTDUS3QsSHvUUPurifpoEPnntPA1VY+Cg9NjKHxA5x9dUvG34OytDxsIv67YMtQynoPz3lEASdPXJDAOXTXMxeHp7CkqLjvBW0dqhiSVLjXPxNhDZsdNvfChVqWY0q+ynzs6YIUrBpf7sDFWCOtjm2TNTbfAX/mfKtrz+QbGoQFo67Zwoj+1PEaNTC3zW3yjed2T7GWznWGtLzxM/x3zjvU/oYXPM2EMjcXu3km1+M0eA1lU7QTexCIL7fwlqVAMSF0q1EwkWQ4M515EmoJQHoVGmlsK6tv8Qc1JlGln9Mli7MaeMqGHMwi2KnRuPFEYzb47hYufS8NOP1spsSWWohK8xgKN3lJ7007gp7FRDJpmNyOTjbHzSgQR90hLtZG2dMZFcts8N0O/1Tgu6JcQSpayPMZn67KUdf07OZs0ESne+auOQnIEQQF/XPETvHv7PwWUmwmBy/ngRz8NCjAcrH8gr7a4pghkFiG8+SDzXCcY7z6laYWhMacOP1nt/Utsb5Of+4Iw+AFtXtbcj2FUrBaw3u3I8XBR+xQ1l3I/K5gqdNpQeIwwl5YvvAnRrEygMvSXUizN91MqVFhJnIARp5KX5Siff6IBmte2Q9LCwa3MR8mrtRsUF0lwPmAz1ML7q4Y5HAj9xLDT7rMWT25ZtcGtTfG+b9Ljar6uImMTV3kvCydBPgddOWuNcJFt+BlnviLNa86e1PMHMvIihL5bRjM9UplGexNTqCHa+GjE3aQ7bqhRGvfZ7yC3V2Xi0+Pe2/xJEzctxy3WjOOux9SQGJGl/ecPvtMAK8eEz7cmMt6qdy6+XOrHJuYp5pX7DIK/KAO5zejd/kkVoC92TqUmT2msP2cqeGxh9HWzNd0jh79ciTkerS1rWpBZjlFy8Fg7IQIZXf8jGvHyjUxAa49khnNo7CkmF63uLaVxKaKrqGkE9N/anMYshcFEZFNyQtbap0PEQLjyx3Y0JTwcdMfC4jWuCjUjeK4tyRRHJowzYeg9HBHJudsng+j4xSNaSCYlcDppZNmg9O2+cSpoB2DEYltU3JzpFL0mc/BW8H8iTjeFihPF1lv4eXzmsJOCzFthCN97P+qWNenbwl+azczdU5dTtjh/oejSqQMHftluonwmuHnEnaRYsZLKsPxd9nDPJL6nNTyn48TN5TQo08RikNfz0hWOt9dAdXn+9YdjxgOaBArHzGZlMaf+qo50uu3/nRDZmo1wYe8d6AX8POOn4bEDzodAQ+/O5tgGKVCZPOefxlpaTJfnsfQ39VPisgZIFn9v4me6PmJEpAwEesjnj5KSUPPxbQ8K0xwqbEe1sAjI619ThtmBpaL7aq4XjrQjjtl6msElHIeljqi/ZfapfkKQlyfYAWTbPNQYaGV3Z/OC0wKaKv7tWILY6yVU5936IOlBewVVY2K5abGySEXovAlCbvHyVkHYum14iNiX71BP6kjew//73bfHtnBm7y++Gq6HSgs3nyYy+NGS+Udppa5O5OmQmRc6+Ko994N1s0Z/E2ouZ9HPwbyojQZYoMWYNZhuDR7mgQYH7iemEkqaKnxT262VonQGiXzw1Ul14pv26FGqTq+RTBXQID3aZ21isWPez0luXLwpZEP8k0fGFjgZj8TUhNrCUmahQHZ89cgbmKFOzE1TYamfkdQhHOsX2ATYT0QimZOPa/Goab/De55WTIRp4s0UMsb61VQAAAAA=');
