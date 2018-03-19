#!/bin/bash
##########################################################################
# This script starts the installation and configuration process of the
# specified desktop and finally it shows a log file which contains
# reported installation steps and posible errors.
# @author César Rodríguez González
# @version 1.3, 2016-10-22
# @license MIT
##########################################################################

# Basic Variables
scriptRootFolder="`pwd`/../.."; username="`whoami`"; homeFolder="$HOME"

# Import common variables and functions
. $scriptRootFolder/common/commonFunctions.sh
declare -a appsToInstall=( "Budgie" )

# Lauch menu and install selected applications
prepareScript "$0"
installAndSetupApplications appsToInstall[@]
