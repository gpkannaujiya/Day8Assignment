for i in {1..50}
do
month=$((RANDOM % 12 + 1 ))
case $month in 
1) month_name="January";;
2) month_name="February";;
3) month_name="March";;
4) month_name="April";;
5) month_name="May";;
6) month_name="June";;
7) month_name="July";;
8) month_name="August";;
9) month_name="September";;
10)month_name="October";;
11)month_name="November";;
12)month_name="December";;
esac
done
for i in {1..50}
do
current_month=$(echo ${list[i]} | cut -d ' ' -f 3)
for j in {1..50}
do
if [$i -eq $j]
then
continue
fi
other_month=$(echo ${list[j]} | cut -d ' ' -f 3 )
if ["$current_month" == "$other_month" ]
then
group="$group ${list[j]}"
fi 
done
if [-n "$group" ]
then
echo "Group: ${list[i]}$group"
fi
group=""
done
