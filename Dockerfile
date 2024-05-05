# base image
FROM python:3.9-slim

# making directory of app
WORKDIR /app

# copy of requirements file
COPY requirements.txt .

# install pacakges
RUN pip3 install no-cache-dir -r requirements.txt

# copying all files over
COPY . .

# exposing default port for streamlit
EXPOSE 8501

# command to launch app
ENTRYPOINT [ "python", "app.py" ]

# fall back command to launch app
CMD [ "python", "app.py" ]