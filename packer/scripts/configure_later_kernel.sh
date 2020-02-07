#!/bin/sh

set -o errexit
set -o nounset
set -o pipefail

cat > /etc/yum.repos.d/CentOS-AltArch-Kernel.repo <<"EOF"
[altarch-kernel]
name=CentOS-$releasever AltArch - Kernel
baseurl=http://mirror.centos.org/altarch/$releasever/kernel/$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
EOF

# update kernel
yum -y install kernel-core