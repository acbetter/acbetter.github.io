dpkg-scanpackages -m ./debs > Packages
rm -f Packages.bz2
bzip2 Packages
dpkg-scanpackages -m ./debs > Packages

rm -rf .git
# cp -r /root/cydia-repo/ /var/www/acbetter/cydia-repo
git init
git add .
git commit -m "the commit"
git remote add origin https://github.com/acbetter/acbetter.github.io.git
git push -u origin master --force

