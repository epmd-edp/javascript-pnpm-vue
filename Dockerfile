FROM nginxinc/nginx-unprivileged:1.31-alpine3.23-slim
COPY nginx-default.conf /etc/nginx/conf.d/default.conf
COPY dist/ /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
