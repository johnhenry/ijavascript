FROM python:3.7.4-stretch
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -&& apt-get update && python3 -m pip install --upgrade pip
RUN apt-get install -y nodejs=12.6.0-1nodesource1 npm ipython=5.1.0-3 && python3 -m pip install jupyter==1.0.0 && npm install --unsafe-perm -g ijavascript@5.1.0
RUN ijsinstall
RUN mkdir /notebooks
WORKDIR /notebooks
CMD ijsnotebook --allow-root --ip=0.0.0.0 
EXPOSE 8888
