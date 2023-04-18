MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="==MYBOUNDARY=="

--==MYBOUNDARY==
Content-Type: text/x-shellscript; charset="us-ascii"

#!/bin/bash
set -ex
/etc/eks/bootstrap.sh ${cluster_name} 

 
  --container-runtime containerd

sudo yum install -y amazon-ssm-agent
sudo systemctl enable amazon-ssm-agent && sudo systemctl start amazon-ssm-agent

--==MYBOUNDARY==--