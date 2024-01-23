FROM centos:7 
RUN yum install -y git curl
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -
RUN yum -y install nodejs 
WORKDIR /
RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /devops-fullstack-app/frontend/
EXPOSE 3000
RUN npm install
CMD ["npm","start"]
