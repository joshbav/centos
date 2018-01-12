docker build --squash -t joshbav/centos:latest .
echo
echo
echo
echo Pushing newly built image to dockerhub
echo
docker push joshbav/centos:latest
