printf "\nUsage: ./checkfolders.sh <LAB_UUID> <DEVICE_ID> <string> <number_of_lines_to_print>\n\n"
for i in $(ls -l /opt/unetlab/tmp/ | awk '{print $9}')
do
  printf "**********************Device with id $i**************************\n"
  cat /opt/unetlab/tmp/$i/$1/$2/startup-config | grep "$3" -A $4
  printf "\n"
done
