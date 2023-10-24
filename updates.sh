#!/bin/bash

# Script Name:                  Updates.sh
# Author:                       Zachariah Woodbridge
# Date of latest revision:      24/10/2023
# Purpose:                      Updates the ubuntu applications and removes/cleans old files

# Declaration of variables
# RED='\033[0;31m'- establishes a color for text (in this case red)
# GREEN='\033[0;32m'- establishes a color for text (in this case green)
# NC='\033[0m' - meaning No Color, resets the coloration of notifications

# Declaration of functions
# sudo - executes the command as a super user, the commands listed require this status
# echo - similar ti printf, displays text 
# apt update - updates the package database, ensuring the user's system knows the most recent distros
# apt upgrade - upgrades the downloaded packages to the most recent apt update distro settings.
# apt autoremove - removes old system files/dependencies
# apt clean - clears package manager cache
# -y means to press y
# -e lets the echo include variables

# DEFINE TEXT COLORS USED
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


#UPDATE
echo -e "${RED}UPDATE${NC}"
sudo apt update
#UPGRADE
echo -e "${RED}UPGRADE${NC}"
sudo apt upgrade -y
# AUTOREMOVE OLD PROGRAMS
echo -e "${RED}AUTOREMOVE${NC}"
sudo apt autoremove -y
#CLEANUP
echo -e "${RED}CLEANUP${NC}"
sudo apt clean -y
echo -e "${GREEN}Great Work, lets hope there were no errors!${NC}"
