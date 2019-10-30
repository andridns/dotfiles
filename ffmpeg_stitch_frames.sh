ffmpeg -r 15 -i %05d.png -c:v libx264 -pix_fmt yuv420p -b:v 4M -maxrate 4M -y ../out6.mp4
