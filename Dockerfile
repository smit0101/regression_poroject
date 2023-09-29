FROM python:3
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY * /app/
#RUN pytest --cov=regression_project  tests/
RUN pytest tests/test_regression_project.py
CMD ["pyhton","main.py"]

