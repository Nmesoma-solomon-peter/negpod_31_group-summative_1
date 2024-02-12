#!/bin/bash

students_file="students-list_1023.txt"
output_file="student-emails.txt"

cut -d',' -f1 "$students_file" > "$output_file"
echo "Emails selected and saved in $output_file."
