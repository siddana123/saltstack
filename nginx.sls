nginx:
  pkg:
    - installed
  service.running:
    - enable: True
    - reload: True
    - watch:
 #     - pkg: nginx
      - file: jenkins_reverseproxy
      
#      - file: /etc/nginx/sites-available/default
jenkins_reverseproxy:
  file.managed:
    - makedirs: True
    - name: /etc/nginx/conf.d/jenkins.conf
    - source: salt://jenkins/files/nginx.conf
    - user: root
    - group: root
    - mode: 640
/var/log/nginx/jenkins:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    
