sudo dnf update
sudo subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
sudo yum localinstall --nogpgcheck https://mirrors.tuna.tsinghua.edu.cn/rpmfusion/free/el/rpmfusion-free-release-9.noarch.rpm https://mirrors.tuna.tsinghua.edu.cn/rpmfusion/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm
