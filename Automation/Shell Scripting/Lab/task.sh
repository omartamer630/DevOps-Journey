#!/bin/bash

m=TRUE
contactNumber=1

while [ ${m} = TRUE ];
do
read -p "press i to add new contact
press v to view all contacts 
press s to search for a record
press e to delete all contacts
press d to delete one contact
press q to exit
" choice

case ${choice} in
 "i") # add new contact
  echo "Contact-${contactNumber}" >> database.txt
  read -p "Enter your First name: " fname
  echo "First Name: $fname" >> database.txt
  read -p "Enter your Last name: " lname
  echo "Last Name: $lname" >> database.txt
  read -p "Enter your Email: " email
  echo "Email: $email" >> database.txt
  read -p "Enter your Phone number: " phnumber
  echo "Phone Number: $phnumber" >> database.txt
  echo "------------------------" >> database.txt
  
  ((contactNumber++))
  ;;
 "v") # view all contacts
  if [ -f "database.txt" ]; then
    echo "------------------------"
    echo "All Contacts"
    echo "------------------------"
    cat database.txt
  else
    echo "No contacts found."
  fi
  ;;
 "s") # search for a contact
  read -p "Enter the name of the contact you want to search for: " searchName
  if [ -f "database.txt" ]; then
    grep -i "${searchName}" database.txt || echo "No match found."
  else
    echo "No contacts found."
  fi
  ;;
 "e") # delete all contacts
  if [ -f "database.txt" ]; then
    rm database.txt
    echo "------------------------"
    echo "All contacts deleted."
    echo "------------------------"
  else
    echo "No contacts to delete."
  fi
  ;;
 "d") # delete one contact
  if [ -f "database.txt" ]; then
    read -p "Enter the contact number you want to delete (e.g., 1 for Contact-1): " deleteNumber
    sed -i "/Contact-${deleteNumber}/,/------------------------/d" database.txt
    echo "Contact-${deleteNumber} deleted if it existed."
  else
    echo "No contacts found."
  fi
  ;;
 "q") # exit
  m=FALSE
  ;;
  *) # invalid option
  echo "Invalid option. Please try again."
  ;;
esac

if [ "${choice}" != "q" ]; then
  read -p "If you want to return to the main menu press m or q for exit: " reptear
  if [ "${reptear}" != "m" ]; then
    m=FALSE
  fi
fi

done
