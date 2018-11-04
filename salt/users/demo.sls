demo:
  user.present:
    - shell: /bin/bash
    - home: /home/demo
    - password: $1$agz4gU3D$zN9knbR5flEWxq73my3K90
    - remove_groups: False
    - groups:
      - sudo
      - adm

/home/demo/.ssh:
  file.directory:
    - user: demo
    - group: demo
    - mode: 740
    - makedirs: True

/home/demo/.ssh/authorized_keys:
  file.managed:
    - source: salt://users/files/demo.pub
    - user: demo
    - group: demo
    - mode : 640

/home/demo/.ssh/config:
  file.managed:
    - source: salt://users/files/ssh_config
    - user: demo
    - group: demo
    - mode : 640


/home/demo/.bashrc:
  file.managed:
    - source: salt://users/files/demo.bashrc