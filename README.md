# Employee Management App

## Table of Contents
- [Description](#description)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Docker Setup](#docker-setup)
- [Kubernetes Setup](#kubernetes-setup)
- [Usage](#usage)

## Description
The Employee Management App is a Spring Boot application that enables users to manage employee data. It connects to a PostgreSQL database and provides functionalities like filtering, editing, and deleting employees based on their skills and years of service.

## Tech Stack
- **Backend**: Spring Boot
- **Database**: PostgreSQL

## Installation
To run the application locally, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/Kocevav/project-kiii.git
    ```

2. **Navigate to the project directory**:
    ```bash
    cd project
    ```

3. **Backend setup**:
    Use the Spring Boot command to start the backend:
    ```bash
    ./mvnw spring-boot:run
    ```

## Docker Setup
The project is containerized using Docker. This allows you to easily manage the application and the database (PostgreSQL).

1. **Build and run the Docker containers**:
    ```bash
    docker-compose up -d
    ```
    This command starts both the Spring Boot application and the PostgreSQL database in separate containers. Ensure that `docker-compose.yml` contains the necessary services for the application and database.

## Kubernetes Setup

### Steps:
1. **Apply the Kubernetes manifests**:
    ```bash
    kubectl apply -f namespace.yaml -f configmap.yaml -f secret.yaml -f deployment.yaml -f service.yaml -f ingress.yaml
    ```
    These manifests deploy the application and configure it within its own namespace.

## Usage

### With Docker
- Access the application at: `http://localhost:8080`

### With Kubernetes
- After deploying the app on the Kubernetes cluster, I used the following IP address to access it:
    ```bash
    http://172.31.101.106:8080
    ```

I verified that the application connects to the PostgreSQL database, and the CRUD operations for managing employees function as expected.
