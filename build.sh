docker build --squash -t joshbav/centos:latest .
echo
echo
echo
echo Pushing newly built image to dockerhub
echo
docker push joshbav/centos:latest
echo
echo
echo Uploading all files to github.com/joshbav/tractor
echo
# ALl files to automatically be added
git add .
git config user.name “joshbav”
git commit -m "scripted commit"
git push -u origin master










