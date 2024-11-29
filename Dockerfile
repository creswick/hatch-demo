FROM python:3.12.7
RUN python -m pip install hatch
RUN mkdir /app

# Consider this suggestion to install dependencies only when the pyproject.toml changes:
# https://stackoverflow.com/questions/77082299/docker-python-hatch-separate-dependencies-install
#
# COPY pyproject.toml /app
# 
# RUN hatch dep show requirements > /app/requirements.txt && \
#     python -m pip install -r /app/requirements.txt

COPY ./dist/hatch_demo-0.0.1-py3-none-any.whl /app
RUN pip install /app/hatch_demo-0.0.1-py3-none-any.whl
CMD ["hatch-demo"]
