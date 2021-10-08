##Install Hadolint
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint

##Create venev
python3 -m venv ~/.dockerproj
source ~/.dockerproj/bin/activate


##Make Install
make install
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
chmod +x /bin/hadolint
                
##Docker commands
docker build -t containername .
docker run -it containername bash

##Install CircleCI Locally
curl -fLSs https://circle.ci/cli | bash