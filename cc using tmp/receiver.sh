# Namita Madhira (nm4212)
# Covert Communication - Proof of Concept Assignment - Receiver
#!/bin/bash

touch /tmp/data
touch /tmp/sendflag
touch /tmp/receiveflag

while true
do	
	# Receiver checks if data is going to be sent
	if [ -r /tmp/sendflag ]
	then
		if [ -w /tmp/data ]
		then
			echo "0"
		else
			echo "1"
		fi
	# Receiving complete. Flags updated.
	chmod +r /tmp/receiveflag
	chmod -r /tmp/sendflag
	fi
done
