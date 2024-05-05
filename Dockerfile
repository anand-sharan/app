# base image
FROM python:3.12.2

# making directory of app
WORKDIR /app

# copy of requirements file
COPY requirements.txt .

# install pacakges
RUN pip3 install -r requirements.txt

# copying all files over
COPY . .

# exposing default port for streamlit
EXPOSE 5000

# command to launch app
ENTRYPOINT [ "python", "app.py" ]

# fall back command to launch app
CMD [ "python", "app.py" ]
#CMD ["gunicorn","-w","2","-b","0.0.0.0:5000","app:app"]