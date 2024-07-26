SOURCE_DIR="/tmp/accuknox"
REMOTE_USER="accuknox"
REMOTE_HOST="192.168.10.13"
REMOTE_DIR="accuknox/backup"

# Perform backup
rsync -avz $SOURCE_DIR $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup succeeded"
else
  echo "Backup failed"
fi
