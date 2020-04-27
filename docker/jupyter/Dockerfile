FROM jupyter/scipy-notebook
USER root
RUN apt update
RUN apt install -y curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN curl -LO https://get.helm.sh/helm-v2.14.3-linux-amd64.tar.gz 
RUN tar -zxvf helm-v2.14.3-linux-amd64.tar.gz
RUN mv ./linux-amd64/helm /usr/local/bin/helm
USER $NB_UID
RUN conda install --quiet --yes \
  "pymongo=3.8.0" \
  "python-kubernetes==10.0.1" \
  "importnb==0.6.1"
RUN pip install pyhelm
