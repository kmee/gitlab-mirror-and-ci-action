FROM makocchi/alpine-bash-curl-jq-git-python-ssh:latest

LABEL "com.github.actions.name"="Mirror to GitLab and run GitLab CI"
LABEL "com.github.actions.description"="Automate mirroring of git commits to GitLab, trigger GitLab CI and post results back to GitHub"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/kmee/gitlab-mirror-and-ci-action"
LABEL "homepage"="https://github.com/kmee/gitlab-mirror-and-ci-action"
LABEL "maintainer"="Luis Felipe Mileo <mileo@kmee.com.br>"


COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]
