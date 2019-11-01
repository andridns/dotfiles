for i in {0..9500}; do printf "/some/path/%06d.png\n" $i; done
for i in {49000..49999}; do printf "/some/path/to/images/%06d.png\n" $i >> /some/path.txt; done
