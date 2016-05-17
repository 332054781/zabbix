#!/bin/bash

REQUEST(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$2}'
}
RECV(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$3}'
}
SENT(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$4}'
}
UPSTREAM(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$5}'
}
2XX(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$6}'
}
3XX(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$7}'
}
4XX(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$8}'
}
5XX(){
        wget --quiet -O - http://localhost:40080/ttlsa-rt-status|awk 'NR==3 {print$9}'
}
$1