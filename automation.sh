#!/bin/bash
set -x
for filename in *.Z01; do
yy=`echo $filename | awk -F '.' '{print $2}' | cut -c5-6`
if [ -d "./$yy" ]
then
echo "Directory $yy exists."
else
mkdir $yy
fi
mm=`echo $filename | awk -F '.' '{print $2}' | cut -c3-4`
if [ -d "./$yy/$mm" ]
then
echo "Directory ./$yy/$mm exists."
else
mkdir -p ./$yy/$mm
fi
dd=`echo $filename | awk -F '.' '{print $2}' | cut -c1-2`
if [ -d "./$yy/$mm/$dd" ]
then
echo "Directory ./$yy/$mm/$dd exists."
else
mkdir -p ./$yy/$mm/$dd
fi
FTC=`echo $filename |  awk -F '.' '{print $1}' | cut -c1-2`
if [ -d "./$yy/$mm/$dd/$FTC" ]
then
echo "Directory ./$yy/$mm/$dd/$FTC exists."
else
mkdir -p ./$yy/$mm/$dd/$FTC
fi
if [ -e "./$yy/$mm/$dd/$FTC/$filename" ]
then
echo "File ./$yy/$mm/$dd/$FTC/$filename exists."
else
cp $filename ./$yy/$mm/$dd/$FTC
fi
done
