# intern_assesment

## Overview
This project demonstrates a complete workflow for building, running, and deploying a Java application using Gradle, Docker, GitHub Actions (CI/CD), and AWS (scripts provided). It is designed to be production-ready and cloud-deployable.

## What Has Been Tested and Verified Locally
- **Java application**: Compiles and runs locally, serving `Hello, World!` on port 9000.
- **Gradle build**: Project builds successfully using Gradle and the Gradle wrapper.
- **Docker**: Docker image builds and runs locally, exposing the app on port 9000.
- **GitHub Actions CI/CD**: Workflow builds the JAR and Docker image on every push to `main`.

## What Is Included
- **Source code**: Java source files and Gradle build files.
- **Dockerfile**: For containerizing the application.
- **.github/workflows/deploy.yml**: GitHub Actions workflow for CI/CD automation.
- **aws_elb_setup.sh**: Script to set up AWS Elastic Load Balancer and related resources.
- **ASSUMPTIONS_AND_DECISIONS.md**: Documented assumptions, error handling, and deployment notes.

## AWS Deployment
- **Not performed**: AWS deployment (ECR, EC2, ELB) was not performed because AWS requires a valid credit/debit card to create an account, and I chose not to provide card details.
- **Scripts and workflows are ready**: All scripts and workflow files for AWS deployment are included and ready to use. The solution can be deployed to AWS as soon as credentials are available.

## How to Deploy to AWS (When Ready)
1. Set up an AWS account and create ECR, EC2, and ELB resources as described in the provided scripts and workflow.
2. Add your AWS credentials and EC2 SSH key as GitHub secrets.
3. Push to `main` to trigger the workflow and deploy.

## Output:

**Docker file output at port 9000:**

<img width="1576" height="887" alt="Screenshot 2025-07-15 112455" src="https://github.com/user-attachments/assets/eb36b0f4-5474-43ef-b190-d00a484df43c" />

<img width="1076" height="598" alt="Screenshot 2025-07-15 112406" src="https://github.com/user-attachments/assets/bf072700-e64e-40fd-bc30-e7e246a3ed28" />

**CI/CD Operations:**

<img width="1919" height="875" alt="Screenshot 2025-07-15 112907" src="https://github.com/user-attachments/assets/330abcc4-14a7-4c03-8d69-186a1470752e" />



## Notes
- All local and CI/CD steps have been fully tested and verified.
- The project is ready for cloud deployment with minimal additional setup.

---
If you have any questions or need further details, please contact me. 
