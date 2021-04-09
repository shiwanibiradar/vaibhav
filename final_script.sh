#!/bin/bash
echo "Enter Task no"
read tsk
if [ $tsk = 1 ];
then
 	score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college
	a1=$( docker exec -it Myapp bash -c "ls /sample")
	echo $a1
	a2="abc.txt"
	if [[ $a1 == *"$a2"* ]];
	then
    	    echo $'\e[1;32m'Task 1 Completed Successfully$'\e[0m'
    	(( score += 10 ))
	else
     	    echo $'\e[1;31m'Task 1 Not Completed$'\e[0m'
	fi
echo "name: $name"
echo "email id: $email"
echo "college: $college"
echo "score: $score"
elif [ $tsk = 2 ];
then
        score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college
	var=$(docker ps -aqf 'name=example2')
	ab="$(docker logs $var)"
	echo $ab
	if [ "$ab" == 'Hello World' ]
	then
 	     echo $'\e[1;32m'Task 2 Completed Successfully$'\e[0m' 
	(( score += 10 ))
	else
	     echo $'\e[1;31m'Task 2 Not Completed$'\e[0m'
	fi
echo "name: $name"
echo "email id: $email"
echo "college: $college"
echo "score: $score"
elif [ $tsk = 3 ];
then
        score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college
	if [ "$(docker ps | grep Myapp2)" > 1 ];
	then
     	     echo $'\e[1;32m'Task 3 Completed Successfully$'\e[0m'
     	(( score += 10 ))
	else
     	     echo $'\e[1;31m'Task 3 Not Completed$'\e[0m'
	fi
echo "name: $name"
echo "email id: $email"
echo "college: $college"
echo "Marks: $score"
elif [ $tsk = 4 ];
then
        score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

	a1=$( docker exec -it Myapp3 bash -c "ls /tmp")
	a2="test.txt"
	if [[ $a1 == *"$a2"* ]];
	then
              echo $'\e[1;32m'Task 4 Completed Successfully$'\e[0m'
    	(( score += 10 ))
	else
     	      echo $'\e[1;31m'Task 4 Not Completed$'\e[0m'
	fi
echo "name: $name"
echo "email id: $email"
echo "college: $college"
echo "Marks: $score"
elif [ $tsk = 5 ];
then
	score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college
	if [ "$(docker ps | grep gogs)" > 1 ] && [ "$(docker ps | grep MySQL)" > 1 ]
	then
 	      echo $'\e[1;32m'Task 5 Completed Successfully$'\e[0m' 
        (( score += 10 ))
        else
  	      echo $'\e[1;31m'Task 5 Not Completed$'\e[0m'
	fi
echo "name: $name"
echo "email id: $email"
echo "college: $college"
echo "Marks: $score"
else
        echo "This is not valid task no"
        
fi
