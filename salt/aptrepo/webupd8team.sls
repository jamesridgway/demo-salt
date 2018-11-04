webupd8team:
  pkgrepo.managed:
    - humanname: webupd8team PPA
    - name: deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
    - dist: trusty
    - file: /etc/apt/sources.list.d/webupd8team-java-precise.list
    - keyid: EEA14886 
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - java8