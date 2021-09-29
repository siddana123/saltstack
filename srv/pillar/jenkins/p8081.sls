jenkins:
  lookup:
    jenkins_port: 8081
    port: 80
    home: /var/lib/jenkins
    user: jenkins
    group: jenkins
    extra_groups:
      - www-data
    server_name: localhost
    master_url: http://localhost:8081
    plugins:
      timeout: 90
      installed:
        - greenballs
    pkgs:
      - jenkins
