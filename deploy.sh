now=`date "+%Y-%m-%d:%H:%M:%S"`

hugo
rm sitemap.xml
git add --all
git commit -m "New blog deploy at $now"
git push origin master
