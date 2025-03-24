# **StudentProject**

**StudentProject** is a Django-based web application designed to demonstrate the integration of containerization using Docker and Continuous Integration/Continuous Deployment (CI/CD) pipelines with Jenkins.

## Features

- **Multi-App Django Project**: Structured to support multiple Django applications.
- **Dockerized Environment**: Ensures consistent environments across development, testing, and production.
- **CI/CD Pipeline**: Automated testing and deployment using Jenkins.

## Prerequisites

Before setting up the project, ensure you have the following installed:

- [Python 3.10](https://www.python.org/downloads/)
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Jenkins](https://www.jenkins.io/download/)

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/SRCEM-AIML/C68_VaibhavsinghMohane_A2.git
   cd C68_VaibhavsinghMohane_A2
   ```


2. **Set Up Virtual Environment**:

   ```bash
   python -m venv env
   source env/bin/activate  # On Windows: env\Scripts\activate
   ```


3. **Install Dependencies**:

   ```bash
   pip install -r requirements.txt
   ```


## Running the Application

1. **Apply Migrations**:

   ```bash
   python manage.py migrate
   ```


2. **Create Superuser** (Optional):

   ```bash
   python manage.py createsuperuser
   ```


3. **Run Development Server**:

   ```bash
   python manage.py runserver
   ```


   Access the application at `http://127.0.0.1:8000/`.

## Docker Usage

1. **Build Docker Image**:

   ```bash
   docker build -t studentproject-app .
   ```


2. **Run Docker Container**:

   ```bash
   docker run -d -p 8000:8000 studentproject-app
   ```


   The application will be available at `http://localhost:8000/`.

## CI/CD with Jenkins

This project includes a `Jenkinsfile` that defines the CI/CD pipeline:

- **Clone Repository**: Fetches the latest code from GitHub.
- **Build Docker Image**: Creates a Docker image of the application.
- **Run Docker Container**: Deploys the application inside a Docker container.
- **Push to Docker Hub**: Uploads the Docker image to Docker Hub for distribution.

To set up Jenkins:

1. **Install Jenkins**: Follow the [official Jenkins installation guide](https://www.jenkins.io/doc/book/installing/).

2. **Configure Jenkins Pipeline**:

   - Create a new Pipeline job.
   - Set the Pipeline script to use the `Jenkinsfile` from this repository.

3. **Set Up Credentials**:

   - Add your Docker Hub credentials in Jenkins under **Manage Credentials**.
   - Ensure the credential ID matches the one referenced in the `Jenkinsfile`.

4. **Run the Pipeline**: Trigger the pipeline to automate the build and deployment process.

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any enhancements or bug fixes.

---

*Crafted with ❤️ by Vaibhavsingh Mohane*
```
