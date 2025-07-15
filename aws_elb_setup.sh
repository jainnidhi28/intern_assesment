#!/bin/bash
# AWS ELB setup script
# Fill in the placeholders with your actual values before running

VPC_ID="<your-vpc-id>"
SUBNET_1="<subnet-1>"
SUBNET_2="<subnet-2>"
SG_ID="<security-group-id>"
EC2_INSTANCE_ID="<ec2-instance-id>"
AWS_REGION="<aws-region>"

# 1. Create Target Group
echo "Creating target group..."
aws elbv2 create-target-group \
  --name myproject-tg \
  --protocol HTTP \
  --port 9000 \
  --vpc-id $VPC_ID \
  --target-type instance \
  --region $AWS_REGION

# 2. Register EC2 instance (replace <target-group-arn> after creation)
# TARGET_GROUP_ARN="<target-group-arn>"
# aws elbv2 register-targets \
#   --target-group-arn $TARGET_GROUP_ARN \
#   --targets Id=$EC2_INSTANCE_ID \
#   --region $AWS_REGION

# 3. Create Load Balancer
echo "Creating load balancer..."
aws elbv2 create-load-balancer \
  --name myproject-lb \
  --subnets $SUBNET_1 $SUBNET_2 \
  --security-groups $SG_ID \
  --scheme internet-facing \
  --type application \
  --ip-address-type ipv4 \
  --region $AWS_REGION

# 4. Create Listener (replace <lb-arn> and <target-group-arn> after creation)
# LB_ARN="<lb-arn>"
# aws elbv2 create-listener \
#   --load-balancer-arn $LB_ARN \
#   --protocol HTTP \
#   --port 80 \
#   --default-actions Type=forward,TargetGroupArn=$TARGET_GROUP_ARN \
#   --region $AWS_REGION

echo "Script complete. Fill in ARNs and rerun commented commands as needed." 