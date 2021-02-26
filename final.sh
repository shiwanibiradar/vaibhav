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

	echo "Name:$name" > task.txt
        echo "Email:$email" >> task.txt
        echo "College_Name:$college" >> task.txt

	if [ "$(docker images | grep nginx)" > 1 ];
	then
		echo "nginx image pulled succesfully"
		(( score += 10 ))
	else
		echo "nginx image not found"
	fi
	echo "Marks: $score"
	echo "Marks: $score" >> task.txt

	echo "welcome to docker-workshop" >> ./docker-workshop
        openssl aes-256-cbc -pass file:"./docker-workshop" -a -md md5 -salt -in ./task.txt -out ./task1.txt

        rm -rf ./docker-workshop
        rm -rf ./task.txt

elif [ $tsk = 2 ];
then
        score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "Name:$name" > task.txt
        echo "Email:$email" >> task.txt
        echo "College_Name:$college" >> task.txt

	if [ "$(docker ps | grep httpd)" > 1 ];
	then
		echo "httpd container is running"
		(( score += 10 ))
	else
		echo "httpd container is not running"
	fi
	echo "Marks: $score"
        echo "Marks: $score" >> task.txt

        echo "welcome to docker-workshop" >> ./docker-workshop
        openssl aes-256-cbc -pass file:"./docker-workshop" -a -md md5 -salt -in ./task.txt -out ./task2.txt

        rm -rf ./docker-workshop
        rm -rf ./task.txt

elif [ $tsk = 3 ];
then
        score=0
        echo "Enter your name"
        read name
        echo "Enter your email"
        read email
        echo "Enter you college name"
        read college

        echo "Name:$name" > task.txt
        echo "Email:$email" >> task.txt
        echo "College_Name:$college" >> task.txt

	if [ "$(docker images | grep centos)" > 1 ];
	then
		echo "centos image is not removed."  
	else
		echo "centos image deleted succesfully"
		(( score += 10 ))
	fi
	echo "Marks: $score"
        echo "Marks: $score" >> task.txt

        echo "welcome to docker-workshop" >> ./docker-workshop
        openssl aes-256-cbc -pass file:"./docker-workshop" -a -md md5 -salt -in ./task.txt -out ./task3.txt

        rm -rf ./docker-workshop
        rm -rf ./task.txt
	
