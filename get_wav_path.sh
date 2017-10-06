#!/bin/bash
Annotated_xml_dir=NELS_annotations
Output_wav=Wav_dir
for xml_file in $Annotated_xml_dir/*.xml
do
   echo $xml_file
   mkdir -p $Output_wav
   xml=.xml 
   wav_file1=${xml_file%$xml}
   echo $wav_file1
   wav_file=${wav_file1#$Annotated_xml_dir/}.wav
   echo $wav_file
   x=`locate -bl 1 $wav_file`
   #echo $x
   cp $x $Output_wav/$wav_file
done
