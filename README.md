# iOS Master Cook App

Hello! This is steps to run the Master Cook App in your Xcode

## Architecture

This project was building using the VIPER and Clean code

## Unit Tests

This project use the Quick/Nimble to make a tests

## Clone repository

If you don't have git installed in your mac, you need install following the [documentation of git].

[documentation of git]:https://git-scm.com/download/mac

The first step, is clone the repository in your mac. To this create a directory in your mac and open that directory in your terminal app.

When you be inside the app directory in terminal, execute the follow commands below:


	git init
	git remote add origin git@gitlab.com:julianoterres/ios-blog-posts.git
	git fetch
	git checkout master

## Setup project

To you to setup the project with all dependencies that is necessary to that the project working correct, just you execute the file setup.sh with command below.

	sh setup.sh

This file contains all commands to install all dependencies that you need install, and he will go to install all dependencies for you.

## Setup certificates

After the seput.sh finished the install all depencies, you can open the projet in Xcode. How this projeto is a challenge, he not have certificates of production. 

To that you get run the project , you need open the general tab of project configs, and check "Automatically manage signing" and select one team and change the bundle identifier to your user.

After this, only select one device and click in play button to run app.