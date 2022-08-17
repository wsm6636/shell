echo 0 > /sys/kernel/debug/tracing/tracing_on 
echo > /sys/kernel/debug/tracing/trace   
echo 1 > /sys/kernel/debug/tracing/events/sched/sched_switch/enable 
echo 1 > /sys/kernel/debug/tracing/events/irq/enable
echo 1 > /sys/kernel/debug/tracing/tracing_on