npm install -g now
pwd
ls -l
echo "Deploying..."
echo "TOKEN: $NOW_TOKEN"
URL=$(now --docker -t $NOW_TOKEN)
echo "running acceptance on $URL"
curl --silent -L $URL 
