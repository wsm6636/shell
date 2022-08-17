cd /sys/kernel/debug/tracing/
echo 1 > events/probe_SHMPub/enable 
echo 1 > events/probe_SHMSub/enable
echo 0 > tracing_on 
echo > trace
echo 1 > tracing_on 
