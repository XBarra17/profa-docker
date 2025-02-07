FROM alpine
WORKDIR /
EXPOSE 80 8080
EXPOSE 443
RUN apk add nginx
COPY nginx.conf /etc/nginx/nginx.conf
ADD index.html /var/lib/nginx/html/index.html
#CMD [\"nginx\", \"-g\", \"daemon off;\"]
CMD ["nginx", "-g", "daemon off;"]