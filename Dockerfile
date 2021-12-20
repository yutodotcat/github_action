FROM ubuntu:20.04

# Nginx install
RUN apt-get update && apt-get install -y \
nginx \
tzdata \
&& rm -rf /var/lib/apt/lists/*

# enviroment variable for setting timezone
ENV TZ=Asia/Tokyo

# select port
EXPOSE 80

# copy file
COPY src/index.html /var/www/html

# run nginx
CMD ["nginx", "-g", "daemon off;"]
