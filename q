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



1. How do you reduce AWS costs without compromising performance?
2.Have you ever deployed a Docker container on AWS Lambda?If yes briefly explain?
3.Explain the difference between service mesh (Istio/Linkerd) and an ingress controller?
4.Write a CI/CD pipeline for a Java application deploying to Kubernetes for Dev and Prod environments.
5. Explain horizontal vs vertical scaling in real infra scenarios?
6.What kind of security scans you will do on what applications?
7.Have you received any vulnerability scans when you are running security scans like what are the ones you have experienced in your day-to-day activities?
8.Difference between Blue-Green and Canary deployments - when do you use each?
9.What kind of pipelines you are using while setting up Jenkins like can you give an example of any pipeline you have set up?
10.What is TF state file in terraform?
11.What is the infrastructure size you are hosting like how many supports or containers you are managing infra size?
12.Terraform state got corrupted during backend migration. What is your recovery strategy?


1. What is Linux and why is it widely used in DevOps?
2. How do file permissions work in Linux? Explain chmod 777 and why it's dangerous.
3. How do you monitor CPU, memory, and disk usage in Linux? (top, free, df, du)
4. What are zombie processes and how do you handle them?
5. How do you check and manage systemd services? (systemctl)
LEVEL 2 (Intermediate) - 
1. How does the Linux boot process work?
2. Disk is full but df -h shows free space. Why? What do you check?
3. What are inodes and why are they important? What happens when inodes are exhausted?
4. How do you troubleshoot "No space left on device" when df shows space?
5. What is the difference between hard links and symbolic links?
LEVEL 3 (Advanced) 
1. A server is at 95% CPU but no process shows high CPU in top. What's happening?
2. df -h shows 80% used but du -sh /* totals only 50%. Where's the space?
3. Process stuck in "D" state (uninterruptible sleep). How to recover without reboot?
4. Script works manually but fails in cron. Why and how to fix?
5. ulimit -n shows 1024. Changed limits.conf and rebooted. Still 1024. Why?
Real-Time Scenarios - 
1. System is slow but CPU usage is low. What could be wrong? (I/O wait, network, etc.)
2. How do you debug a memory leak in production?
3. What is strace and when do you use it? Give a real example.
4. How do you recover from "Too many open files" error?
5. How do you harden a Linux server for production? (List 5 things)
