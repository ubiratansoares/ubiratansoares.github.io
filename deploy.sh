now=`date "+%Y-%m-%d:%H:%M:%S"`

git clone -b gh-pages git@github.com:ubiratansoares/ubiratansoares.github.io.git

hugo
rsync -rtv public/ ubiratansoares.github.io/
cd ubiratansoares.github.io
git add --all
git commit -m "New blog deploy at $now"
git push origin gh-pages

cd ..
rm -rf public
rm -rf ubiratansoares.github.io