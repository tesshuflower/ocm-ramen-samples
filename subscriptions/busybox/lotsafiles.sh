NUMFILES=2000
count=0

echo creating $NUMFILES files ...

timestamp=`date -Iseconds`

filedir="files-$timestamp"
mkdir -p "$filedir"
cd "$filedir"
echo filedir is $filedir

while [ $count -lt $NUMFILES ]
do
  filename="testfile-${count}.txt"
  echo "aa bbb cccc dddd" > $filename
  count=`expr $count + 1`
done

echo "Done"
