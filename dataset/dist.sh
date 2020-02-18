mkdir ./Test
mkdir ./Train

test_list=`awk '{ if($3 == "Test") print $1;}' files_v1.txt`
for file in $test_list
do
	class=`basename $(dirname $file)`
	image=`basename $file`
	if [ ! -d ./Test/$class ]
	then 
		mkdir ./Test/$class
	fi
	mv $file ./Test/$class/
done

train_list=`awk '{ if($3 == "Train") print $1;}' files_v1.txt`
for file in $train_list
do
        class=`basename $(dirname $file)`
        image=`basename $file`
        if [ ! -d ./Train/$class ]
        then 
                mkdir ./Train/$class
        fi
        mv $file ./Train/$class/
done


