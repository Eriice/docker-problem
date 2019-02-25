FROM python:3.7.2

# 创建容器运行时的组 flaskgroup 和用户 flaskuser
RUN groupadd flaskgroup && useradd -m -g flaskgroup -s /bin/bash flaskuser

# 创建目录并指定工作目录
RUN mkdir -p /home

WORKDIR /home

# 复制当前目录至容器目录
# COPY . /home

# 权限配置
RUN chown -R flaskuser:flaskgroup /home

USER flaskuser
# EXPOSE 5000
