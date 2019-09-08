for n in $(seq -f "%02g" 1 20)
do 
	echo "n = $n"
	SRC=$(ls *S04E$n*.srt | head -1)
	DST=Vikings.S04E$n.1080p.10bit.BluRay.5.1.x265.HEVC-MZABI.srt
	echo "Source: $SRC"
	echo "Destination: $DST"
	#mv *S04E$n*.srt \
	#Vikings.S04E$n.1080p.10bit.BluRay.5.1.x265.HEVC-MZABI.srt
	mv $SRC $DST
done
