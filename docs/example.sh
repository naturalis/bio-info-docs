#!/bin/bash
# The following two lines are there to identify the name of your job (which you will
# then be able to see in the 'sinfo' listing), and the name for the output produced
# by standard out. Thus, if you leave this unchanged, a file called 
# 'REPLACE_THIS_WITH_OUTPUT_FILE_NAME.txt' will be created, and the listing will show
# job 'REPLACE_THIS_WITH_JOB_NAME' (which, in fact, will be truncated: pick a short name)

#SBATCH --job-name=REPLACE_THIS_WITH_JOB_NAME
#SBATCH --output=REPLACE_THIS_WITH_OUTPUT_FILE_NAME.txt

# The code below is just an example of an infinitely long running process that writes
# 'Hello from iteration <n>' to standard out, causing the output to end up in the
# 'REPLACE_THIS_WITH_OUTPUT_FILE_NAME.txt' file. To submit this as a job, run 
# 'sbatch example.sh'. To kill it, run 'sinfo', look up the job id (an integer), and
# cancel it, with 'scancel <n>' where <n> is the job id. So the thing to do here is to
# replace this code with the incantation that runs your tool.
iteration=1
while true
do
	sleep 5
	echo "Hello from iteration ${iteration}"
	let iteration=$iteration+1
done
