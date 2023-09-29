# Use the official Python 3 image as the base image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install the Python dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose port 80 for the application (you may need to adjust this port if needed)
EXPOSE 80

# Copy all files from the current directory into the container at /app
COPY . /app/

# Run your Python application (replace "main.py" with the actual entry point of your app)
CMD ["python", "main.py"]
