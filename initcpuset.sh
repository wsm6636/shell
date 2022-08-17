echo -1 > /proc/sys/kernel/sched_rt_runtime_us
mkdir /sys/fs/cgroup/cpuset
mount -t cgroup -ocpuset cpuset /sys/fs/cgroup/cpuset
cd /sys/fs/cgroup/cpuset
mkdir housekeeping
mkdir isolated
echo 0-2 > housekeeping/cpuset.cpus
echo 0 > housekeeping/cpuset.mems
echo 3 > isolated/cpuset.cpus
echo 0 > isolated/cpuset.mems
echo 0 > cpuset.sched_load_balance
echo 0 > isolated/cpuset.sched_load_balance
while read P
do
  echo $P > housekeeping/cgroup.procs
done < cgroup.procs
