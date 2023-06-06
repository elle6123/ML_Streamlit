
# Base Image
FROM python:3.6 

# Create directory
WORKDIR /app

# Copy requirements.txt file to new directory
COPY requirements.txt ./requirements.txt

# install libraries from requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 8100

# Copy app from current directory to new directory
COPY . /app

ENTRYPOINT ["streamlit","run"]

CMD  ["app.py"]

