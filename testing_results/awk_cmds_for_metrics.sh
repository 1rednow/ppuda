grep -i "Metric 1, mean" vit_epoch3.txt | awk '{print $4}' > greped_stats.txt
grep -i "Metric 8, mean" vit_epoch3.txt | awk '{print $4}' > greped_stats.txt