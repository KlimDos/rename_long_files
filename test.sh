for file in *
do
    file_no=${file%.*}
    if [ ${#file_no} -ge "90" ]
    then
    	rdm=$(shuf -i 00-99 -n 1)
    	echo -e "\033[1;31m${file}\033[0m renaming to \033[1;32m${file_no:0:89}-${rdm}.mp3\033[0m"
        mv "${file}" "${file_no:0:89}-${rdm}.mp3"  
        continue     
    fi
    echo "${file} , ${#file_no}"
    #sleep 0.5
done