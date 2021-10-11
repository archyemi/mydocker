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
docker image ls
docker run -p 8000:5001 containername
docker run -it containername bash

##Install CircleCI Locally
curl -fLSs https://circle.ci/cli | bash

Push image to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 406373545287.dkr.ecr.us-east-1.amazonaws.com
docker build -t uda .
docker tag uda:latest 406373545287.dkr.ecr.us-east-1.amazonaws.com/uda:latest
docker push 406373545287.dkr.ecr.us-east-1.amazonaws.com/uda:latest

