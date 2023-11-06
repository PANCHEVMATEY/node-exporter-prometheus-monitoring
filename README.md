Certainly! Here's a README.md for a project that deploys two EC2 instances, one running a Linux server with Node Exporter and the other running a Prometheus server, into the default VPC with default Internet Gateway (IGW) for routing:

```markdown
# EC2 Instance Deployment Project

This project automates the deployment of two Amazon EC2 instances in the default Virtual Private Cloud (VPC). One instance runs a Linux server with Node Exporter, and the other runs a Prometheus server. The default Internet Gateway (IGW) in the VPC is used for routing.

## Getting Started

Follow these steps to deploy the specified EC2 instances and set up the Prometheus monitoring stack in your AWS environment.

> **Note:** The userdata for the prometheus-server and the instance is currently not functioning!

### Prerequisites

Before you begin, ensure that you have the following prerequisites in place:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS credentials configured with the necessary permissions.
- AWS key pairs for SSH access (if required).

### Installation

1. Clone this repository to your local machine:

   ```bash
   https://github.com/PANCHEVMATEY/node-exporter-prometheus-monitoring.git
   ```

2. Navigate to the project directory:

   ```bash
   cd node-exporter-prometheus-monitoring
   ```

3. Create a Terraform configuration file (e.g., `main.tf`) with the following content to define the EC2 instances and resources:

   ```hcl
   # Define your AWS resources here using the provided variables.

   # For example, you can use the "aws_instance" resource to create EC2 instances.
   ```

4. Initialize Terraform in the project directory:

   ```bash
   terraform init
   ```

5. To deploy the EC2 instances and set up the Prometheus stack, run:

   ```bash
   terraform apply
   ```

   Review the execution plan, and if everything looks correct, confirm the action.

6. The specified EC2 instances will be provisioned in the default VPC with routing through the default IGW.

## Accessing the Instances

- To access the Linux server running Node Exporter, you can use SSH with the AWS key pair you've configured.
- The Prometheus server should be accessible through its web interface. Make sure to configure security groups and network settings to allow access to the Prometheus server as needed.

## Clean Up

To destroy the EC2 instances and resources created by this project, run:

```bash
terraform destroy
```

This will remove all the resources provisioned by Terraform.


```