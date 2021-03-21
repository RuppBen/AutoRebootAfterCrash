# AutoRebootAfterCrash
Eternal provisional bash script

I set up a Teamspeak server on my Raspberry PI 4 with box86, it crashes some times.
I did not find a cause for the crashes so I desided on a shell script.

There are no other progrmmas running on my PI using Box86, therefore I wrote a loop, that 
chechs if Box86 is running:
>top -n 2 | grep -o Box86

If succsessfull the outpu will be: "box86".
The command checks within 2 frames with the option "-n", one frame is to short. Very rarely this option
will print: "box86 box86". To prevent logical errors one IF loop checks if this has happend.
If the server chrashes the option "top -n 2 | grep -o Box86" exits with error code 1 and another IF loop 
will restart the server.

If Futer projects require the use of multipe Box86 instanses the skript must be modified to look for the PID number
and not for the software name.

This script has no option for exit.
