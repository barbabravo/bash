#!/bin/bash
basepath=`pwd`
srcpath=$basepath/source
tarpath=$basepath/target
echo "">$basepath/wrap.log
total=`ls $srcpath | wc -l`
for i in `ls $srcpath`;do
echo $i
wrap iname=$srcpath/$i oname=$tarpath/$i >> $basepath/wrap.log
sleep 0.2;
done;
