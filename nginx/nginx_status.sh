#########################################################################
# File Name: nginx_status.sh
# Author: kerncai
# mail: kernkerncai@gmail.com
# Created Time: 2013年11月13日 星期三 14时14分05秒
#########################################################################
#!/bin/bash

Active(){
        wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==1 {print$3}'
}
Reading(){
        wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==4 {print$2}'
}
Writing(){
        wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==4 {print$4}'
}
Waiting(){
        wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==4 {print$6}'
}
Accepts(){
  		wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==3 {print $1}'
}
Handled(){
		wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==3 {print $2}'
}
Requests(){
		wget --quiet -O - http://localhost:40080/nginx_status?auto |awk 'NR==3 {print $3}'
}
$1

