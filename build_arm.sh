#!/bin/bash

version=2.2022
type=mcow
bpath=$PWD
mpath=/data/Dockerfiles/
tag=vikinger84/
build_folders=(watchdog unbound postfix phpfpm olefy netfilter dockerapi acme sogo dovecot rspamd )
#build_folders=(watchdog unbound postfix phpfpm olefy netfilter dockerapi acme )


for item in ${build_folders[*]}
do
   echo ${bpath}${mpath}${item}${file}
   sudo docker buildx build  ${bpath}${mpath}${item} -t ${tag}${item}':'${type}'-'${version} --platform armhf,aarch64 --push
done


