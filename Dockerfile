version: 0.2
phases:
  install:
    runtime-versions:
      ruby: 2.6
      docker: 18
  pre_build:
    commands:
      - uname -a
      - pwd
      - ls
      - env | sort
      - ls /etc/*release*
      - cat /etc/*release*
      - whoami
      - gem install --no-document ufo
      # - configure ~/.aws/config default
  build:
    commands:
      - echo Build started on `date`
      - echo Building project...
      - uptime
      - ufo current --service test-web
      - ufo ship
