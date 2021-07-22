cat number.txt | while read num
do

        if [ `echo "${num} % 2" | bc` -eq 0 ] 
        then  
                echo ${num} >> even.numbers.txt
        else
                echo ${num} >> odd.numbers.txt
        fi
done
