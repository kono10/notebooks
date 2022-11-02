FROM python:3.6
# TODO change this to django_project
WORKDIR /notebooks
COPY requirements.txt .
RUN pip install -r requirements.txt
CMD ["jupyter", "lab", "--allow-root", "--ip=*", "--port=8000", "--NotebookApp.token=''", "--NotebookApp.password=''"]
