mlPostFactor10.6to10.8
======================

Simple script for upgrading OSX 10.6.8 to 10.8 using MLPostFactor


Patrick Herron 

22 October 2014


upgrade OSX 10.6.8 systems to 10.8 using MLPostFactor 0.3

Based on http://www.vladkorotnev.me/blog/install-mlpostfactor-from-snow-leopard/

There were some errors in the original source that upgradesl2ml.sh corrects



upgradesl2ml.sh Assumes:

    - user path is $USER 
    
    - MLPostFactor0.3 unzipped to desktop
    
       dl'd from http://macdownload.informer.com/mlpostfactor/download/?cf2263c
       
    - 'Install OS X Mountain Lion.app' downloaded and present in /Users/$USER/Applications/
    
    - 8 GB installation drive partition created on the target drive
    
    - Installation drive partition is mounted at /Volumes/Install
    
    - min 20GB MountainLion partition created on target drive
    
