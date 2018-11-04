jenkins:
  user.present:
    - shell: /bin/bash
    - home: /home/jenkins
    - password: $1$agz4gU3D$zN9knbR5flEWxq73my3K90

/home/jenkins/.ssh:
  file.directory:
    - user: jenkins
    - group: jenkins
    - mode: 740
    - makedirs: True

/home/jenkins/.ssh/authorized_keys:
  file.managed:
    - source: salt://users/files/jenkins_id.pub
    - user: jenkins
    - group: jenkins
    - mode : 640

/home/jenkins/.bashrc:
  file.managed:
    - source: salt://users/files/jenkins.bashrc