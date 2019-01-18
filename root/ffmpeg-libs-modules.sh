ldd /usr/local/bin/ffmpeg | awk '{ print $3 }'
ldd /usr/local/bin/ffmpeg | awk '{ print $3 }' | xargs pkg which | awk '{ print $6}'
#while [$out1 != ""]
#do
#$out1= `ldd /usr/local/bin/ffmpeg | awk '{ print $3 }' | xargs pkg which`
# if [ $out1 != "" ]; then echo $out | awk '{ print $6}'; fi
#done