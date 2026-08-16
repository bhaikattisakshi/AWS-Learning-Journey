# 🚀 Dockerized Node.js Application Deployment using Amazon ECR and ECS

## 📌 Project Overview

This mini project demonstrates how to containerize a Node.js To-Do application using Docker and deploy the Docker container on AWS using **Amazon ECR** and **Amazon ECS**.

The project covers the complete workflow from application code to a running container on AWS.

## 🏗️ Architecture

```text
Node.js Application
        ↓
      Docker
        ↓
   Docker Image
        ↓
     Amazon ECR
        ↓
     Amazon ECS
        ↓
 Running Container
        ↓
   CloudWatch Logs
```

## 🛠️ Technologies Used

* Node.js
* Express.js
* EJS
* Docker
* Amazon ECR
* Amazon ECS
* AWS IAM
* Amazon CloudWatch
* GitHub

## 📂 Project Structure

```text
05-Docker-ECR-ECS/
│
├── Dockerfile
├── app.js
├── package.json
├── package-lock.json
├── README.md
│
└── views/
    ├── todo.ejs
    └── edititem.ejs
```

## 🐳 Docker

The Node.js application is packaged into a Docker image using the Dockerfile.

The application runs on:

```text
Port: 8000
```

## ☁️ AWS Deployment

### 1. Build Docker Image

```bash
docker build -t node-todo-app .
```

### 2. Run Container Locally

```bash
docker run -d -p 8000:8000 node-todo-app
```

### 3. Create Amazon ECR Repository

An Amazon ECR repository was created to store the Docker image.

### 4. Push Image to ECR

The Docker image was tagged with the ECR repository URI and pushed to Amazon ECR.

### 5. Deploy using Amazon ECS

An ECS cluster and task definition were configured to run the Docker image stored in ECR.

The ECS task was configured to expose port **8000**.

### 6. Monitor using CloudWatch

CloudWatch was used to view application/container logs and monitor the ECS task.

## 🎯 Learning Outcomes

Through this project, I learned:

* How Docker containers work
* How to create a Docker image
* How to run a Node.js application inside a container
* How to push Docker images to Amazon ECR
* How Amazon ECS runs containerized applications
* How IAM roles provide permissions to AWS services
* How CloudWatch can be used for container logs and monitoring

## 📸 Project Screenshots

### Amazon ECR
![ECR](screenshots/ecr.png)

### ECS Running Task
![ECS Running Task](screenshots/ecs-running-task.png)

### CloudWatch Logs
![CloudWatch](screenshots/cloudwatch.png)

### Application
![Application](screenshots/application.png)

## 👩‍💻 Project Status

**Completed:** Docker containerization and AWS ECR/ECS deployment.

**Next:** Jenkins-based CI/CD automation.
