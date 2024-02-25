#!/bin/bash
#This script selects all student emails from main.sh file and store them in a file named student-emails.txt
#You can run this script by typing ./select-emails.sh in the terminal

students_file="students-list_1023.txt"
output_file="student-emails.txt"

cut -d',' -f1 "$students_file" > "$output_file"
echo "Emails selected and saved in $output_file."
