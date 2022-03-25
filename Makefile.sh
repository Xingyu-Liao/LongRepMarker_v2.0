#!/bin/bash
alignment_dir=./alignment
program_dir=./programs
read_dir=./readfile
result_dir=./results
log_dir=./log
bin_dir=./bin

#Remove folders
rm -rf ./alignment
rm -rf ./readfile
rm -rf ./results
rm -rf ./programs
rm -rf ./Nanopore 
rm -rf ./log
rm -rf ./__pycache__

#Mkdir    
mkdir  ./alignment
mkdir  ./readfile
mkdir  ./results
mkdir  ./programs
mkdir  ./log  

#Check
echo "-------------------------------------------------------------------------------"
echo "01)Checking foundation."
which unzip || { echo "unzip is not found"; exit 1; } 
echo "unzip is ok."
which gcc || { echo "java is not found"; exit 1; } 
echo "gcc is ok."
which java || { echo "java is not found"; exit 1; } 
echo "java is ok."
which python || { echo "python is not found"; exit 1; } 
echo "python is ok."
which perl || { echo "perl is not found"; exit 1; } 
echo "perl is ok."
which cmake || { echo "cmake is not found"; exit 1; } 
echo "cmake is ok."

#Unzip-dsk
rm -rf ./programs/scripts
rm   -rf     ./programs/corePrograms
mkdir  ./programs/scripts
mkdir  ./programs/corePrograms
cp  ./tools/scripts/dsk          ./programs/scripts/
cp  ./tools/scripts/dsk2ascii    ./programs/scripts/
cp  ./tools/scripts/karect       ./programs/scripts/
cp  ./tools/scripts/bwa       ./programs/scripts/


#Unzip-bowtie2
rm -rf ./programs/bowtie2-2.4.4
unzip -o -d ./programs/ ./tools/bowtie2-2.4.4-source.zip   >  ./tools/unzip_bowtie2.log
mv  ./tools/unzip_bowtie2.log  ./log/

#Unzip-RepeatMasker
rm -rf ./programs/RepeatMasker
unzip -o -d ./programs/ ./tools/RepeatMasker.zip   >  ./tools/unzip_RepeatMasker.log
mv  ./tools/unzip_RepeatMasker.log  ./log/

#Unzip-RMblast
rm -rf ./programs/rmblast-2.11.0
unzip -o -d ./programs/ ./tools/rmblast-2.11.0.zip   >  ./tools/unzip_RMblast.log
mv  ./tools/unzip_RMblast.log  ./log/

#Unzip-Classifier
rm -rf ./programs/Classifier
unzip -o -d ./programs/ ./tools/Classifier.zip   >  ./tools/unzip_classifier.log
mv  ./tools/unzip_classifier.log  ./log/

#Unzip-necat
rm -rf ./programs/necat
unzip -o -d ./programs/ ./tools/necat.zip   >  ./tools/unzip_necat.log
mv  ./tools/unzip_necat.log  ./log/

#Unzip-TRF
rm -rf ./programs/TRF-master
unzip -o -d ./programs/ ./tools/TRF-master.zip   >  ./tools/unzip_TRF.log
mv  ./tools/unzip_TRF.log  ./log/

#Unzip-minimap2
rm -rf ./programs/minimap2-2.24
unzip -o -d ./programs/ ./tools/minimap2-2.24.zip  >  ./tools/unzip_minimap2.log
mv  ./tools/unzip_minimap2.log  ./log/

#Unzip-cdhit
rm -rf ./programs/cdhit-master
unzip -o -d ./programs/ ./tools/cdhit-master.zip   >  ./tools/unzip_cdhit.log
mv  ./tools/unzip_cdhit.log  ./log/

#Unzip-gfatools
rm -rf ./programs/gfatools-master
unzip -o -d ./programs/ ./tools/gfatools-master.zip   >  ./tools/unzip_gfatools.log
mv  ./tools/unzip_gfatools.log  ./log/

#Unzip-htslib
rm  -rf ./programs/htslib-1.14
tar -jxvf ./tools/htslib-1.14.tar.bz2 -C ./programs/  >  ./tools/unzip_htslib.log
mv  ./tools/unzip_htslib.log  ./log/

#Unzip-samtools
rm  -rf ./programs/samtools-1.14
tar -jxvf ./tools/samtools-1.14.tar.bz2 -C ./programs/  >  ./tools/unzip_samtools.log
mv  ./tools/unzip_samtools.log  ./log/

#Unzip-bcftools
rm  -rf ./programs/bcftools-1.14
tar -jxvf ./tools/bcftools-1.14.tar.bz2 -C ./programs/  >  ./tools/unzip_bcftools.log
mv  ./tools/unzip_bcftools.log  ./log/

#Unzip-SPAdes
rm  -rf ./programs/SPAdes-3.15.3
tar -zxvf ./tools/SPAdes-3.15.3.tar.gz -C ./programs/  >  ./tools/unzip_SPAdes.log
mv  ./tools/unzip_SPAdes.log  ./log/

#Edit permission
chmod 777 -R ./programs
chmod 777 -R ./alignment
chmod 777 -R ./readfile
chmod 777 -R ./log 
chmod 777 -R ./results 

#Install-dsk
echo "-------------------------------------------------------------------------------"
echo "02)Installing the dependent scripts." 
echo "Dependent scripts are installed."
echo "[Location]: "$(pwd)"/programs/scripts"
#Install-bowtie2
echo "-------------------------------------------------------------------------------"
echo "03)Installing bowtie2." 
cd ./programs/bowtie2-2.4.4/
make  1> ./Bowtie2_Install.log   2>  ./Bowtie2_Warning.log
cd ..
cd ..
mv  ./programs/bowtie2-2.4.4/Bowtie2_Install.log  ./log/
mv  ./programs/bowtie2-2.4.4/Bowtie2_Warning.log  ./log/
bowtieFile1=$(pwd)"/programs/bowtie2-2.4.4/bowtie2-build"
bowtieFile2=$(pwd)"/programs/bowtie2-2.4.4/bowtie2"
if [[ -f "$bowtieFile1"  &&  -f "$bowtieFile2" ]]; then
	echo "bowtie2 is installed."
	echo "[Location]: "$(pwd)"/programs/bowtie2-2.4.4"
else
	echo "Bowtie2 installation failed, please check the installation log [" $(pwd)"/log/Bowtie2_Install.log ]."
	exit 1;
fi
#Install-minimap2
echo "-------------------------------------------------------------------------------"
echo "04)Installing minimap2." 
cd ./programs/minimap2-2.24/
make  1> ./minimap2_Install.log   2>  ./minimap2_Warning.log
cd ..
cd ..
mv  ./programs/minimap2-2.24/minimap2_Install.log  ./log/
mv  ./programs/minimap2-2.24/minimap2_Warning.log  ./log/
minimap2File=$(pwd)"/programs/minimap2-2.24/minimap2"
if [[ -f "$minimap2File" ]]; then
	echo "minimap2 is installed."
	echo "[Location]: "$(pwd)"/programs/minimap2-2.24"
else
	echo "minimap2 installation failed, please check the installation log [" $(pwd)"/log/minimap2_Install.log ]."
	exit 1;
fi
#Install-gfatools
echo "-------------------------------------------------------------------------------"
echo "05)Installing gfatools." 
cd ./programs/gfatools-master/
make  1> ./gfatools_Install.log   2>  ./gfatools_Warning.log
cd   ./paf2gfa
make  1> ./paf2gfa_Install.log   2>  ./paf2gfa_Warning.log
cd ..
cd ..
cd ..
mv  ./programs/gfatools-master/gfatools_Install.log  ./log/
mv  ./programs/gfatools-master/gfatools_Warning.log  ./log/
mv  ./programs/gfatools-master/paf2gfa/paf2gfa_Install.log  ./log/
mv  ./programs/gfatools-master/paf2gfa/paf2gfa_Warning.log  ./log/
gfatoolsFile=$(pwd)"/programs/gfatools-master/gfatools"
if [[ -f "$gfatoolsFile" ]]; then
	echo "gfatools is installed."
	echo "[Location]: "$(pwd)"/programs/gfatools-master"
else
	echo "gfatools installation failed, please check the installation log [" $(pwd)"/log/paf2gfa_Install.log ]."
	exit 1;
fi
#Install-cdhit
echo "-------------------------------------------------------------------------------"
echo "06)Installing cdhit." 
cd ./programs/cdhit-master/
make  MAX_SEQ=100000000  1> ./cdhit_Install.log   2>  ./cdhit_Warning.log
cd ..
cd ..
mv  ./programs/cdhit-master/cdhit_Install.log  ./log/
mv  ./programs/cdhit-master/cdhit_Warning.log  ./log/
cdhitFile=$(pwd)"/programs/cdhit-master/cd-hit-est"
if [[ -f "$gfatoolsFile" ]]; then
	echo "cd-hit is installed."
	echo "[Location]: "$(pwd)"/programs/cdhit-master"
else
	echo "cd-hit installation failed, please check the installation log [" $(pwd)"/log/cdhit_Install.log ]."
	exit 1;
fi
#Install-samtools
echo "-------------------------------------------------------------------------------"
echo "07)Installing samtools." 
cd ./programs/samtools-1.14/ 
./configure   1> ./Samtools_Configure.log  2> ./Samtools_Configure_Warning.log 
make DESTDIR=./programs/samtools-1.14/  1> ./Samtools_Install.log  2> ./Samtools_Install_Warning.log
make install DESTDIR=./programs/samtools-1.14/    1>  ./Samtools_Install.log  2>  ./Samtools_Install_Warning.log 
cd ..
cd ..
mv  ./programs/samtools-1.14/Samtools_Install.log  ./log/
mv  ./programs/samtools-1.14/Samtools_Install_Warning.log  ./log/
mv  ./programs/samtools-1.14/Samtools_Configure.log  ./log/
mv  ./programs/samtools-1.14/Samtools_Configure_Warning.log  ./log/
samtoolsFile=$(pwd)"/programs/samtools-1.14/samtools"
if [[ -f "$samtoolsFile" ]]; then
	echo "samtools is installed."
	echo "[Location]: "$(pwd)"/programs/samtools-1.14"
else
	echo "samtools installation failed, please check the installation log [" $(pwd)"/log/Samtools_Install.log ]."
	exit 1;
fi
echo "-------------------------------------------------------------------------------" 
echo "08)Installing bcfools." 
cd ./programs/bcftools-1.14/ 
./configure   1> ./Bcftools_Configure.log  2> ./Bcftools_Configure_Warning.log 
make DESTDIR=./programs/bcftools-1.14/  1> ./Bcftools_Install.log  2> ./Bcftools_Install_Warning.log
make install DESTDIR=./programs/bcftools-1.14/    1>  ./Bcftools_Install.log  2>  ./Bcftools_Install_Warning.log 
cd ..
cd ..
mv  ./programs/bcftools-1.14/Bcftools_Install.log  ./log/
mv  ./programs/bcftools-1.14/Bcftools_Install_Warning.log  ./log/
mv  ./programs/bcftools-1.14/Bcftools_Configure.log  ./log/
mv  ./programs/bcftools-1.14/Bcftools_Configure_Warning.log  ./log/
bcftoolsFile=$(pwd)"/programs/bcftools-1.14/bcftools"
if [[ -f "$bcftoolsFile" ]]; then
	echo "bcftools is installed."
	echo "[Location]: "$(pwd)"/programs/bcftools-1.14"
else
	echo "bcftools installation failed, please check the installation log [" $(pwd)"/log/Bcftools_Install.log ]."
	exit 1;
fi
echo "-------------------------------------------------------------------------------" 
echo "09)Installing rmblast." 
echo $(pwd)"/programs/rmblast-2.11.0"
echo "RMblast is installed."
echo "-------------------------------------------------------------------------------" 
echo "10)Installing TRF." 
cd ./programs/TRF-master
./configure   1> ./TRF_Configure.log  2> ./TRF_Configure_Warning.log 
make DESTDIR=./programs/TRF-master  1> ./TRF_Install.log  2> ./TRF_Install_Warning.log
make install DESTDIR=./programs/TRF-master    1>  ./TRF_Install.log  2>  ./TRF_Install_Warning.log 
cd ..
cd ..
mv  ./programs/TRF-master/TRF_Install.log  ./log/
mv  ./programs/TRF-master/TRF_Install_Warning.log  ./log/
mv  ./programs/TRF-master/TRF_Configure.log  ./log/
mv  ./programs/TRF-master/TRF_Configure_Warning.log  ./log/
TRFFile=$(pwd)"/programs/TRF-master/build/src/trf"
if [[ -f "$TRFFile" ]]; then
	echo "TRF is installed."
	echo "[Location]: "$(pwd)"/programs/TRF-master"
else
	echo "TRF installation failed, please check the installation log [" $(pwd)"/log/TRF_Install.log ]."
	exit 1;
fi
echo "-------------------------------------------------------------------------------" 
echo "11)Installing RepeatMasker." 
echo "RepeatMasker is installed."
echo "[Location]: "$(pwd)"/programs/RepeatMasker"
echo "-------------------------------------------------------------------------------" 
echo "12)Installing Classifier." 
echo "Classifier is installed."
echo "[Location]: "$(pwd)"/programs/Classifier"
echo "-------------------------------------------------------------------------------" 
echo "13)Installing SPAdes." 
cd ./programs/SPAdes-3.15.3/
./spades_compile.sh  1> ./SPAdes_Install.log   2> ./SPAdes_Install_Warning.log
cd ..
cd ..
mv  ./programs/SPAdes-3.15.3/SPAdes_Install.log  ./log/
mv  ./programs/SPAdes-3.15.3/SPAdes_Install_Warning.log  ./log/
SPAdesFile1=$(pwd)"/programs/SPAdes-3.15.3/bin/spades.py"
SPAdesFile2=$(pwd)"/programs/SPAdes-3.15.3/bin/spades-core"
SPAdesFile3=$(pwd)"/programs/SPAdes-3.15.3/bin/spades-gmapper"
if [[ -f "$SPAdesFile1" &&  -f "$SPAdesFile2" && -f "$SPAdesFile3" ]]; then
	echo "SPAdes is installed."
	echo "[Location]: "$(pwd)"/programs/SPAdes-3.15.3"
else
	echo "SPAdes installation failed, please check the installation log [" $(pwd)"/log/SPAdes_Install.log ]."
	exit 1;
fi
#mkdir_log 
if [ ! -d $log_dir ]
then
	mkdir $log_dir
fi
#mkdir_read
if [ ! -d $read_dir ]
then
	mkdir $read_dir
fi
#mkdir_result
if [ ! -d $result_dir ]
then
	mkdir $result_dir
fi
#mkdir_alignment
if [ ! -d $alignment_dir ]
then
	mkdir $alignment_dir
fi
echo "-------------------------------------------------------------------------------"
echo "14)Compiling java programs."
rm    -rf ./*.class
rm    -rf ./*.py
rm    -rf ./*.pyc
cd    ./tools/src
rm    -rf ./*.class
javac  CommonClass.java
javac  AlignmentThreads.java
javac  CoreModules.java
javac  LongRepMarker.java
javac  TimMemCheck.java
javac  threadTimMem.java
javac  threadTRF.java
javac  threadLTRlong.java
javac  threadLTR.java
javac  threadRepeatCut.java
javac  LongRepMarker.java
chmod 777 -R ./*.*
cd ..
cd ..
cp  ./tools/src/*.py   ./
mv  ./tools/src/*.class  ./
echo $(pwd)"/programs/"
echo "All java programs are compiled." 
echo "[Location]: "$(pwd)"/"
echo "-------------------------------------------------------------------------------"
echo "    "
#Edit permission
chmod 777 -R ./programs
chmod 777 -R ./alignment
chmod 777 -R ./readfile
chmod 777 -R ./log 
chmod 777 -R ./results
echo "LongRepMarker_v2.0 has been sucessfully installed. Thanks!"
echo "    "