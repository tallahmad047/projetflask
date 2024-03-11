# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000



# Définissez la variable d'environnement FLASK_APP pour indiquer le nom du fichier d'application Flask
ENV FLASK_APP=myapp.py

# Lancez l'application Flask lorsque le conteneur démarre
CMD ["flask", "run", "myapp"]

# Run app.py when the container launches
#CMD ["python3", "myapp.py"]