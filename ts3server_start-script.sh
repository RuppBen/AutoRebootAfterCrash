#!/bin/bash

while ( true )
do
        sudo box86 ts3server
        loop_ctl="box86"        #$(top -n 2 | grep -o box86)
        #echo $loop_ctl
        loop_stop="box86"       #$(top -n 2 | grep -o box86)
        #echo $loop_stop
        detect_crash=0

        #echo "before loop"
        while [ "$loop_ctl" = "$loop_stop" ]            #[[ $loob_ctl == $loop_stop ]]
        do
                #echo "start of loop"
                loop_stop=$(top -n 2 | grep -o box86)
                detect_crash=$?
                #echo $detect_crash
                if [[ $detect_crash != 0 ]]
                then
                        #echo "programm not running"
                        break
                fi
                if [[ $loop_stop == "box86 box86" ]]
                then
                        loop_stop="box86"
                fi
                #echo "end of loop"
        done
done
#echo "end of code"

