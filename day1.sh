mkdir "iti-0"
touch "./iti-0/file-1.txt"  #created a text file inside the directory iti-0
echo "hell9 all" > "./iti-0/file-1.txt" # add this text to this text file 
touch "./iti-0/file-2.txt"  # creating anther text file 
cat "./iti-0/file-1.txt" | tr "9" "o" > "./iti-0/file-2.txt" #changing the 9 -> o then save the changes in the new file 
echo "The content of file-1 :" # for illustration
cat "./iti-0/file-1.txt" 
echo "The content of file-2 :" # for illustration
cat "./iti-0/file-2.txt" 
rm "./iti-0/file-1.txt" # delete the file-1 
echo "./iti-0/file-1.txt has been deleted !!!" # for illustration
touch "./iti-0/listing.txt"
ls "/var" >  "./iti-0/listing.txt" # adding the value of the ls inside the listing.txt file 
echo "./iti-0/listing.txt has been created and contains { ls /var } !!"
echo "---------------------------------"
cat  "./iti-0/listing.txt" # for illustration show the content 
mv "./iti-0/listing.txt" "./iti-0/list_output.txt"
echo "---------------------------------"
touch "./iti-0/list_output_numbered.txt"
nl "./iti-0/list_output.txt" > "./iti-0/list_output_numbered.txt" # redirect the text numbered into new file
cat "./iti-0/list_output_numbered.txt"
echo "---------------------------------"
tail -n 5 "./iti-0/list_output_numbered.txt"