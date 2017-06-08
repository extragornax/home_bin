wpa_gui &
while [ 1 ]
do
	while ping -n -c20 -W4 8.8.8.8
	do
	sleep 1;
	done
wpa_cli disconnect
sleep 4
wpa_cli reconnect -i wlp2s0
sleep 4
      while ping -n -c20 -W4 8.8.8.8
      do
      sleep 1;
      done
      while ping -n -c20 -W4 8.8.8.8
      do
      sleep 1;
      done
done
