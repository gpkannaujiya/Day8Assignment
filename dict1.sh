dice_roll=()
while true;
do
dice=$((RANDOM%7))
dice_roll[$dice]=$((${dice_roll[$dice]} +1))
if [ ${dice_roll[$dice]} -ge 10 ];
then
break
fi
done
max=0
max_num=0
min=10000
min_num=0
for i in ${!dice_roll[@]};
do
if [ ${dice_roll[$i]} -gt $max ];
then
max=${dice_roll[$i]}
max_num=$i
fi
if [ ${dice_roll[$i]} -lt $min ];
then
min=${dice_roll[$i]}
min_num=$i
fi
done
echo "Most appeared num: $max_num($max times)"
echo "Least appeared num: $min_num($min times)"
