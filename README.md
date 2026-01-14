# AWS Learning Contents

**Last Updated:** Friday, January 09, 2026 2:32 AM

## 1. Cloud Concepts and AWS
   1. What is Cloud Computing
   2. IaaS vs PaaS vs SaaS
   3. AWS Global Infrastructure
   4. Regions
   5. Availability Zones
   6. Edge Locations
   7. Shared Responsibility Model
   8. AWS Pricing Basics
      1. On-Demand
      2. Reserved
      3. Spot

## 2. AWS Networking
   1. Identity & Access Management
      1. IAM Users
      2. IAM Groups
      3. IAM Roles
      4. IAM Policies
         1. Managed vs Inline
         2. Policy Structure (JSON)
      5. MFA
      6. IAM Best Practices
   2. VPC
      1. What is VPC
      2. Default VPC vs Custom VPC
      3. VPC Components Overview
      4. VPC Peering
         1. Peering limitations
      5. Transit Gateway
         1. Why Transit Gateway
         2. Hub-and-Spoke architecture
         3. Transit Gateway vs VPC Peering
         4. Attachments
      6. How traffic flows in VPC
      7. Same region vs Cross region
   3. CIDR & IP Addressing
      1. CIDR notation
      2. IPv4 vs IPv6
      3. Public IP vs Private IP
      4. Elastic IP (EIP)
   4. Subnet
      1. What is a Subnet
      2. Public Subnet
         1. Internet Gateway
      3. Private Subnet
         1. NAT Gateway
         2. NAT Instance
      4. Outbound-only internet access
      5. Subnet sizing
      6. Subnet per AZ best practice
   5. Route Table
      1. Public route table
      2. Private route table
      3. Route table updates
   6. Security Group
      1. Stateful
      2. Inbound & Outbound rules
   7. Cognito
      1. User Pools
      2. Identity Pools
      3. Authentication vs Authorization
      4. Cognito vs IAM
      5. Use cases (Web / Mobile apps)
   8. Direct Connect
      1. VPN
         1. Site-to-Site VPN
         2. Client VPN
      2. AWS Direct Connect
         1. Use cases
         2. DX vs VPN
         3. High availability setup
   9. Network ACLs (NACL)
      1. Stateless
      2. Allow vs Deny
      3. Security Group vs NACL
    10. Compute Services
        1. EC2
            1. EC2 Instance types
            2. AMI
            3. Key Pair
            4. Security Groups with EC2
            5. User Data
            6. Auto Scaling Group
            7. Elastic Load Balancer (ELB)
                1. ALB
                2. NLB
                3. CLB
        2. Containers
            1. ECS
            2. EKS
            3. Fargate
            4. ECS vs EKS
        3. Serverless
            1. AWS Lambda
            2. Lambda Networking (VPC Lambda)
            3. Lambda Layers

    11. Storage Services
        1. S3
            1. Buckets & Objects
            2. Storage Classes
            3. Versioning
            4. Lifecycle Policies
            5. S3 Security (Bucket Policy vs IAM)
            6. S3 + CloudFront
        2. EBS
        3. EFS
        4. FSx
        5. Block & File Storage

    12. Databases
        1. Relational
            1. RDS
            2. Aurora
            3. Multi-AZ
            4. Read Replicas
        2. NoSQL
            1. DynamoDB
            2. Partition Keys
            3. Global Tables
            4. DAX

    13. Application Integration
        1. SQS
        2. SNS
        3. EventBridge
        4. Step Functions

    14. Monitoring & Logging
        1. CloudWatch
            1. Metrics
            2. Logs
            3. Alarms
        2. CloudTrail
        3. VPC Flow Logs
        4. AWS Config

    15. Security & Governance
        1. KMS
        2. Secrets Manager
        3. Parameter Store
        4. Shield
        5. WAF
        6. GuardDuty
        7. Inspector

    16. DevOps & Automation
        1. AWS CLI
        2. SDK
        3. CloudFormation
        4. CDK
        5. CI/CD
            1. CodeCommit
            2. CodeBuild
            3. CodeDeploy
            4. CodePipeline

   17. Architecture & Best Practices
        1. Well-Architected Framework
        2. High Availability
        3. Fault Tolerance
        4. Scalability
        5. Cost Optimization
        6. Real-world AWS architectures



