rclone config

n) New remote
name> Box
Storage> box
client_id> (leave blank)
client_secret> (leave blank)
box_config_file> (leave blank)
access_token> (leave blank)
box_sub_type> user
Edit advanced config? (y/n) n
Use auto config? (y/n) y

# Locate the Rclone configuration file
ls -la $HOME/.config/rclone/rclone.conf

# Copy the configuration file to your HPC cluster
# Replace 'login01.uhmc.stonybrook.edu' with the correct hostname if needed
scp $HOME/.config/rclone/rclone.conf psurana@login01.uhmc.sbuh.stonybrook.edu:~/.rclone.conf
