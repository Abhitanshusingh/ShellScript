#!/bin/bash -x
read -p "Enter Day : " day  #( 0 Sunday , 1 Monday ,2 Tuesday and so on ...)
case "$day" in
     0) echo "Sunday"
        ;;
     1) echo "Monday"
        ;;
     2) echo "Tuesday"
        ;;
     3) echo "Wednesday"
        ;;
     4) echo "Thursday"
        ;;
     5) echo "Friday"
        ;;
     6) echo "Saturday"
        ;;
     *) echo " Invalid number enter between 0 to 6"
esac
