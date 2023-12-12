#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ROYAL-JATT/AutoFilterWithStream.git /AutoFilterWithStream
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilterWithStream
fi
cd /AutoFilterWithStream
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py 
