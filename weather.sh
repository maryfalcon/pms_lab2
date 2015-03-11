time=$(awk -F "=" '{print $2}' Config.ini) 
while [[ true ]];
do
wget -q http://www.gismeteo.by/weather-minsk-4248/
grep -e'<dd class=.value m_temp c.>' 'index.html'|grep '[+ -][0-9]\+' -o
rm index.html
sleep $time
done

