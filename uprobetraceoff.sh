cd /sys/kernel/debug/tracing/
echo 0 > events/probe_SHMPub/enable 
echo 0 > events/probe_SHMSub/enable
echo 0 > tracing_on 
cat trace > $1
