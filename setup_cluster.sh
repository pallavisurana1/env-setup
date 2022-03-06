

#-------------- Quick setup on linux clusters --------------#

#--- Install anaconda and setup env

#--- link - ://www.anaconda.com/products/individual#linux

wget <link>
bash <Anaconda3-2020.07-Linux-x86_64>

#--- get into UHMC cluster clinwulf - jupyter lab session
ssh -N -L localhost:<local-port>:localhost:<remote-port> <remote-user>@<remote-host>
ssh -N -L 8999:localhost:8999 pallavis@github.edu

#--- make directories, etc
mkdir dir_name

#--- ssh into node 
ssh node_name

#--- activate conda
source $HOME/anaconda3/bin/activate

#--- envs present
conda init
conda info --envs

#--- create env
conda create -n env_name python=3.7

#--- install jupyter lab
conda install -c conda-forge jupyterlab

#--- conda activate
conda activate first_env

#--- activate jupyter lab
jupyter lab --ip 0.0.0.0 --port 8999 --no-browser --allow-root

#--- access from browser
localhost:8999

#--- to create another environment
conda create -n cluster python=3.7

#-----------------------------------------------------------

#--- Source - Stack overflow
#--- If after reopening the terminal conda list does not work, follow the instructions

#--- Open .bashrc file 
vi ~/.bashrc

#--- Add the line 
export PATH="/home/username/anaconda3/bin:$PATH" in the file

#--- Then execute the command 
source ~/.bashrc

#-----------------------------------------------------------

#--- get R on linux

#--- conda create environment
conda create -n R411

#--- conda activate environment
conda activate R411

#--- install R 4.1.0
conda install -n R411 -c conda-forge r=4.1.0

#---  conda deactivate to check
conda deactivate

#---  conda activate environment
conda activate R411

#--- Into R
R

#--- Install packages for genomic data analyses using BiocManager/Bioconductor
install.packages("BiocManager")
BiocManager::install("DeSeq2")

#--- Install R packages using conda
conda install -n <env_name> -c bioconda bioconductor-<package name>
conda install -n R411 -c bioconda bioconductor-diffbind

#-----------------------------------------------------------

#--- File transfer from remote server to personal computer
scp user@remote-host:path/to/remote/file.ext path/to/local/dir/name.ext

#--- To transfer from PC to remote server
scp path/to/local/dir/name.ext user@remote-host:path/to/local/dir/name.ext

rsync -ar /etc devconnected@192.168.178.35:/etc_backup

#-----------------------------------------------------------

#---  Run jobs in background

#--- use screen 
#--- start screen
screen

#--- run scriot
Rscript file.R

#--- detach 
ctrl + AD

#--- screen list of running screens
screen -ls

#--- end screen
ctrl + D 

#-----------------------------------------------------------

