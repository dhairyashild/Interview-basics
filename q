. Self intro
2. How you handle the state management in your environment?
3. where do we use the Terraform workspaces? What is the exact use of it?
4. you have a workspace for dev QA product. so unfortunately, you've deleted the prod workspace, so what will happen now?
5. you have stored everything in S3 back-end, So only workspace is deleted. So can we bring that state once again in a new workspace? Will it work?
6. what happens if a provider is getting upgraded? for example, you are in an AWS 7.5 provider, and that needs to be updated to 7.6. It's a major version. So how do you plan for this?
7. you have a S3 bucket, so that needs to be provided access. So you can do it in two ways. One is from IAM perspective, you can provide a IAM policy.
8. you have a Linux server, this has been deployed via Terraform like a month ago with the data volume through Terraform itself. So currently it is sizing with 500 GB. the application team has started using it and they wanted to extend the block system to 750 GB. so now you are going into the your own workspace in Terraform and reviewing the code and you are changing the additional disk volume size GB from 500 to 750 GB. Okay, if you run a Terraform plan and apply, what will happen here?
9. Diffrence between Private VPC and Public VPC?
10. you have a RDS database. So there is a concept called Multi-AZ. and there is a concept called Read Replicas. So what is the difference between these two?
11. for example, there is an EC2 maintenance that's been called out for after two weeks, so there is a notification has been published on the AWS dashboard for a particular EC2 instance. So now that fault has a critical change window, so you don't want that set last deadline as per the notification, but you don't want to do that. So is there a way to postpone this?
12. what are the cost optimization initiatives you have taken in your current environment?
13. Explain where the Jenkins have been used in your environment?
