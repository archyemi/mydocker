FROM python:3.7.3-stretch

#Working Directory
WORKDIR /app

#Copy source code
COPY . app.py /app/

# Install packages
RUN pip install --upgrade pip &&\ 
    pip install -r requirements.txt