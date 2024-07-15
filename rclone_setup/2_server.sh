# in the server
ls -la $HOME/.rclone.conf

# Example usage to copy data from local directory to Box
# Replace /path/to/local/directory with your local directory on the HPC cluster
# and Box:/path/to/remote/directory with the path to the remote directory on Box.

# Copy data from local directory to Box
rclone copy /path/to/local/directory Box:/path/to/remote/directory

# Example:
rclone copy /home/psurana/projects/example_dir Box:/backup_clinwulf/example_dir
