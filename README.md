Description
==============
The new version of the detection mode only based on the third-generation sequencing reads is currently being debugged. Once the debugging is completed, we will make it online as soon as possible. Thanks!

Improvements
==============



Latest Version (v2.0)
==============

The latest version of LongRepMarker was released on github (https://github.com/Xingyu-Liao/LongRepMarker_v2.0), google drive (https://drive.google.com/file/d/1rH1Q1l2lgoH_3ctIv_EULisYDBUDc21v/view?usp=sharing) and baidu cloud drive (https://pan.baidu.com/s/18ws2a51mEpy8JGUejvGTzg ， Extraction code：2022) respectively on January 28, 2022. 


Author
=======

Copyright (C) 2022  &nbsp;&nbsp; <b>Xingyu Liao</b> &nbsp;&nbsp;  ( Xingyu_Liao@126.com / xingyu.liao@kaust.edu.sa )

Computer, Electrical and Mathematical Sciences and Engineering Division, </br>
King Abdullah University of Science and Technology (KAUST), </br>
Thuwal, 23955, Saudi Arabia.  </br>

Downloading LongRepMarker_v2.0 
==================================
<li>Install git lfs </br>

>> curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash </br>
>> sudo apt-get install git-lfs </br>
>> git lfs install</br>
 
<li>Clone project</br>

>> git clone https://github.com/Xingyu-Liao/LongRepMarker_v2.0.git </br>

<li>GitHub Pages sites are subject to the following usage limits:</li>

>> GitHub Pages source repositories have a recommended limit of 1GB . Published GitHub Pages sites may be no larger than 1 GB.</br>
>> GitHub Pages sites have a bandwidth limit of 100GB or 100,000 requests per month. </br>
>> GitHub Pages sites have a limit of 10 builds per hour. </br>
>> If the compressed file "tools.zip" fails to download due to traffic restrictions, please refer to the following instructions to download from google or baidu cloud drive.</br>

<li>Download from google or baidu cloud drive</li>

>> google drive （https://drive.google.com/file/d/1rH1Q1l2lgoH_3ctIv_EULisYDBUDc21v/view?usp=sharing) or </br>
>> baidu cloud drive （https://pan.baidu.com/s/18ws2a51mEpy8JGUejvGTzg ， Extraction code：2022）. </br>

Installation and running of LongRepMarker_v2.0 
==================================

### Dependencies

<li>64-bit Linux system or Mac OS </br>
<li>Python (supported versions are Python 2.7, and Python3: 3.2 and higher) </br>
<li>CMake (3.10 or higher is required) </br>
<li>g++ (version 5.3.1 or higher is required)  </br>
<li>JDK (jdk 1.8.0 or above) </br>
<li>Perl (perl 5.6.0 or above) </br> 
<li>zlib </br>
<li>libbz2 </br>

 
### Install LongRepMarker_v2.0

>> cd /home &nbsp;&nbsp;&nbsp; <i><b># E.g., The compressed file is downloaded in the directory '/home/'.</b></i></br>

>> unzip ./LongRepMarker_v2.0-master.zip </br>

>> cd ./LongRepMarker_v2.0-master </br>

>> ./Makefile.sh  </br>

### Run LongRepMarker_v2.0
	
<li>Running command :</li></br>

>> cd /home/LongRepMarker_v2.0-master </br>

>> java &nbsp;&nbsp;&nbsp; [MemConfig] &nbsp;&nbsp;&nbsp; LongRepMarker &nbsp;&nbsp;&nbsp; [options]</br>
	
[MemConfig] </br>
	
>> -Xmx300G   &nbsp;&nbsp;  <i><b># This item is used to set the maximum size of the java heap memory，which is only configured when processing 
>> some large datasets (E.g, the genome size >=10Gb or the size of sequencing data >= 50GB).</b></i></br>
	
[options]

>> -r    &nbsp;&nbsp;&nbsp;  <i><b>#The reference file or the assemblies file (This parameter is only used in reference-assisted mode).</b></i></br>
>> 
>> -k    &nbsp;&nbsp;&nbsp;  <i><b>#The k-mer size used in detection (Default: 49bp).</b></i></br>
>> 
>> -e    &nbsp;&nbsp;&nbsp;  <i><b>#This parameter controls whether the short reads error correction is executed (Default: 'yes').</b></i></br>
>> 
>> -E    &nbsp;&nbsp;&nbsp;  <i><b>#This parameter controls whether the long reads error correction is executed (Default: 'yes').</b></i></br>
>> 
>> -c    &nbsp;&nbsp;&nbsp;  <i><b>#The coverage threshold which is used to filter the low coverage overlaps (Default: 1.5).</b></i></br>
>> 
>> -t    &nbsp;&nbsp;&nbsp;  <i><b>#The number of threads (Default: 36).</b></i></br>
>> 
>> -R    &nbsp;&nbsp;&nbsp;  <i><b>#The local alignment mode ('fast' and 'sensitive'. Default: 'sensitive').</b></i></br>
>> 
>> -T    &nbsp;&nbsp;&nbsp;  <i><b>#Whether to perform tandem repeat detection ('yes' and 'no'. Default: 'yes').</b></i></br>
>> 
>> -sensitive  &nbsp;&nbsp;&nbsp;  <i><b>#The sensitivity of overlaps filtering (Default: 0.4, the larger the value, the more overlaps are filtered, and the greater the probability that the resulting overlaps are repeating sequences).</b></i></br>
>> 
>> -w   &nbsp;&nbsp;&nbsp;  <i><b>#The size of sliding window for overlaps filtering (Default: 30bp).</b></i></br>
>> 
>> -L   &nbsp;&nbsp;&nbsp;  <i><b>#The known genome size.</b></i></br>
>> 
>> -C   &nbsp;&nbsp;&nbsp;  <i><b>#The known average coverage of long reads.</b></i></br>
>> 
>> -lenDis  &nbsp;&nbsp;&nbsp;  <i><b>#Sequence length threshold for alignment mode selection (Default: 1000bp, when the length of the sequence is less than 1000bp, the short sequence alignment mode is selected, on the contrary, the long sequence alignment mode is selected).</b></i></br>
>> 
>> -hs_gap &nbsp;&nbsp;&nbsp;  <i><b>#Maximum gap size allowed during the mpurity removal (Default: 0).</b></i></br>
>> 
>> -id_gap &nbsp;&nbsp;&nbsp;  <i><b>#Maximum gap size allowed during the chimera removal (Default: 20bp, when the size of the gap is larger than 20bp, the gap will be cut).</b></i></br>
>> 
>> -Match, -Mismatch and -Delta &nbsp;&nbsp;&nbsp;  <i><b>#Weights for match, mismatch and indels. These parameters are for Smith-Waterman style local alignment using wraparound dynamic programming. Lower weights allow alignments with more mismatches and indels. A match weight of 2 has proven effective with mismatch and indel penalties in the range of 3 to 7. Mismatch and indel weights are interpreted as negative numbers. A 3 is more permissive and a 7 less permissive. The recomended values for Match Mismatch and Delta are 2, 7, and 7 respectively.</b></i></br>
>> 
>> -PM and -PI &nbsp;&nbsp;&nbsp;  <i><b>#Probabilistic data is available for PM values of 80 and 75 and PI values of 10 and 20. The best performance can be achieved with values of PM=80 and PI=10. Values of PM=75 and PI=20 give results which are very similar, but often require as much as ten times the processing time when compared with values of PM=80 and PI=10.</b></i></br>
>> 
>> -Minscore &nbsp;&nbsp;&nbsp;  <i><b>#The alignment of a tandem repeat must meet or exceed this alignment score to be reported. For example, if we set the matching weight to 2 and the minimun score to 50, assuming perfect alignment, we will need to align at least 25 characters to meet the minimum score (for example 5 copies with a period of size 5).</b></i></br>
>> 
>> -MaxPeriod &nbsp;&nbsp;&nbsp;  <i><b>#Period size is the program's best guess at the pattern size of the tandem repeat. The program will find all repeats with period size between 1 and 2000, but the output can be limited to a smaller range.</b></i></br>
>> 
>> -m   &nbsp;&nbsp;  <i><b>#The minimum length of the detected overlap sequences (Default: 100bp).</b></i></br>
>> 
>> -q1  &nbsp;&nbsp;  <i><b>#The file with left reads for the 1-th paired-end reads.</b></i></br>
>> 
>> -q2  &nbsp;&nbsp;  <i><b>#The file with right reads for the 1-th paired-end reads.</b></i></br>
>> 
>> -q3  &nbsp;&nbsp;  <i><b>#The file with left reads for the 2-th paired-end reads.</b></i></br>
>> 
>> -q4  &nbsp;&nbsp;  <i><b>#The file with right reads for the 2-th paired-end reads.</b></i></br>
>> 
>> -q5  &nbsp;&nbsp;  <i><b>#The file with left reads for the 3-th paired-end reads.</b></i></br>
>> 
>> -q6  &nbsp;&nbsp;  <i><b>#The file with right reads for the 3-th paired-end reads.</b></i></br>
>> 
>> -q7  &nbsp;&nbsp;  <i><b>#The file with left reads for the 4-th paired-end reads.</b></i></br>
>> 
>> -q8  &nbsp;&nbsp;  <i><b>#The file with right reads for the 4-th paired-end reads.</b></i></br>
>> 
>> -q9  &nbsp;&nbsp;  <i><b>#The file with left reads for the 5-th paired-end reads.</b></i></br>
>> 
>> -q10   &nbsp;&nbsp;  <i><b>#The file with right reads for the 5-th paired-end reads.</b></i></br>
>> 
>> -P  &nbsp;&nbsp;  <i><b>#The Pacbio CLR long reads.</b></i></br>
>> 
>> -S  &nbsp;&nbsp;  <i><b>#The CCS/HiFi long reads.</b></i></br>
>> 
>> -N  &nbsp;&nbsp;  <i><b>#The Nanopore long reads.</b></i></br>
>> 
>> -f  &nbsp;&nbsp;  <i><b>#The reference genome used for detection results evaluation.</b></i></br>
>> 
>> -species &nbsp;&nbsp;&nbsp;  <i><b>#The scientific name of the species being detected (only used in detection results evaluation).</b></i></br>
>> 
>> -o  &nbsp;&nbsp;  <i><b>#The directory used to save the final detection results.</b></i></br>
>> 
>> -help &nbsp;&nbsp;  <i><b>#Instructions for using command and parameters.</b></i></br>
	
### Examples of using LongRepMarker_v2.0 
   
>> <b><li>Reference-assisted mode</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r <reference.fa | assemblies.fa> &nbsp; -k [49] &nbsp; -m [100] &nbsp; -t [36] &nbsp; -o [/home/finalResults/] &nbsp; [options] 
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r  /home/.../reference.fa  &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -o /home/.../Results/
	    
>> <b><li><i>de novo</i> mode only based on NGS short paired-end reads</li></b> 

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -q3 [ read3.fq ] &nbsp; -q4 [ read4.fq ] &nbsp; -k [ 49 ] &nbsp; -m [ 100 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1  /home/.../read1.fq  &nbsp;  -q2  /home/.../read2.fq  &nbsp; -q3  /home/.../read3.fq  &nbsp;  -q4  /home/.../read4.fq  &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/
	
>> <b><li><i>de novo</i> mode based on NGS short paired-end reads + Pacbio/CCS/HiFi long reads</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -P < Pacbio.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options] 
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1  /home/.../read1.fq  &nbsp;  -q2  /home/.../read2.fq  &nbsp; -P  /home/.../pacbio.fq  &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -S < CCS/HiFi.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1  /home/.../read1.fq  &nbsp;  -q2  /home/.../read2.fq  &nbsp; -S  /home/.../CCS.fq | HiFi.fq  &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/
	    
>> <b><li><i>de novo</i> mode based on NGS short paired-end reads + Nanopore long reads</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -N < Nanopore.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options] 
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1  /home/.../read1.fq  &nbsp;  -q2  /home/.../read2.fq  &nbsp; -N  /home/.../Nanopore.fq  &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/

>> <b><li><i>de novo</i> mode only based on Pacbio/CCS/HiFi long reads</li></b>
		
>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -P < Pacbio.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -P  /home/.../pacbio.fq &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -S < CCS/HiFi.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -P  /home/.../ccs.fq | HiFi.fq &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/

>> <b><li><i>de novo</i> mode only based on Nanopore long reads</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -N < Nanopore.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -N  /home/.../Nanopore.fq | HiFi.fq &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/
	
>> <b><li>When dealing large datasets in the <i>de novo</i> mode &nbsp; (&nbsp;Take <i>de novo</i> mode only based on NGS short paired-end reads as an example &nbsp;)</li></b>

>> >> java &nbsp;&nbsp; -Xmx300G &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 100 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; -Xmx300G &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1  /home/.../read1.fq  &nbsp;  -q2  /home/.../read2.fq  &nbsp; -q3  /home/.../read3.fq  &nbsp;  -q4  /home/.../read4.fq  &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/
>> >> 
>> <b><li>Running longRepMarker in the background &nbsp; (&nbsp;Take <i>de novo</i> mode only based on NGS short paired-end reads as an example &nbsp;)</li></b>
>> >> 
>> >> nohup &nbsp;&nbsp; java &nbsp;&nbsp; -Xmx300G &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 100 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options] &nbsp; > &nbsp;  /home/.../log/LongRepMarker.info &nbsp; 2>&1 &
>> >> 
>> >> E.g., nohup &nbsp;&nbsp; java  &nbsp;&nbsp; -Xmx300G &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1  /home/.../read1.fq  &nbsp;  -q2  /home/.../read2.fq &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -f /home/.../reference.fa &nbsp; -o /home/.../Results/  &nbsp; > &nbsp;  /home/.../log/LongRepMarker.info &nbsp; 2>&1 &
>> >> 
>> <b><li>Running longRepMarker without tandem repeat detection &nbsp; (&nbsp;Take <i>reference-assisted</i> mode as an example &nbsp;)</li></b>
>> >>
>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r <reference.fa | assemblies.fa> &nbsp; -T [no] &nbsp; -k [49] &nbsp; -m [100] &nbsp; -t [36] &nbsp; -o [/home/finalResults/] &nbsp; [options] 
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r  /home/.../reference.fa  &nbsp; -T no &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -o /home/.../Results/	
Output 
>> >> 
>> <b><li>Generation of the masking reports (*.tbl) by using RepeatMasker &nbsp; </li></b>
>> >>
>> >> cd  /home/LongRepMarker_v2.0-master/results/
>> >> 
>> >> ./RepeatMasker.sh  
>> >> 
>> >> Please note that this shell script can only be executed after the LongRepMarker_v2.0 has finished running. Additionally, the parameters '-species' and '-f' must be configured during the running of LongRepMarker_v2.0.
>> >> 

### Results produced by LongRepMarker_v2.0 
 
>> <b><li>The final detection results will be stored in the path specified by '-o'. </li> </b></br>
>> <b><li>If the parameter '-o' is not configured, the final detection results will be stored in the path of '~/LongRepMarker_v2.0-master/Results'. </li> </b></br>
>> >> 
>> <b><li>The following detailed reports will be generated in the final detection results.</li></b></br>
>> >> 
>> >><i><b>#A statistical report that records the alignment of the detected repetitive sequences in the genome. </b></i> </br>
>> >>~/LongRepMarker_v2.0-master/Results/Alignment_report.info    &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A statistical report that records the distribution of the detected repetitive sequences in the genome.</b></i> </br>
>> >>~/LongRepMarker_v2.0-master/Results/Annotation_report.info    &nbsp;&nbsp;&nbsp; </br></br>
>> >><i><b>#A statistical report that records the size of the detected repetitive sequences.</b></i> </br>
>> >>~/LongRepMarker_v2.0-master/Results/Size_report.info       &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A report that records all the steps and prompts when the LongRepMarker algorithm runs.</b></i></br> 
>> >>~/LongRepMarker_v2.0-master/log/LongRepMarker.info       &nbsp;&nbsp;&nbsp; </br></br>
>> >><i><b>#A statistical report that records the running time, memory, and disk consumption when the LongRepMarker algorithm runs.</b></i>  
>> >>~/LongRepMarker_v2.0-master/log/Time&Memory&Disk.info       &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A statistical report that records the exceptions that occur while the LongRepMarker algorithm is running.</b></i></br>
>> >>~/LongRepMarker_v2.0-master/log/Exception.info &nbsp;&nbsp;&nbsp; </br></br>
>> >><i><b>#Detected TEs and all their copies in the genome.</b></i></br>
>> >>~/LongRepMarker_v2.0-master/Results/multiRepeatCopies.fa         &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A report that records the structural variations present in the detected TEs.</b></i></br>
>> >>~/LongRepMarker_v2.0-master/Results/multiRepeatCopies_sv.vcf         &nbsp;&nbsp;&nbsp;   </br></br>
>> >><i><b>#The final TEs obtained after the consensus operation.</b></i></br> 
>> >>~/LongRepMarker_v2.0-master/Results/TEconsensus.fa         &nbsp;&nbsp;&nbsp;   </br></br>
>> >><i><b>#The final consistent repetitive sequences obtained by merging TEs and tandem repeats.</b></i></br> 
>> >>~/LongRepMarker_v2.0-master/Results/finalRepeats.fa  &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#The final consistent repetitive sequences with classification information.</b></i></br>
>> >>~/LongRepMarker_v2.0-master/Results/finalRepeats.fa.classified   &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#All log files can be found in the following derictory.</b></i></br>
>> >>~/LongRepMarker_v2.0-master/log/   &nbsp;&nbsp;&nbsp;  </br></br>   

Citations 
==================================

<b>Xingyu Liao</b>, Min Li, Kang Hu, Fang-Xiang Wu, Xin Gao, Jianxin Wang, A sensitive repeat identification framework based on short and long reads, <b><i>Nucleic Acids Research</i></b>, Volume 49, Issue 17, 27 September 2021, Page e100, https://doi.org/10.1093/nar/gkab563 </br>

<b>Xingyu Liao</b>, Kang Hu, Adil Salhi, You Zou, Jianxin Wang, Xin Gao, msRepDB: a comprehensive repetitive sequence database of over 80 000 species, <b><i>Nucleic Acids Research</b></i>, Volume 50, Issue D1, 7 January 2022, Pages D236–D245, https://doi.org/10.1093/nar/gkab1089
