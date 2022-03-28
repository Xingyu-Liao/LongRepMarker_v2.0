#!/bin/bash
cd /home/xingyu_liao/tools/LongRepMarker_v2.0-master/programs/RepeatMasker
./RepeatMasker -parallel 64 -lib /home/xingyu_liao/tools/LongRepMarker_v2.0-master/results/finalRepeats.fa.classified -html -gff -dir /home/xingyu_liao/tools/LongRepMarker_v2.0-master/results/  | 
./RepeatMasker -parallel 64 -species human /home/xingyu_liao/tools/LongRepMarker_v2.0-master/results/finalRepeats.fa.classified -dir /home/xingyu_liao/tools/LongRepMarker_v2.0-master/results/
