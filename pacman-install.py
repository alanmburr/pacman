import os
import shutil
shutil.copy('/etc/hostname', '/var/tmp/testhostname')
os.system("sh install.sh")
