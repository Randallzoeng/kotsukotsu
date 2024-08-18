FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

# RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install  -i https://pypi.tuna.tsinghua.edu.cn/simple/  -r requirements.txt


COPY ./main.py /code/

# ENTRYPOINT [ "uvicorn" ]
# CMD [ "--host", "0.0.0.0", "main:app" ]
CMD ["fastapi", "run", "main.py", "--port", "80"]

