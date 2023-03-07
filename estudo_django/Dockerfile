FROM python:3.9.16-slim-buster
RUN python -m pip install --upgrade pip
WORKDIR /estudo_django

RUN apt-get update -y
RUN apt-get install -y locales locales-all
ENV LC_ALL pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8
RUN apt-get install curl -y
RUN apt-get install gnupg -y
RUN apt-get install gnupg2 -y
RUN apt-get install gnupg1 -y
# RUN apt-get install multiarch-support -y
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
# RUN curl http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1.4_amd64.deb 
# RUN apt-get install multiarch-support_2.27-3ubuntu1.4_amd64 -y
RUN apt-get update
RUN apt-get install libodbc1 -y
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17 -y
RUN apt-get install unixodbc unixodbc-dev -y
RUN ACCEPT_EULA=Y apt-get install mssql-tools -y
RUN apt-get install --reinstall build-essential -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN echo "[ODBC Driver 17 for SQL Server]\n\
Description=Microsoft ODBC Driver 17 for SQL Server\n\
Driver=/opt/microsoft/msodbcsql17/lib64/libmsodbcsql-17.3.so.1.1\n\
UsageCount=1" >> /etc/odbcinst.ini
COPY . .
EXPOSE 8001 1433 3000
RUN pip install -r 'requirements.txt'