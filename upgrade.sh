
clear #clear screen
echo "(bash) KDFS Upgrader Script (Linux)\n------------------------\n"
# find the PID of running script
pids=$(ps aux | grep -i "python3 server.py" | awk {'print $2'})
for pid in $pids[@]
do
    echo "(bash) Killing $pid process..."
    # exit the process 
    kill -9 $pid 2> /dev/null || echo "(bash) Can not kill $pid process :("
done
sleep 2 #after 2 seconds
echo "(bash) Restart KDFS server...."
python3 server.py start
# echo "\n\n"