ip=$( docker inspect -f "{{ .NetworkSettings.IPAddress }}" jenkins-node)
url="http://"$ip":8080"
stat=$(curl -I -o /dev/null -s -w '%{http_code}' $url)
if [ $stat -eq 200 ] 
then
    echo "Application déployée avec succès"
fi