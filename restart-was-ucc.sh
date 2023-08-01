#!bin/bash
was_home=/opt/ucc/was
#启动was变量
STARTWAS=$was_home/bin/server

echo "重启在线客服was应用"
#ps -ef |grep test | grep -v grep |awk '{print $2}'|xargs kill -9 -p
PID=`ps -ef | grep wasucc |grep -v grep | awk '{print $2}'`
echo "正在运行中的进程PID {$PID} "
if [ ! "$PID" ];then  # 这里判断WAS进程是否存在
   echo "在线客服was应用进程不存在"
else
   echo "在线客服was应用进程存在 杀死进程PID {$PID} "
   kill -9 $PID
fi
$STARTWAS start wasucc
