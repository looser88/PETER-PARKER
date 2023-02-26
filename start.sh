if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone looser88/PPETER-PARKER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PETER-PARKER-BOT
fi
cd /PETER-PARKER-BOT
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
