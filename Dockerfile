FROM python:3.8-alpine

RUN apk update && \
    # General
    apk add --no-cache bash gcc musl-dev && \
    # Make
    apk add --no-cache make

WORKDIR /opt/app

# Install pip dependencies
ADD requirements.txt .
RUN pip3 install --upgrade pip && \
    pip3 install -r requirements.txt

# Configure remote container if flag set
ARG REMOTE_CONTAINER=""
RUN if [ ! -z "$REMOTE_CONTAINER" ] ; then \
    # VSCode
    apk add --no-cache libstdc++ && \
    # Git
    apk add --no-cache git; \
    fi

# Add working directory to Python Path
ENV PYTHONPATH=/opt/app:${PYTHONPATH}

ADD setup.py .
ADD app.py .
ADD modules modules/

CMD ["/docker-entrypoint.sh"]
