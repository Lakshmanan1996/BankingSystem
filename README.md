# Banking System - Java Swing Project

## Description
The Banking System is a Java Swing application that simulates basic banking operations. It provides a user-friendly interface for managing accounts, transactions, and other essential banking functions.

## Features
- Account creation and management
- Deposit and withdrawal transactions
- Balance inquiry
- Transaction history
- User-friendly GUI with Java Swing

## Screenshots
![Screenshot 1](screenshot/1.png)
![Screenshot 2](screenshot/2.png)

## Technologies Used
- Java
- Java Swing for GUI

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/banking-system.git
   cd banking-system
   
   ```
2. Run Project
   ```bash
   javac Main.java
   java Main
   ```
## Usage
1. Launch the application.
2. Follow the on-screen instructions to perform banking operations.

## Contribution
Contributions are welcome! If you'd like to contribute to the project, please follow these steps:

1. Fork the repository
2. Create a new branch (git checkout -b feature/new-feature)
3. Commit your changes (git commit -m 'Add new feature')
4. Push to the branch (git push origin feature/new-feature)
5. Create a pull request

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments
- Thanks to Java for the programming language.
- Special thanks to Java Swing for the GUI components.
- Feel free to customize the content according to your project's specific details. Add more sections or information as needed.

**#🏦 Banking System – DevOps CI/CD with Jenkins, Docker, Kubernetes & Monitoring**
📌 Project Overview

This project demonstrates an end-to-end DevOps CI/CD pipeline for a Java-based Banking Management System application.
The pipeline automates code quality checks, containerization, Kubernetes deployment, and monitoring using industry-standard DevOps tools.

The goal of this project is to showcase real-world DevOps implementation using Azure Virtual Machines in a multi-VM architecture.

🧰 Tech Stack
🔹 Application

Java (Swing-based Banking System)

GitHub (Source Code Management)

🔹 CI/CD & DevOps

Jenkins (CI/CD Automation)

SonarQube (Static Code Analysis)

Docker (Containerization)

Kubernetes (Minikube)

Docker Hub (Image Registry)

🔹 Monitoring

Prometheus (Metrics Collection)

Grafana (Visualization & Dashboards)

🔹 Cloud / Infrastructure

Azure Virtual Machines

Ubuntu 20.04 LTS

🏗️ Architecture
VM	Purpose	Tools Installed
VM1	CI/CD Server	Jenkins, SonarQube, Docker
VM2	Kubernetes Node	Minikube, kubectl, Docker
VM3	Monitoring Server	Prometheus, Grafana
🔄 CI/CD Pipeline Workflow

Developer pushes code to GitHub

Jenkins pulls the latest source code

SonarQube performs code quality analysis

Docker image is built for the banking application

Image is pushed to Docker Hub

Kubernetes (Minikube) deploys the application

Prometheus scrapes application metrics

Grafana visualizes metrics on dashboards
