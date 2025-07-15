# Assumptions and Decisions

## General
- The GitHub repository is accessible via SSH and the executing machine has the necessary SSH keys configured.
- Python 3, `git`, and `java` are installed on the machine where the script runs.
- The JAR file is always located at `build/libs/project.jar` after cloning/building the repo.
- The Java application listens on port 9000.

## Docker
- The Dockerfile expects the JAR at `build/libs/project.jar`.
- OpenJDK 17 is used for compatibility with most modern Java projects.

## CI/CD (GitHub Actions)
- AWS credentials and EC2 SSH key are stored as GitHub secrets.
- The EC2 instance is already provisioned, Docker is installed, and is accessible via SSH.
- AWS ECR is used for Docker image storage.
- The workflow builds the JAR, builds and pushes the Docker image, and deploys to EC2.

## AWS ELB
- AWS CLI is installed and configured on the machine running the ELB setup script.
- VPC, subnets, and security groups are pre-configured and allow inbound traffic on ports 80 (HTTP) and 9000 (app).
- The script uses placeholders for VPC, subnet, and instance IDs; these must be filled in by the user.
- The load balancer is internet-facing and uses HTTP (not HTTPS) for simplicity.
- Health checks and advanced settings use AWS defaults for brevity.

## Error Handling & Logging
- The Python script logs every major step and error, and exits on critical failures (clone, JAR missing, Java start).
- Warnings are logged for non-critical issues (e.g., directory already exists).
- Dockerfile and GitHub Actions will fail the build on errors.
- AWS CLI commands should be checked for errors and require proper permissions.

## Not Included
- HTTPS/SSL for the load balancer (should be used in production).
- Auto-scaling, blue/green deployment, or advanced health checks.
- Automated provisioning of EC2, VPC, or security groups. 