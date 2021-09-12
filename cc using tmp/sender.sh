# Namita Madhira (nm4212)
# Covert Communication - Proof of Concept Assignment - Sender 
#!/bin/bash

for d in 1 0 1 1 0 1 1 0
do
	# Starting time
	stime=$(date +"%N") 

	# Sender sets the flag to: ready-to-send 
	chmod -r /tmp/sendflag
	# Sender checks if the receiver is ready to receive the data
	if [ -r /tmp/receiveflag ]
	then
		echo "====" $d "===="
		if [ $d  -eq 1 ]
		then
			echo "one"
			chmod -w /tmp/data
		else
			echo "zero"
			chmod +w /tmp/data
		fi
	# Data received. Sender updates the flag.
	chmod +r /tmp/receiveflag
	chmod +r /tmp/sendflag
	fi

	# End time
	etime=$(date +"%N") 
done
# Time taken for the sender to send the data
time=$(($etime-$stime))
echo " time taken is $time nanoseconds" 
