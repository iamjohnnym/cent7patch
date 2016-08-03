yum list-sec > /tmp/updates.txt

for ITEM in $(awk -F' ' '{print $1}' /tmp/updates.txt|egrep 'FEDORA')
do 
    yum update -y --advisory ${ITEM}
done
