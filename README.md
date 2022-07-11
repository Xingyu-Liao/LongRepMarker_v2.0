Description
==============
The new version of the detection mode only based on the third-generation sequencing reads is currently being debugged. Once the debugging is completed, we will make it online as soon as possible. Thanks!

Improvements
==============
>> 1> Comparison of the proportion and detailed classification of TEs generated by LongRepMarker_v2.1.2 and RepeatScout covering the Drosophila RepBase library.</br>
>> ![image](https://user-images.githubusercontent.com/60574102/172210665-fdaacd92-c6a8-4b5c-8875-1617f1a66d4a.png)
==================================

Latest Version (v2.1.2)
==============

The latest version of LongRepMarker was released on google drive (https://drive.google.com/file/d/1KvC152P2i3gGcG055W5IrhZ_PctWpUam/view?usp=sharing) and tencent cloud drive (https://share.weiyun.com/3cHVaPfc, Extraction code：202275) respectively on ‎June 6, 2022. 


Author
=======

Copyright (C) 2022  &nbsp;&nbsp; <b>Xingyu Liao</b> &nbsp;&nbsp;  ( Xingyu_Liao@126.com / xingyu.liao@kaust.edu.sa )

Computer, Electrical and Mathematical Sciences and Engineering Division, </br>
King Abdullah University of Science and Technology (KAUST), </br>
Thuwal, 23955, Saudi Arabia.  </br>

Downloading LongRepMarker_v2.1.2 
==================================

<li>Download LongRepMarker_v2.1.2 from google or baidu cloud drive</li>

>> google drive （https://drive.google.com/file/d/1KvC152P2i3gGcG055W5IrhZ_PctWpUam/view?usp=sharing) or </br>
>> tencent cloud drive （https://share.weiyun.com/3cHVaPfc, Extraction code：202275）. </br>

Installation of LongRepMarker_v2.1.2 with conda
==================================

>> 1> Decompress the "LongRepMarker_v2.1.2-master.zip" file.</br>
     <li>cd /data/zip                       &nbsp;&nbsp;&nbsp;     # for example, the compressed file is stored in the directory of "/data/zip".</br> 
     <li>unzip ./LongRepMarker_v2.1.2-master.zip     &nbsp;&nbsp;&nbsp;     # decompresses the file named "LongRepMarker_v2.1.2-master.zip".</br>
----------------------------------------------------------------------</br>
>> 2> Create a conda virtual environment.</br>
     <li>conda create -n TE python=3.8 pip=20.0.2 perl=5.32.1 make=4.2 unzip gcc=10.3.0 java-jdk=8.0.112 zlib  pysam cmake zstd minimap2 samtools spades bwa bowtie2</br>
----------------------------------------------------------------------</br>
>> 3> Activate the conda environment.</br>
     <li>conda activate TE </br>
----------------------------------------------------------------------</br>
>> 4> Enter the working directory of LongRepMarker from the conda environment.</br>
    <li>(TE)xingyu_liao@kw60204: cd /data/zip/LongRepMarker_v2.1.2-master   &nbsp;&nbsp;&nbsp;     #TE is the name of conda virtual environment. </br>
----------------------------------------------------------------------</br>
>> 5> Install LongRepMarker_v2.1.</br>
    <li>(TE)xingyu_liao@kw60204:/data/zip/LongRepMarker_v2.1.2-master: ./Makefile.sh </br>
    
conda list
==================================   

<table>
    <tr>
    <td colspan="4" >(TE) xingyu_liao@kw60204:~$ conda list</td>
    </tr>
    <tr>
    <td colspan="4" >(TE) packages in environment at /home/xingyu_liao/miniconda3/envs/TE:</td>
    </tr>
    <tr>
        <td># Name </td>
	<td># Version </td>
	<td># Build </td>
	<td># Channel </td>
    </tr>
    <tr>
        <td>_libgcc_mutex</td>
	<td>0.1 </td>
	<td>conda_forge </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>_openmp_mutex</td>
	<td>4.5 </td>
	<td>2_gnu </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>_sysroot_linux-64_curr_repodata_hack</td>
	<td>3 </td>
	<td>h5bd9786_13 </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>binutils_impl_linux-64</td>
	<td>2.36.1 </td>
	<td>h193b22a_2 </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>bowtie2</td>
	<td>2.4.5 </td>
	<td>py38hfbc8389_2 </td>
	<td>bioconda</td>
    </tr>
    <tr>
        <td>bwa</td>
	<td>0.7.17 </td>
	<td>h7132678_9 </td>
	<td>bioconda</td>
    </tr>
    <tr>
        <td>bzip2</td>
	<td>1.0.8 </td>
	<td>h7f98852_4 </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>c-ares</td>
	<td>1.18.1  </td>
	<td>h7f98852_0 </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>ca-certificates</td>
	<td>2022.6.15   </td>
	<td>ha878542_0 </td>
	<td>conda-forge</td>
    </tr>
    <tr>
        <td>cmake </td>
	<td>3.23.2    </td>
	<td>h5432695_0 </td>
	<td>conda-forge</td>
    </tr>	
    <tr>
        <td>expat </td>
	<td>2.4.8     </td>
	<td>h27087fc_0 </td>
	<td>conda-forge</td>
    </tr>	
    <tr>
        <td>gcc </td>
	<td>10.3.0     </td>
	<td>he2824d0_10 </td>
	<td>conda-forge</td>
    </tr>	
    <tr>
        <td>gcc_impl_linux-64 </td>
	<td>10.3.0     </td>
	<td>hf2f2afa_16 </td>
	<td>conda-forge</td>
    </tr>	
    <tr>
        <td>htslib  </td>
	<td>1.15.1    </td>
	<td>h9753748_0  </td>
	<td>bioconda </td>
    </tr>	
    <tr>
        <td>java-jdk </td>
	<td>8.0.112    </td>
	<td>1  </td>
	<td>bioconda </td>
    </tr>	
    <tr>
        <td>k8  </td>
	<td>0.2.5    </td>
	<td>hd03093a_2 </td>
	<td>bioconda </td>
    </tr>	
    <tr>
        <td>kernel-headers_linux-64 </td>
	<td>3.10.0   </td>
	<td>h4a8ded7_13 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>keyutils </td>
	<td>1.6.1  </td>
	<td>h166bdaf_0 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>krb5  </td>
	<td>1.19.3  </td>
	<td> h3790be6_0 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>ld_impl_linux-64   </td>
	<td>2.36.1  </td>
	<td> hea4e1c9_2  </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libcurl   </td>
	<td>7.83.1  </td>
	<td> h7bff187_0  </td>
	<td>conda-forge </td>
    </tr>
    <tr>
        <td>libdeflate   </td>
	<td>1.10  </td>
	<td> h7f98852_0 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libedit   </td>
	<td>3.1.20191231 </td>
	<td> he28a2e2_2 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libev   </td>
	<td>4.33 </td>
	<td> h516909a_1 </td>
	<td>conda-forge </td>
    </tr>
    <tr>
        <td>libffi  </td>
	<td>3.4.2  </td>
	<td>h7f98852_5 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libgcc-devel_linux-64 </td>
	<td>10.3.0 </td>
	<td> he6cfe16_16 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libgcc-ng</td>
	<td>12.1.0 </td>
	<td> h8d9b700_16  </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libgomp</td>
	<td>12.1.0</td>
	<td> h8d9b700_16  </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libnghttp2</td>
	<td>1.47.0</td>
	<td> h727a467_0  </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libnsl </td>
	<td>2.0.0 </td>
	<td> h7f98852_0 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libsanitizer  </td>
	<td>10.3.0 </td>
	<td> h26c7422_16 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libssh2  </td>
	<td>1.10.0  </td>
	<td> ha56f1ee_2 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libstdcxx-ng  </td>
	<td>12.1.0   </td>
	<td> ha89aaad_16 </td>
	<td>conda-forge </td>
    </tr>
    <tr>
        <td>libuuid  </td>
	<td>2.32.1  </td>
	<td> h7f98852_1000 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libuv  </td>
	<td>1.43.0  </td>
	<td> h7f98852_0 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>libzlib   </td>
	<td>1.2.12  </td>
	<td> h166bdaf_1 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>llvm-meta   </td>
	<td> 7.0.0   </td>
	<td> 0 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>lz4-c  </td>
	<td> 1.9.3   </td>
	<td> h9c3ff4c_1 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>make  </td>
	<td>4.2.1   </td>
	<td>h14c3975_2004 </td>
	<td>conda-forge </td>
    </tr>		
    <tr>
        <td>minimap2  </td>
	<td>2.24  </td>
	<td>h7132678_1 </td>
	<td>bioconda </td>
    </tr>
    <tr>
        <td>ncurses   </td>
	<td>6.3 </td>
	<td> h27087fc_1  </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>openjdk   </td>
	<td>8.0.112 </td>
	<td> zulu8.19.0.1_3  </td>
	<td>conda-forge </td>
    </tr>
    <tr>
        <td>openmp  </td>
	<td>7.0.0 </td>
	<td> h2d50403_0 </td>
	<td>conda-forge </td>
    </tr>
    <tr>
        <td>openssl </td>
	<td>1.1.1q </td>
	<td> h166bdaf_0 </td>
	<td>conda-forge </td>
    </tr>
    <tr>
        <td>perl  </td>
	<td>5.32.1 </td>
	<td> 2_h7f98852_perl5 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>pip  </td>
	<td>20.0.2  </td>
	<td> py_2 </td>
	<td>conda-forge </td>
    </tr>	
    <tr>
        <td>pysam  </td>
	<td>0.19.1  </td>
	<td> py38h8bf8b8d_0 </td>
	<td>bioconda </td>
    </tr>	
    <tr>
        <td>python </td>
	<td>3.8.13 </td>
	<td> h582c2e5_0_cpython </td>
	<td> conda-forge</td>
    </tr>	
    <tr>
        <td>python_abi</td>
	<td> 3.8  </td>
	<td> 2_cp38  </td>
	<td> conda-forge</td>
    </tr>	
    <tr>
        <td>readline </td>
	<td> 8.1.2  </td>
	<td> h0f457ee_0  </td>
	<td> conda-forge</td>
    </tr>
    <tr>
        <td>rhash </td>
	<td>  1.4.3   </td>
	<td> h166bdaf_0 </td>
	<td> conda-forge</td>
    </tr>	
    <tr>
        <td>samtools </td>
	<td>  1.15.1   </td>
	<td> h1170115_0 </td>
	<td> bioconda </td>
    </tr>	
    <tr>
        <td>setuptools </td>
	<td>  63.1.0    </td>
	<td> py38h578d9bd_0 </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td>spades </td>
	<td> 3.15.4    </td>
	<td> h95f258a_0 </td>
	<td> bioconda </td>
    </tr>	
    <tr>
        <td>sqlite </td>
	<td> 3.39.0    </td>
	<td>  h4ff8645_0 </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td> sysroot_linux-64  </td>
	<td> 2.17    </td>
	<td> h4a8ded7_13 </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td> tbb  </td>
	<td> 2020.2   </td>
	<td> h4bd325d_4 </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td> tk  </td>
	<td> 8.6.12   </td>
	<td> h27826a3_0 </td>
	<td> conda-forge </td>
    </tr>	
    <tr>
        <td> unzip   </td>
	<td> 6.0   </td>
	<td> h7f98852_3  </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td> wheel   </td>
	<td> 0.37.1   </td>
	<td> pyhd8ed1ab_0  </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td> xz    </td>
	<td> 5.2.5   </td>
	<td> h516909a_1 </td>
	<td> conda-forge </td>
    </tr>	
    <tr>
        <td> zlib   </td>
	<td> 1.2.12   </td>
	<td> h166bdaf_1 </td>
	<td> conda-forge </td>
    </tr>
    <tr>
        <td> zstd   </td>
	<td> 1.5.2   </td>
	<td> h8a70e8d_2 </td>
	<td> conda-forge </td>
    </tr>
</table>


Running of LongRepMarker_v2.1
==================================
	
<li>Running command :</li></br>

>> cd /home/LongRepMarker_v2.1.2-master </br>

>> java &nbsp;&nbsp;&nbsp; [MemConfig] &nbsp;&nbsp;&nbsp; LongRepMarker &nbsp;&nbsp;&nbsp; [options]</br>
	
[MemConfig] </br>
	
>> -Xmx300G   &nbsp;&nbsp;  <i><b># This item is used to set the maximum size of the java heap memory，which is only configured when processing 
>> some large datasets (E.g, the genome size >=5Gb or the total size of sequencing data >= 50GB).</b></i></br>
	
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
>> -R    &nbsp;&nbsp;&nbsp;  <i><b>#The local alignment mode ('fast' and 'sensitive'. Default: 'fast').</b></i></br>
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
>> -aS  &nbsp;&nbsp;  <i><b>#Minimal alignment coverage (fraction) for the shorter sequence (Default: 0.8).</b></i></br>
>> 
>> -c  &nbsp;&nbsp;  <i><b>#Sequence identity threshold (Default: 0.8).</b></i></br>
>> 
>> -g  &nbsp;&nbsp;  <i><b>#Sequence is clustered to the best cluster that meet the threshold (Default: 1).</b></i></br>
>> 
>> -G  &nbsp;&nbsp;  <i><b>#Use global sequence identity (Default: 0).</b></i></br>
>> 
>> -A  &nbsp;&nbsp;  <i><b>#Maximum unaligned part (amino acids/bases) for the longer sequence (Default: 80).</b></i></br>
>> 
>> -f  &nbsp;&nbsp;  <i><b>#The reference genome used for detection results evaluation.</b></i></br>
>> 
>> -species &nbsp;&nbsp;&nbsp;  <i><b>#The scientific name of the species being detected (only used in detection results evaluation).</b></i></br>
>> 
>> -o  &nbsp;&nbsp;  <i><b>#The directory used to save the final detection results.</b></i></br>
>> 
>> -help &nbsp;&nbsp;  <i><b>#Instructions for using command and parameters.</b></i></br>
	
### Examples of using LongRepMarker_v2.1 
   
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
>> <b><li>Run longRepMarker in fast mode without tandem repeat detection &nbsp; (&nbsp;Take <i>reference-assisted</i> mode as an example &nbsp;)</li></b>
>> >>
>> >> java &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r <reference.fa | assemblies.fa> &nbsp; -R [fast] &nbsp; -T [no] &nbsp; -k [49] &nbsp; -m [100] &nbsp; -t [36] &nbsp; -o [/home/finalResults/] &nbsp; [options] 
>> >> 
>> >> E.g., &nbsp; java  &nbsp;&nbsp; LongRepMarker &nbsp;&nbsp; -r  /home/.../reference.fa  &nbsp; -R fast &nbsp; -T no &nbsp; -k 49 &nbsp; -m 100 &nbsp; -t 36 &nbsp; -o /home/.../Results/	
>> >> 
>> <b><li>Generation of the masking reports (*.tbl) by using RepeatMasker &nbsp; </li></b>
>> >>
>> >> cd  /home/LongRepMarker_v2.1.2-master/results/
>> >> 
>> >> ./RepeatMasker.sh  
>> >> 
>> >> Please note that this shell script can only be executed after the LongRepMarker_v2.1.2 has finished running. Additionally, the parameters '-species' and '-f' must be configured during the running of LongRepMarker_v2.1.2.
>> >> 

### Results produced by LongRepMarker_v2.1.2 
 
>> <b><li>The final detection results will be stored in the path specified by '-o'. </li> </b></br>
>> <b><li>If the parameter '-o' is not configured, the final detection results will be stored in the path of '~/LongRepMarker_v2.1-master/results'. </li> </b></br>
>> <b><li>The following detailed reports will be generated in the final detection results.</li></b></br>
>> >><i><b>#A statistical report that records the alignment of the detected TE elements in the genome. </b></i> </br>
>> >>~/LongRepMarker_v2.1.2-master/results/Alignment_report.info    &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A statistical report that records the distribution of the detected TE elements in the genome.</b></i> </br>
>> >>~/LongRepMarker_v2.1.2-master/results/Annotation_report.info    &nbsp;&nbsp;&nbsp; </br></br>
>> >><i><b>#A statistical report that records the length distribution of the detected TE elements.</b></i> </br>
>> >>~/LongRepMarker_v2.1.2-master/results/Size_report.info       &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A report that records all the steps and prompts when the LongRepMarker algorithm runs.</b></i></br> 
>> >>~/LongRepMarker_v2.1.2-master/log/LongRepMarker.info       &nbsp;&nbsp;&nbsp; </br></br>
>> >><i><b>#A statistical report that records the running time, memory, and disk consumption when the LongRepMarker algorithm runs.</b></i>  
>> >>~/LongRepMarker_v2.1.2-master/log/Time&Memory&Disk.info       &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A statistical report that records the exceptions that occur while the LongRepMarker algorithm is running.</b></i></br>
>> >>~/LongRepMarker_v2.1.2-master/log/Exception.info &nbsp;&nbsp;&nbsp; </br></br>
>> >><i><b>#Detected TEs and all their copies in the genome.</b></i></br>
>> >>~/LongRepMarker_v2.1.2-master/results/multiRepeatCopies.fa         &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#A report that records the structural variations present in the detected TEs.</b></i></br>
>> >>~/LongRepMarker_v2.1.2-master/results/multiRepeatCopies_sv.vcf         &nbsp;&nbsp;&nbsp;   </br></br>
>> >><i><b>#TE consensus sequences.</b></i></br> 
>> >>~/LongRepMarker_v2.1.2-master/results/TEconsensus.fa         &nbsp;&nbsp;&nbsp;   </br></br>
>> >><i><b>#TE consensus sequences with classification information.</b></i></br>
>> >>~/LongRepMarker_v2.1.2-master/results/TEconsensus.fa.classified   &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#Tandem repeats with location information.</b></i></br> 
>> >>~/LongRepMarker_v2.1.2-master/results/TandemRepeats.fa  &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#Tandem repeats masking results.</b></i></br>
>> >>~/LongRepMarker_v2.1.2-master/results/genomeSeq_TandemRepeats.mask  &nbsp;&nbsp;&nbsp;  </br></br>
>> >><i><b>#All log files can be found in the following derictory.</b></i></br>
>> >>~/LongRepMarker_v2.1.2-master/log/   &nbsp;&nbsp;&nbsp;  </br></br>   

Citations 
==================================

<b>Xingyu Liao</b>, Min Li, Kang Hu, Fang-Xiang Wu, Xin Gao, Jianxin Wang, A sensitive repeat identification framework based on short and long reads, <b><i>Nucleic Acids Research</i></b>, Volume 49, Issue 17, 27 September 2021, Page e100, https://doi.org/10.1093/nar/gkab563 </br>

<b>Xingyu Liao</b>, Kang Hu, Adil Salhi, You Zou, Jianxin Wang, Xin Gao, msRepDB: a comprehensive repetitive sequence database of over 80 000 species, <b><i>Nucleic Acids Research</b></i>, Volume 50, Issue D1, 7 January 2022, Pages D236–D245, https://doi.org/10.1093/nar/gkab1089

FAQs
==================================
> 1> /usr/include/stdlib.h:25:10: fatal error: bits/libc-header-start.h: No such file or directory （This problem may occur during the installation of the gfatools tool）<br>
>> Solution : Install gcc-multilib: </br>
>> Command: sudo apt-get install gcc-multilib g++-multilib </br>

> 2> If the memory space of the device is less than 100G, it is recommended to set the value of the parameter 't' to less than 8.<br>
>> Solution : -t 8 </br>

> 3> If detection of tandem repeats is not required, please set the value of the parameter 'T' to no.
>> Solution : -T no </br>
