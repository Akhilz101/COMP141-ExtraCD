

#!/bin/bash

# Create output directory
mkdir output

# Move/copy text file into output
cp textfile.txt output/

# CD into output
cd output

# Read contents of text file into read.txt
cat extracd.txt > read.txt

# Run pwd and ls commands, save outputs to files
pwd > pwd.txt
ls > ls.txt

# Make a copy of text file into copy.txt
cp extracd.txt copy.txt

# Create alias for today's date
alias todaydate='date'

# Invoke alias and save output to date.txt
$todaydate > date.txt

# Count words in text file into textcount.txt
wc -w extracd.txt > textcount.txt

# Save first five lines of ps, ifconfig, and mount commands as process.txt, netstat.txt, and mount.txt
head -n 5 /bin/ps > process.txt
head -n 5 /sbin/ifconfig > netstat.txt
head -n 5 /bin/mount > mount.txt

# Make permissions.txt and give it rwx to all groups
touch permissions.txt
chmod 777 permissions.txt

# Create shell variable TESTENV1 and set it to "test"
export TESTENV1="test"

# Run grep command for all words in text file with at least 3 letters, save to regex.txt
grep -E '\b\w{3,}\b' extracd.txt > regex.txt

# Navigate up a level
cd ..