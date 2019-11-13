FROM ubuntu:16.04
RUN cp /etc/apt/sources.list ~/sources.list.old
RUN sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list
RUN diff ~/sources.list.old /etc/apt/sources.list | wc -l
RUN apt-get update && apt-get install -y -q nginx
CMD ["nginx", "-g", "daemon off;"]

