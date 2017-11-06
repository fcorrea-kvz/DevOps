npm install -g now
echo "$HOME"
pwd
ls -l
echo "Deploying..."
echo "TOKEN: $NOW_TOKEN"
URL=$(now --docker ../ -t $NOW_TOKEN)
echo "running acceptance on $URL"
curl --silent -L $URL 
