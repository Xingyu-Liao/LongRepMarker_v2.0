Description
==============


Improvements
==============



Latest Version (v2.0)
==============

https://github.com/Xingyu-Liao/LongRepMarker_v2.0


Author
=======

Copyright (C) 2022  &nbsp;&nbsp; <b>Xingyu Liao</b> &nbsp;&nbsp;  ( Xingyu_Liao@126.com / xingyu.liao@kaust.edu.sa )

Computer, Electrical and Mathematical Sciences and Engineering Division, </br>
King Abdullah University of Science and Technology (KAUST), </br>
Thuwal, 23955, Saudi Arabia.  </br>

Downloading LongRepMarker_v2.0 
==================================
 git clone https://github.com/Xingyu-Liao/LongRepMarker_v2.0.git </br>
 git lfs clone https://git-lfs.github.com/spec/v1 </br>

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
>> -k    &nbsp;&nbsp;&nbsp;  <i><b>#The k-mer size used in detection (Default: 49).</b></i></br>
>> -e    &nbsp;&nbsp;&nbsp;  <i><b>#This parameter controls whether the short reads error correction is executed (Default: 'yes').</b></i></br>
>> -E    &nbsp;&nbsp;&nbsp;  <i><b>#This parameter controls whether the long reads error correction is executed (Default: 'yes').</b></i></br>
>> -c    &nbsp;&nbsp;&nbsp;  <i><b>#The coverage threshold which is used to filter the low coverage overlaps (Default: 1.5).</b></i></br>
>> -t    &nbsp;&nbsp;&nbsp;  <i><b>#The number of threads (Default: 36).</b></i></br>
>> -R    &nbsp;&nbsp;&nbsp;  <i><b>#The local alignment mode (Default: sensitive).</b></i></br>
>> -sensitive  &nbsp;&nbsp;&nbsp;  <i><b>#The sensitivity of overlaps filtering (Default: 0.4).</b></i></br>
>> -w   &nbsp;&nbsp;&nbsp;  <i><b>#The size of sliding window for overlaps filtering (Default: 30bp).</b></i></br>
>> -L   &nbsp;&nbsp;&nbsp;  <i><b>#The known genome size.</b></i></br>
>> -C   &nbsp;&nbsp;&nbsp;  <i><b>#The known average coverage of long reads.</b></i></br>
>> -lenDis  &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 1000bp).</b></i></br>
>> -hs_gap &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 0).</b></i></br>
>> -id_gap &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 20).</b></i></br>
>> -Match &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 2).</b></i></br>
>> -Mismatch &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 7).</b></i></br>
>> -Delta &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 7).</b></i></br>
>> -PM &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 80).</b></i></br>
>> -PI &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 10).</b></i></br>
>> -Minscore &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 50).</b></i></br>
>> -MaxPeriod &nbsp;&nbsp;&nbsp;  <i><b>#The length threshold for alignment mode selection (Default: 500).</b></i></br>
>> -m   &nbsp;&nbsp;  <i><b>#The minimum length of the detected overlap sequences (Default: 100bp).</b></i></br>
>> -q1  &nbsp;&nbsp;  <i><b>#The file with left reads for the 1-th paired-end reads.</b></i></br>
>> -q2  &nbsp;&nbsp;  <i><b>#The file with right reads for the 1-th paired-end reads.</b></i></br>
>> -q3  &nbsp;&nbsp;  <i><b>#The file with left reads for the 2-th paired-end reads.</b></i></br>
>> -q4  &nbsp;&nbsp;  <i><b>#The file with right reads for the 2-th paired-end reads.</b></i></br>
>> -q5  &nbsp;&nbsp;  <i><b>#The file with left reads for the 3-th paired-end reads.</b></i></br>
>> -q6  &nbsp;&nbsp;  <i><b>#The file with right reads for the 3-th paired-end reads.</b></i></br>
>> -q7  &nbsp;&nbsp;  <i><b>#The file with left reads for the 4-th paired-end reads.</b></i></br>
>> -q8  &nbsp;&nbsp;  <i><b>#The file with right reads for the 4-th paired-end reads.</b></i></br>
>> -q9  &nbsp;&nbsp;  <i><b>#The file with left reads for the 5-th paired-end reads.</b></i></br>
>> -q10   &nbsp;&nbsp;  <i><b>#The file with right reads for the 5-th paired-end reads.</b></i></br>
>> -P  &nbsp;&nbsp;  <i><b>#The Pacbio CLR long reads.</b></i></br>
>> -S  &nbsp;&nbsp;  <i><b>#The CCS/HiFi long reads.</b></i></br>
>> -N  &nbsp;&nbsp;  <i><b>#The Nanopore long reads.</b></i></br>
>> -f  &nbsp;&nbsp;  <i><b>#The reference genome used for detection results evaluation.</b></i></br>
>> -species &nbsp;&nbsp;&nbsp;  <i><b>#The scientific name of the species being detected (only used in detection results evaluation).</b></i></br>
>> -o  &nbsp;&nbsp;  <i><b>#The directory used to save the final detection results.</b></i></br>
	
### Examples of using LongRepMarker_v2.0 
   
>> <b><li>Reference-assisted mode</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r <reference.fa | assemblies.fa> &nbsp; -k [49] &nbsp; -m [100] &nbsp; -t [36] &nbsp; -o [/home/finalResults/] &nbsp; [options] 
	    
>> <b><li><i>de novo</i> mode only based on NGS short paired-end reads</li></b> 

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -q3 [ read3.fq ] &nbsp; -q4 [ read4.fq ] &nbsp; -k [ 49 ] &nbsp; -m [ 100 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
	
>> <b><li><i>de novo</i> mode based on NGS short paired-end reads + Pacbio/CCS/HiFi long reads</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read1.fq > &nbsp; -P < Pacbio.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options] 

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read1.fq > &nbsp; -S < CCS/HiFi.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
	    
>> <b><li><i>de novo</i> mode based on NGS short paired-end reads + Nanopore long reads</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read1.fq > &nbsp; -N < Nanopore.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options] 

>> <b><li><i>de novo</i> mode only based on Pacbio/CCS/HiFi long reads</li></b>
		
>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -P < Pacbio.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -S < CCS/HiFi.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]

>> <b><li><i>de novo</i> mode only based on Nanopore long reads</li></b>

>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -N < Nanopore.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 5000 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
	
>> <b><li>When dealing large datasets in the <i>de novo</i> mode &nbsp; (&nbsp;Take <i>de novo</i> mode only based on NGS short paired-end reads as an example &nbsp;)</li></b>

>> >> java &nbsp;&nbsp; -Xmx300G &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -q1 < read1.fq > &nbsp; -q2 < read2.fq > &nbsp; -k [ 49 ] &nbsp; -m [ 100 ] &nbsp; -f [ reference.fa ] &nbsp; -t [ 36 ] &nbsp; -o [ /home/finalResults/ ] &nbsp; [options]
		
Output 
==================================
    
<li>The final detection results will be stored in the path specified by '-o'. If the parameter '-o' is not configured, the final detection results will be stored in the path of '~/LongRepMarker_v2.0-master/Results'. </li> </br>

<li>The following detailed reports will be generated in the final detection results.</li> </br>

>> ~/LongRepMarker/Results/Alignment_report.info    &nbsp;&nbsp;&nbsp;  <i><b>#The alignment report of the detected repetitive sequences. </b></i> </br>
>> ~/LongRepMarker/Results/Annotation_report.info    &nbsp;&nbsp;&nbsp; <i><b>#The distribution report of the detected repetitive sequences in the genome.</b></i> </br>
>> ~/LongRepMarker/Results/Size_report.info       &nbsp;&nbsp;&nbsp;    <i><b>#The size report of the detected repetitive sequences.</b></i> </br>
>> ~/LongRepMarker/Results/multiRepeatCopies_trf.fa         &nbsp;&nbsp;&nbsp;     <i><b>#Merging detection results of LongRepMarker and tandem repeats.</b></i> </br>
>> ~/LongRepMarker/Results/multiRepeatCopies_sv.vcf         &nbsp;&nbsp;&nbsp;     <i><b>#The varation report of the detected repetitive sequences.</b></i> </br>
>> ~/LongRepMarker/Results/finalRepeatConsensus.fa        &nbsp;&nbsp;&nbsp;       <i><b>#The final repetitive sequences obtained after the consensus operation.</b></i> </br>
>> ~/LongRepMarker/Results/finalRepeatConsensus.fa.classified   &nbsp;&nbsp;&nbsp;  <i><b>#The final repetitive sequences with annotation information.</b></i> </br>
	   

Citation 
==================================

<b>Xingyu Liao</b>, Min Li, Kang Hu, Fang-Xiang Wu, Xin Gao, Jianxin Wang, A sensitive repeat identification framework based on short and long reads, <b><i>Nucleic Acids Research</i></b>, Volume 49, Issue 17, 27 September 2021, Page e100, https://doi.org/10.1093/nar/gkab563


