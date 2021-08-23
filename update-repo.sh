cd x86_64
rm -rf hanhstuff.*
repo-add hanhstuff.db.tar.gz *
for x in db files; do 
rm -rf hanhstuff.$x
cp -r hanhstuff.$x.tar.gz hanhstuff.$x
done
cd .. 
rm -rf update-time
echo $(date) > update-time
git add . 
git commit -F update-time
git push 
