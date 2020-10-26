#! /bin/bash
# ps -ef | grep "ng serve"
# PPID   PID  PGID   SID TTY      TPGID STAT   UID   TIME COMMAND
#    0     2     0     0 ?           -1 S        0   0:00 [kthreadd]
#    2     3     0     0 ?           -1 S        0   0:00  \_ [ksoftirqd/0]
# kill -9 2

ps -ef | grep "ng serve"
kill -9 <PID>