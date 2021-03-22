# AutoRebootAfterCrash
Eternal provisional bash script

I set up a Teamspeak server on my Raspberry PI 4 using box86, it crashes some times.
Until I find a better solution this script will automaticly reactivate my Server.

Teamspeak is the only application being emulated. With that in mind, I desidet that this will do:

>top -n 2 | grep -o Box86

Top will check for two frames if box86 is running, if it is the output will be "box86" and the loop continues.
If not an error occurs, "detect_crash" will be set to 1 afterwards the if loop breaks the second while loop.
The scripts starts from the top and Teamspeak will be executet again. 

If future projects require the use of multipe Box86 instanses the skript must be modified to fetch the PID number
at programm start and the top command must be modified to:

>top -n 2 | grep -o "pidnumber"

This script must be executed in Teamspak Folder.
This script has no option for exit.
