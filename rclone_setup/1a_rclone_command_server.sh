# Create a directory for Rclone
mkdir -p $HOME/rclone
cd $HOME/rclone

# Download the Rclone zip file
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip

# Unzip the file
unzip rclone-current-linux-amd64.zip

# Move into the unzipped directory (the exact name may vary depending on the version)
cd rclone-*-linux-amd64

# Move the rclone binary to a directory in your PATH. If you don't have a bin directory in your home, create one.
mkdir -p $HOME/bin
mv rclone $HOME/bin/

# Ensure your bin directory is in your PATH by adding the following line to your ~/.bashrc or ~/.bash_profile
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Verify the Rclone configuration file is in place
ls -la $HOME/.rclone.conf