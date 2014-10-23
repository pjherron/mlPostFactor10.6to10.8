#/!bin/bash

########################################
# upgradesl2ml.sh
########################################
# Patrick Herron 
# 22 October 2014
########################################
# upgrade 10.6.8 to 10.8.4 using MLPostFactor 0.3
# Based on http://www.vladkorotnev.me/blog/install-mlpostfactor-from-snow-leopard/
# There were some errors in the original source that this corrects
########################################
# Assumes:
#    user name is $USER 
#    MLPostFactor0.3 unzipped to desktop
#        dl'd from http://macdownload.informer.com/mlpostfactor/download/?cf2263c
#    'Install OS X Mountain Lion.app' downloaded and present in /Users/$USER/Applications/
#    8 GB installation drive partition created on the target drive
#    Installation drive partition is mounted at /Volumes/Install
#    min 20GB MountainLion partition created on target drive
########################################

INMNT='/Volumes/Install'

#the apparent path repetition is not a typo!
cd /Users/$USER/Desktop/MLPostFactorV0.3/MLPostFactor.app/Contents/Resources/MLPostFactor.app/Contents/Resources/

sudo installer -package Base.mpkg -target $INMNT

for PACKAGE in Components.mpkg Graphics_2.mpkg Kernel.mpkg ;  do sudo installer -package $PACKAGE -target $INMNT; done

# after this step the install may fail without any notice; 
# reboot with the option key back to the Install drive;
# select the MLPostFactor option from the Utilities menu
# follow the prompts on MLPostFactor
#     - select your MountainLion partition
#     - select 10.8.4
