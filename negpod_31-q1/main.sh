i/#!/bin/bash
# this shelll script performs Create, Read, Update, and Delete (CRUD) OPeration. check more detail @ README.md
# You can run this script by typing ./main.sh in the terminal

students_file="students-list_1023.txt"

function create_student {
    echo "Enter student email:"
    read email

    echo "Enter student age:"
    read age

    echo "Enter student ID:"
    read student_id

    echo "$email,$age,$student_id" >> "$students_file"
    echo "Student record created successfully."
}

function view_students {
    echo "List of all students:"
    cat "$students_file"
}

function delete_student {
    echo "Enter student ID to delete:"
    read student_id

    grep -v "^.*,$student_id$" "$students_file" > "$students_file.tmp"
    mv "$students_file.tmp" "$students_file"
    echo "Student with ID $student_id deleted successfully."
}

function update_student {
   echo "Enter student ID to update:"
    read student_id

    # Check if the student ID exists in the file
    if grep -q "^.*,$student_id$" "$students_file"; then
        echo "Enter new email:"
        read new_email

        # Use awk to update the email for the specified student ID
        awk -v id="$student_id" -v email="$new_email" 'BEGIN{FS=OFS=","} $3==id {$1=email} 1' "$students_file" > "$students_file.tmp"
        mv "$students_file.tmp" "$students_file"
        
        echo "Student record updated successfully."
    else
        echo "Student with ID $student_id not found."
    fi
}

while true; do
    echo "Choose an option:"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student by ID"
    echo "4. Update student record by ID"
    echo "5. Exit"
    read choice

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) echo "Exiting program."; exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done

