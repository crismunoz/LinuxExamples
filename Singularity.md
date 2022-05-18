# Singularity Installation

## Install Dependences
```bash
sudo apt-get update && sudo apt-get install -y \
    build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    squashfs-tools \
    libseccomp-dev \
    pkg-config \
    libglib2.0-dev
``` 

## Install GO
Download the last version and unpack the tar.gz file:
```bash
wget https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
``` 
Open /etc/profile and add
```bash
export PATH=$PATH:/usr/local/go/bin
```     
To verify:

```bash
go version
``` 
    
Install dependency resolution
```bash
go get -u github.com/golang/dep/cmd/dep
```

## Install Singularity
Download and install from release
```
export VERSION=3.10.0 && # adjust this as necessary \
    mkdir -p $GOPATH/src/github.com/sylabs && \
    cd $GOPATH/src/github.com/sylabs && \
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-ce-${VERSION}.tar.gz && \
    tar -xzf singularity-${VERSION}.tar.gz && \
    cd ./singularity && \
    ./mconfig
```
Compile Singularity
```
./mconfig && \
make -C ./builddir && \
sudo make -C ./builddir install
```

# References
- Sources 1:  https://sylabs.io/guides/3.0/user-guide/installation.html
- Source 2: https://techexpert.tips/singularity/installing-singularity-ubuntu-linux/
- Source 3: https://github.com/sylabs/singularity/releases
- Source 4: https://go.dev/doc/install
