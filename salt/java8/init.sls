include:
  - aptrepo.webupd8team

apt-update:
  cmd:
    - run
    - name: apt-get update

accept_j8_lic:
  cmd:
    - run
    - name: echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

java8:
  cmd:
    - run
    - name: apt-get -y install oracle-java8-installer oracle-java8-unlimited-jce-policy
    - require:
      - cmd: apt-update