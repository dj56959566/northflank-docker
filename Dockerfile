# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:latest

# 将本地的 Nginx 配置文件复制到容器中的 /etc/nginx/
COPY nginx.conf /etc/nginx/nginx.conf

# 将其他需要的文件（如 web 内容等）复制到容器
# COPY ./html /usr/share/nginx/html

# 暴露端口
EXPOSE 8090
EXPOSE 8091

# 默认启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
# 使用官方的 Nginx 镜像作为基础镜像
FROM nginx:latest

# 将本地的 Nginx 配置文件复制到容器中的 /etc/nginx/
COPY nginx.conf /etc/nginx/nginx.conf

# 将其他需要的文件（如 web 内容等）复制到容器
# COPY ./html /usr/share/nginx/html

# 暴露端口
EXPOSE 8090
EXPOSE 8091

# 默认启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
