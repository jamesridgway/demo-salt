ssh:
  pkg.installed:
    - name: ssh
  service:
    - running
    - enable: True
    - restart: True
    - watch:
      - file: /etc/ssh/sshd_config
      - pkg: ssh

/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/files/sshd_config
    - user: root
    - group: root
