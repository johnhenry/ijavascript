FROM python:3.7.4-stretch
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update
RUN python3 -m pip install --upgrade pip
RUN apt-get install -y nodejs npm ipython
RUN python3 -m pip install jupyter
RUN npm install --unsafe-perm -g ijavascript
RUN ijsinstall
RUN mkdir /notebooks
WORKDIR /notebooks
CMD ijsnotebook --allow-root --ip=0.0.0.0 
EXPOSE 8888
