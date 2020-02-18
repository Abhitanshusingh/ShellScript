dicefirst=$((RANDOM%6+1))
dicesecond=$((RANDOM%6+1))
result=$(( dicefirst + dicesecond ))
echo "Sum Of Two Dice Is : $result"
