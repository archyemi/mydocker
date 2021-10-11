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


##Starting k3s
curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644
sudo chmod 644 /etc/rancher/k3s/k3s.yaml

##Prometheus
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz
tar xvfz prometheus-*.tar.gz
cd prometheus-*
./prometheus --config.file=prometheus.yml

https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale-walkthrough/

##Locust
https://docs.locust.io/en/latest/installation.html
https://docs.locust.io/en/latest/quickstart.html
