echo enter number of elements of 1st array
read s1
echo enter number of elements of 2nd array
read s2
s3=`expr $s1 + $s2`
echo enter elements of 1st array
for((i=1;i<=$s1;i++))
do
echo -n "enter element$i:"
read arr1[$i]
done
echo enter elements of 2nd array
for((i=1;i<=$s2;i++))
do
echo -n "enter element$i:"
read arr2[$i]
done
i=1
j=1
k=1
while [ $i -le $s1 ] && [ $j -le $s2 ]
do
if [ ${arr1[$i]} -lt ${arr2[$j]} ]
then
arr3[$k]=${arr1[$i]}
i=`expr $i + 1`
k=`expr $k + 1`
else
arr3[$k]=${arr2[$j]}
j=`expr $j + 1`
k=`expr $k + 1`
fi
done
while [ $i -le $s1 ]
do
arr3[$k]=${arr1[$i]}
i=`expr $i + 1`
k=`expr $k + 1`
done

while [ $j -le $s2 ]
do
arr3[$k]=${arr2[$j]}
j=`expr $j + 1`
k=`expr $k + 1`
done
echo The merged array is
for((i=1;i<=$s3;i++))
do
echo ${arr3[$i]}
done
nel=${#arr3[@]}
  if (( $nel % 2 == 1 )); then    
    val="${arr3[ $(($nel/2+1)) ]}"
  else                            
    (( j=nel/2 ))
    (( k=j-1 ))
    (( val=(${arr3[j]} + ${arr3[k]})/2 ))
  fi
  echo  "Median is " $val
