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


🚀 30 LPA DevOps interviews don’t ask “What is Kubernetes?”
They ask this. And most candidates fail in 60 seconds.

Question: 
“Users report slow API. Pods are running. CPU is normal. No errors.”
What do you do?

Weak answer (rejected instantly)
 • restart pods
 • scale replicas
 • check logs
This tells the interviewer: you react, you don’t reason

Strong answer (selected candidates)
“I’ll break the system into layers.”
1. External vs internal latency
2. DNS / Load Balancer
3. Network path (CNI, conntrack, MTU)
4. Pod/application
5. downstream dependencies
Then, validate signals before acting. Bonus (what impresses interviewers)
Mention:
 • conntrack exhaustion • MTU mismatch • DNS latency • retry storms
Now you sound like someone who has seen production.
🔁 Repost if you’re targeting high-paying DevOps roles.

🔥 Inside InfraThrone Elite, we train exactly this:
• real interview scenarios
 • real outage thinking
 • real debugging frameworks
New Batch Starts at 01st june 2026
🚨 Early Bird Offer Ends in 72 hours → elite.infrathrone.xyz

#DevOps #Kubernetes #PlatformEngineering #InfraThrone #Tech



DevOps Interview @ SquareOps
General / Behavioral
Introduce yourself and walk me through your experience?
Can you describe a typical day in your current role?

CI/CD & Build Optimization
How did you reduce the build time in your project?
(Build time for application is 1.5 hr so Follow-up: Build still takes ~1.5 hours—what further optimizations would you suggest?)
What are the benefits of using ephemeral agents in CI/CD pipelines? How are you handling the creation, connection & destruction of the agent? 
How do you handle build artifacts creation and management?
How did you migrate your codebase from one repository/system to another (e.g., Bitbucket to GitHub)?
What is a divergent branch? How to handle them?
What is the branching strategy you follow (e.g., GitFlow, trunk-based)?

Docker & Containerization
What are the different stages in a multi-stage Docker build?
How do you reduce Docker image size?

Terraform
Suppose one of your team members has manually  changed the infrastructure from the AWS console, How will you handle the state drift? How will you ensure this does not happen again in future? 
How to handle multiple cloud providers in a single terraform configuration?



Logging, Monitoring & Observability
How do you decide which logs should go to Prometheus vs. Splunk (or any logging system)?
How do you handle log isolation and avoid high cardinality issues?
How do you integrate Prometheus into your application?
How are you using observability tools to improve application performance?
Can you explain the complete EFK (Elasticsearch, Fluentd, Kibana) flow in your system?
How do you manage logs in Kubernetes clusters?


Security & Secrets Management
Since you’ve worked with both CyberArk Conjur and AWS Secrets Manager, which would you choose for EKS and why?
How do you securely manage application secrets in Kubernetes?


You call yourself “Senior DevOps”?
Then debug this 👇

Time: 02:17 UTC
Region: us-east-1
Infra: EKS 1.28 + Cilium (eBPF) + Istio 1.20 + ALB → Ingress → Envoy → Go API → RDS + Redis
Traffic: 22 k rps steady

Symptoms
27 % of requests slowed from 200 ms → 6 s.
No 5xx spike, 99 % success rate - just latency.
Only api.example.com (external) affected, internal service is fine.

Timeline
01:48 Karpenter added 6 new nodes (m6i.large).
01:56 Istio EnvoyFilter updated (log format).
02:05 Prometheus agent upgrade.
02:12 Latency spike, HPA silent.

Key Findings
1. Slow pods run only on new nodes.
2. New nodes show lower CPU but higher latency.
3. Bimodal latency in istio_request_duration.
4. ss -s → hundreds of TCP connections in rto: 3–6 s.
5. tcpdump → SYN/ACK fast → DATA delayed + out-of-order.
6. ALB targets in subnet-b-az1 = slow ones.
7. cilium bpf metrics → CT_EVICTIONS, DROP_FRAG_NEEDED climbing.
8. ip link → old nodes MTU 9001 vs new 1500.
9. DNS, DB, Redis — normal.

Clues
Latency only between ALB → sidecar, never inside cluster.
No packet loss, probes all green.
New nodes = different AMI bootstrap.

Your Challenge
1. What’s your first hypothesis and how do you disprove it fast?
2. Which one command per layer do you run next?
• Network • Node • Mesh • App • ALB
3. Why didn’t HPA scale even as users suffered?
4. How would you rollback/contain latency in 15 minutes?

Trap Answers
Not DNS. Not DB. Not the code.
If you can connect all dots, node MTU mismatch → packet fragmentation → TCP retransmits → tail latency → no HPA trigger (based on CPU) — you’re senior.

Comment your first 3 steps and the quickest mitigation you’d attempt.
♻️ Repost to get the full RCA timeline, packet capture, and the one-line fix from our war room.
