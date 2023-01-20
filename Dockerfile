FROM python:3.8
ENV PYTHONUNBUFFERED=1 
WORKDIR /app1
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
# EXPOSE 9000
RUN python manage.py migrate
CMD python manage.py runserver 0.0.0.0:8000
# # CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]