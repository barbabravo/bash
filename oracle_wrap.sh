#!/bin/bash
export LANG="en_US.UTF-8"
export NLS_LANG="AMERICAN_AMERICA.ZHS16GBK"
basepath=`pwd`
srcpath=$basepath/source
tarpath=$basepath/target
//echo "">$basepath/wrap.log
echo $LANG
echo $NLS_LANG
total=`ls $srcpath | wc -l`
for i in `ls $srcpath`;do 
echo $i
wrap iname=$srcpath/$i oname=$tarpath/$i >> $basepath/wrap.log 
sleep 0.2;
done; 
