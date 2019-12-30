FROM python:3.7

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Install requirements
ADD ./portfolio/requirements.txt .
RUN pip install -r requirements.txt
RUN rm requirements.txt

# Copy codebase into docker
RUN mkdir /portfolio
WORKDIR /portfolio
COPY portfolio .