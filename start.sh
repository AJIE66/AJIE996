#!/bin/env bash 
#PID=`ps -ef |grep 项目名称 |grep -v grep | awk '{print $2}'`

PID=`ps -ef |grep 'springboot-test-0.0.1-SNAPSHOT.jar' |grep -v grep | awk '{print $2}'`

if [ ! "$PID" ]

then # 这里判断TOMCAT进程是否存在

 echo $PID"进程不存在"

else

 echo "进程存在 杀死进程PID$PID"

 kill -9 $PID

fi

nohup java -jar 'springboot-test-0.0.1-SNAPSHOT.jar' >/dev/null 2>log &

#根据重启后是否有当前应用判断启动是否成功

pid=$(ps -ef | grep java| grep 'springboot-test-0.0.1-SNAPSHOT.jar'|awk -F '[ ]+' '{print $2}')

echo $pid

if [ -z $pid ]

then

 echo "启动失败"

 exit 1

else

 echo 'springboot-test-0.0.1-SNAPSHOT.jar' : $pid "启动成功"

fi