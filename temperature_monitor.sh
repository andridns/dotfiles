OUT_FILE=./temperature_log.txt
RECORD_EVERY=10
echo "Recording to $OUT_FILE"
echo "Recording temperature every $RECORD_EVERY seconds"
while true; do
	date >> $OUT_FILE
	nvidia-smi | grep % >> $OUT_FILE
	sensors | grep °C >> $OUT_FILE
	echo "" >> $OUT_FILE
	sleep $RECORD_EVERY
done