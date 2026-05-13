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




HCL SRE Interview – Infrastructure, Kubernetes & Reliability Focus 
Round-2
This round went deeper into infrastructure design, production trade-offs, and real-world failure handling. The questions were structured to test both system thinking and ownership mindset.
Here are the questions I was asked:
🔹 Infrastructure & Automation
How do you handle Terraform state file locking and consistency in a large team?
How do you detect and automatically remediate configuration drift?
What is your process for importing 100+ manual resources into IaC without downtime?
🔹 Kubernetes & Orchestration
Describe the packet flow from a browser to a Pod behind an Ingress.
How do you calculate requests and limits, and what happens when they are breached?
How do you implement "Least Privilege" at the Pod level?
How do you troubleshoot a Pod with exit code 137?
🔹 SRE & Observability
What are the "Four Golden Signals" you would monitor for a high-traffic API?
What is Error budget? How to Calculate it?
How do you handle a conflict between an exhausted Error Budget and a feature launch?
How do you manage high cardinality in Prometheus metrics?
What is your strategy for reducing alert fatigue?
🔹 CI/CD & Security
How do you prevent CI/CD secret leakage during a malicious Pull Request?
Compare Blue-Green vs. Canary deployments: when does one fail while the other succeeds?
How do you ensure artifact integrity between QA and Production environments?
🔹 Behavioral & Scenario-Based
How do you handle a "Blame Game" situation between Dev and Ops teams?
What is your 30-60-90 day plan for migrating CI/CD platforms?
Describe a major production failure you caused: what was the root cause and the permanent fix?
This round pushed hard on one core idea:
Owning reliability means owning failures, decisions, and trade-offs—not just systems.
#SRE #DevOps #Kubernetes #Cloud #InterviewExperience #HCL



recently I faced an Interview at Ensono for AWS DevOps Engineer L2 Round

1. Self intro
2. client raised as a P1 incident for application down. So their critical application is not working, so they are facing intermittent issue. So once you receive the ticket, what is the process you follow there?
3. what are the things you can optimize AWS cost?
4. I want to create an EC2 instance via Terraform. So how can you, you know, create an EC2 instance via Terraform?
5. how do you manage AWS resources that were created outside of Terraform?
6. you need to write a Terraform code for an all only for AWS. In that you need to provision the resources in an all multiple regions. How will you write the code in that?
7. what are the core services you've been working with the AWS cloud?
8. You are completely managed Terraform or you've been doing work on the Terraform and planning the architecture of the environment?
9. I wanted to unmanage the resource from a Terraform, going forward, I don't want to manage any resources from the account is via the Terraform. So how do you unmanage it?
10. after you remove the resource from Terraform state file, the order command you run that, it is been on tracked. So when you do the Terraform plan next time, if you see that the new resources, we are not trying to create it. When you run the Terraform plan, the resource will be created one. So how do you fix this drift?
11. you have deployed the EC2 instance via the auto scaling group. so it is having the application traffic for your production workload. So suddenly, the EC2, whichever launched from auto-scaling, launched and terminated within five minutes. The cycle is repeating frequently due to the health check issue. you need to review the instance, why it is failing the health checks, and wanted to retain the log from the failed instance to know for the investigation. So how do you achieve this?




Most Kubernetes engineers don't know these kubectl tricks, and waste hours while troubleshooting. 

𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝗴𝗲𝘁 𝗲𝘃𝗲𝗻𝘁𝘀 -𝗔 -𝘄 | 𝗴𝗿𝗲𝗽 -𝘃 "𝗡𝗼𝗿𝗺𝗮𝗹"
--> Watch only the bad stuff across the entire cluster
> It streams warnings and failures from every namespace in real time so you can catch issues before they turn into incidents.

𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝗱𝗶𝗳𝗳 -𝗳 𝗱𝗲𝗽𝗹𝗼𝘆𝗺𝗲𝗻𝘁.𝘆𝗮𝗺𝗹
--> See exactly what will change before applying
> It helps catch accidental changes like wrong image tags, deleted environment variables, or broken resource limits before deployment.

𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝗴𝗲𝘁 𝗽𝗼𝗱𝘀 -𝗔 --𝘀𝗼𝗿𝘁-𝗯𝘆='.𝘀𝘁𝗮𝘁𝘂𝘀.𝗰𝗼𝗻𝘁𝗮𝗶𝗻𝗲𝗿𝗦𝘁𝗮𝘁𝘂𝘀𝗲𝘀[𝟬].𝗿𝗲𝘀𝘁𝗮𝗿𝘁𝗖𝗼𝘂𝗻𝘁'

--> Find unstable pods instantly
> This sorts pods by restart count so the most unstable workloads appear first. 

𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝘁𝗼𝗽 𝗽𝗼𝗱𝘀 -𝗔 --𝘀𝗼𝗿𝘁-𝗯𝘆=𝗺𝗲𝗺𝗼𝗿𝘆 --𝗰𝗼𝗻𝘁𝗮𝗶𝗻𝗲𝗿𝘀
--> Find who is actually consuming memory
> The `--containers` flag breaks usage down per container instead of showing only pod-level metrics. 

𝗸𝘂𝗯𝗲𝗰𝘁𝗹 𝗱𝗲𝗯𝘂𝗴 -𝗶𝘁 <𝗽𝗼𝗱-𝗻𝗮𝗺𝗲> --𝗶𝗺𝗮𝗴𝗲=𝗯𝘂𝘀𝘆𝗯𝗼𝘅 --𝗰𝗼𝗽𝘆-𝘁𝗼=𝗱𝗲𝗯𝘂𝗴-𝗽𝗼𝗱
--> Debug a pod without touching the original workload
> This creates a copy of the failing pod with a debug container attached for investigation. 



op Kubernetes Interview Questions Every DevOps Engineer Should Prepare For
If you're preparing for DevOps / SRE / Cloud interviews, here are some important Kubernetes questions worth revising:
🔹 What is Kubernetes and how does it work?
🔹 What are Pods in Kubernetes?
🔹 Difference between Deployment and StatefulSet?
🔹 What are ReplicaSets in Kubernetes?
🔹 What are Kubernetes Services and their types?
🔹 Difference between ConfigMap and Secret?
🔹 How does Kubernetes scheduling work?
🔹 What are Namespaces in Kubernetes?
🔹 What is Ingress and how does it work?
🔹 What are taints and tolerations?
🔹 What are liveness and readiness probes?
🔹 How do you perform rolling updates?
🔹 How do you handle rollbacks?
🔹 How do you monitor Kubernetes clusters?
🔹 How do you debug failed Pods?
🔹 How do you manage persistent storage?
🔹 What is Helm and how does it work?
🔹 How do you secure Kubernetes clusters?
🔹 Common Kubernetes production issues and fixes?
🔹 Best practices for Kubernetes in production?



Devops Interview questions 

##Kubernetes

1. How do you separate environments (like Dev, Staging, Prod) within Kubernetes or across clusters?
2. What is the purpose of a **ServicePort** in Kubernetes?
3. What is a **Deployment** in K&s, and how does it manage pods?

##AWS (Amazon Web Services)

1. What are the primary differences between **AWS EC2** and **AWS Fargate**?
2. Explain the different **Routing Policies** available in
**Route 53**
3. What is the use of a **Rotation Policy** in AWS KMS (Key Management Service)?
4. What are the main parameters or attributes used when configuring **Auto Scaling** on AWS?

###Terraform (laC)

1. What is the purpose of the ** depends_on** meta-argument in Terraform?
2. How do you view or extract **outputs** in Terraform after a deployment?
3. What is the use of **terraform taint**, and when should it be applied?

###Docker

1. What is Docker Compose, and why is it used?
2. How can you run multiple containers on the same port in Docker? (Note: Usually involves a Load Balancer or Reverse Proxy).
3. What is the purpose of the **EXPOSE** command in a Dockerfile?
4. If you need to run multiple versions of Python or different base image versions, how do you handle that in a Dockerfile build?

###Linux & Scripting

1. What does the command **chmod 777** do, and what is the meaning of the permission code **5777**?
2. Which command is used to substitute a string or pattern within a particular directory in Linux?
3. How do you filter or search for a specific word/pattern in Linux using **grep** or **sed**?
4. Write a Python script to search for a specific file within a folder or directory.

###CI/CD & Git**

1. How do you build **parallel stages** in a Jenkins pipeline?
2. What is the difference between **git merge** and ** git rebase**?
3. What is meant by "**staging**" in Git?
4. Explain the concept of Blue-Green Deployment.
5.What is Git stash used tor.
6. What is Git commit used for ? Are all git commits will same if we do git rebase?



 5 Years in DevOps — Real Interview Questions I Got Asked (With My Actual Answers)
I recently went through a DevOps interview round after 5 years of hands-on work with AKS, Terraform, Kubernetes, and the Elastic Stack.
These aren't textbook answers. These are what I actually said — based on what I've actually done.
Save this. It might help you land your next role. 🔖
Q1: How do you manage Terraform state in a team?
In my current setup, we store state in Azure Blob Storage with lease-based locking. I've built reusable Terraform modules from scratch — things like AKS node pool configs, Key Vault policies, ACR setup. We use separate workspaces for dev, QA, UAT, and prod so there's zero risk of one environment bleeding into another.
Q2: HPA vs KEDA — when do you use what?
HPA works great for CPU/memory-based scaling. But in our environment we needed to scale based on Kafka queue depth — that's where KEDA came in. KEDA also supports scale-to-zero, which saved us real cost on non-prod clusters.
Q3: Pod stuck in Pending — how do you debug it?
First thing I do is kubectl describe pod and go straight to the Events section. I've seen this caused by CPU/memory requests being too high for available nodes, taints and tolerations not matching, and PVCs not binding. Once I found a whole node pool was over-committed because resource requests weren't set properly across teams — fixed it by enforcing LimitRanges at namespace level.
Q4: How do you handle secrets in AKS?
We use Azure Key Vault with the Secrets Store CSI Driver. Pods mount secrets as volumes at runtime — nothing sensitive sits in etcd. Access is controlled through Managed Identity and Azure RBAC. I've worked with both the Access Policy model and the newer RBAC model during a migration.
Q5: Walk me through a CI/CD pipeline you've built.
We run GitHub Actions on merge to main it triggers lint, unit tests, Docker build, push to ACR, then Helm upgrade on AKS. If the post-deploy health check fails, Helm auto-rolls back. 
Q6: Liveness vs Readiness vs Startup probes?
Q7: How do you monitor and observe your clusters?
We use the full Elastic Stack — Filebeat runs as a DaemonSet on every node, ships logs to Elasticsearch, Kibana for dashboards and data views.
Q8: How do you handle node pool upgrades without downtime?
We do rolling upgrades surge upgrade settings in Terraform so new nodes come up before old ones drain. We also use PodDisruptionBudgets
Q9: Cross-namespace networking in Kubernetes — how does it work?
By default pods across namespaces can talk to each other via service.namespace.svc.cluster.local.
Q10: How do you approach onboarding a new application team onto AKS?



🐧 Linux Interview Questions & Brief Answers for DevOps Engineers - Part 1
🔥 Linux Basics

❓ What is Linux?
✔ Linux is an open-source operating system mainly used in servers, cloud, and DevOps environments.
❓ Why is Linux preferred in DevOps?
✔ It is stable, secure, lightweight, and supports automation very well.
❓ Difference between Linux and Unix?
✔ Linux is open-source, while Unix is mostly proprietary.
❓ What is the root user?
✔ Root is the superuser with full administrative access.
❓ Explain Linux file system hierarchy.
✔ /etc → Config files
✔ /var → Logs
✔ /home → User files
✔ /tmp → Temporary files

💻 Commands & Troubleshooting
❓ How do you check CPU and memory usage?
✔ top, htop, free -h
❓ How do you check disk usage?
✔ df -h shows filesystem usage
✔ du -sh shows folder size
❓ Difference between grep, awk, and sed?
✔ grep → Search text
✔ awk → Process structured data
✔ sed → Edit/replace text
❓ How do you monitor logs in real time?
✔ tail -f logfile
❓ Difference between find and locate?
✔ find searches live
✔ locate searches from database

🔐 Users & Permissions
❓ What are file permissions?
✔ Read(r), Write(w), Execute(x)
❓ Difference between soft link and hard link?
✔ Soft link points to file path
✔ Hard link points to inode
❓ What is chmod?
✔ Used to change permissions.
Example:
chmod 755 script.sh
❓ What is chown?
✔ Changes file ownership.


I reviewed an AWS bill for a startup last week.

They were paying $14,000/month.

After 2 hours of analysis, I found:
→ 12 EC2 instances running 24/7 that only needed to run 8 hours
→ RDS instances sized for 100x their actual traffic
→ S3 buckets with no lifecycle policies (storing 3 years of logs)
→ No Reserved Instances or Savings Plans

New monthly bill after optimization: $5,800.

That's $98,400/year saved.
No performance impact. No downtime. No code changes.

The scary part? This is normal.
Most companies I audit are overspending by 30-50% on AWS.

The cloud isn't expensive.
Bad architecture is expensive.
.
What's the most wasteful AWS setup you've ever seen?



******Linux real time Interview question******

1. A Linux server is not booting — how do you troubleshoot and recover it?
2. The server is stuck at the GRUB stage — what steps will you take to fix it?
3 .Root filesystem is full and the system is unstable — how do you resolve it?
4. A production server shows very high CPU usage — how do you identify the root cause?
5. Memory usage is continuously increasing — how do you troubleshoot memory leaks?
6. Load average is very high but CPU usage is low — what could be the reason?
7. A process is consuming high memory — how do you identify and stop it safely?
8. A zombie process is found in the system — how do you handle it?
Multiple users report slow server performance — how do you troubleshoot?
9. Disk I/O utilization is very high — how do you diagnose the issue?

10. A filesystem becomes read-only unexpectedly — how do you fix it?
11. Disk space is full but files are not visible — what could be the reason?
12. An LVM volume needs to be extended without downtime — how do you perform it?
13. A mounted filesystem is not available after reboot — how do you troubleshoot?
14. Filesystem corruption detected — what steps will you take to recover data?
15. Swap usage is very high — how do you troubleshoot and optimize it?
16. A server reports inode exhaustion — how do you resolve it?

17. Server is not reachable over SSH — how do you debug the issue?
18. SSH service is running but connection is refused — what could be wrong?
19. DNS resolution is not working — how do you troubleshoot it?
20. Network connectivity is intermittent — how do you diagnose it?
21. A port is not accessible externally — what checks will you perform?
22. Server can ping IP but cannot access domain names — what could be the cause?

23. A critical service fails to start after reboot — how do you troubleshoot?
24. System time is incorrect — how do you fix time synchronization issues?
25. Logs are growing rapidly and filling disk — how do you manage it?
26. Cron jobs are not running — how do you debug the issue?
27. User cannot access a file despite correct permissions — what could be wrong?
28. System is under heavy load during peak hours — how do you analyze performance?
29 .How do you troubleshoot a complete production outage on a Linux server?




🚀 DevOps Interview Questions (5 Years Experience) – Docker & Kubernetes Focus on My Experience 🚀
Preparing for a Senior DevOps Engineer interview?
Here are some commonly asked Docker & Kubernetes interview questions along with concise answers that can help during preparation.
🐳 Docker Interview Questions
1️⃣ What is the difference between Docker Image and Container?
✅A Docker Image is a read-only template containing application code, libraries, and dependencies.
A Container is a running instance of that image.
2️⃣ What is the difference between CMD and ENTRYPOINT in Docker?
✅CMD provides default arguments that can be overridden.
ENTRYPOINT defines the main command that always runs.
Example:
ENTRYPOINT ["python"]
CMD ["app.py"]
3️⃣ How do you reduce Docker image size?
✅Use lightweight base images like Alpine.
Multi-stage builds.
Remove unnecessary packages/cache.
Combine RUN commands.
Use .dockerignore.
4️⃣ What is a multi-stage Docker build?
✅It allows separating build and runtime environments, reducing final image size and improving security.
5️⃣ Difference between Docker Compose and Kubernetes?
✅Docker Compose is mainly for local multi-container setups.
Kubernetes is for orchestration, scaling, self-healing, and production-grade deployments
☸ Kubernetes Interview Questions
6️⃣ What happens when you run kubectl apply -f deployment.yaml?
✅Kubernetes API server receives the manifest, stores desired state in etcd, scheduler assigns pods to nodes, and kubelet ensures containers are running.
7️⃣ Difference between Deployment and StatefulSet?
✅Deployment → Stateless applications.
StatefulSet → Stateful apps needing stable identity/storage (DBs, Kafka, etc.).
8️⃣ What is a Kubernetes Service?
✅A Service exposes pods using a stable IP/DNS and provides load balancing.
Types:
ClusterIP
NodePort
LoadBalancer
ExternalName
9️⃣ What is ConfigMap and Secret?
✅ConfigMap stores non-sensitive configuration data.
Secret stores sensitive data like passwords/tokens (base64 encoded).
🔟 How does Kubernetes perform self-healing?
✅If a pod crashes or node fails:
ReplicaSet recreates pods.
Liveness probes restart unhealthy containers.
Scheduler reschedules workloads.
🎯 Important Topics to Focus On
✅ Docker Networking
✅ Docker Volumes
✅ Kubernetes Architecture
✅ Ingress & Load Balancing
✅ Helm Charts
✅ RBAC
✅ CI/CD Integration
✅ Monitoring (Prometheus/Grafana)
✅ Troubleshooting Pods
✅ Autoscaling (HPA/VPA)
In 5+ years DevOps interviews, companies focus heavily on:
Real-time troubleshooting scenarios
Kubernetes production issues
CI/CD pipeline optimization
Security best practices
Cost optimization in cloud infrastructure



You’re not an SRE (Site Reliability Engineer) until you understand these terms:

✔️SLI (Service Level Indicator) → A specific metric, like latency or error rate, used to measure performance.

✔️SLO (Service Level Objective) → The target value or range for an SLI that defines "good enough" service.

✔️Error Budget → The maximum amount of time a system can be down without violating the SLO.

✔️Toil → Manual, repetitive, and automatable work that provides no long-term value.

✔️Incident Response → The organized process for managing and resolving unplanned service disruptions.

✔️Post-Mortem / RCA → A blameless analysis of a failure to prevent it from happening again.

✔️Observability (o11y) → Understanding a system's internal state based on the data it produces (logs, metrics, traces).

✔️MTTR (Mean Time to Repair) → The average time taken to fix a system after a failure.

✔️Chaos Engineering → Experimenting on a system to build confidence in its capability to withstand turbulent conditions.

✔️Distributed Tracing → Monitoring requests as they move through a complex microservices architecture.

✔️Golden Signals → The four key metrics for monitoring: Latency, Traffic, Errors, and Saturation.

✔️Circuit Breaker → A design pattern used to detect failures and encapsulate the logic of preventing a failure from cascading.

✔️Graceful Degradation → Ensuring a system remains functional, even if at a reduced level, during a partial failure.

✔️Capacity Planning → Predicting future resource requirements to prevent saturation and outages.



I recently sat for a DevOps technical interview and documented the questions I was asked. Sharing these here to help fellow aspirants prepare for  DevOps roles—hope this helps your prep!
##Kubernetes
1. How do you separate environments (like Dev, Staging, Prod) within Kubernetes or across clusters?
 2. What is the purpose of a **ServicePort** in Kubernetes?
 3. What is a **Deployment** in K8s, and how does it manage pods?
##AWS (Amazon Web Services)
 1. What are the primary differences between **AWS EC2** and **AWS Fargate**?
 2. Explain the different **Routing Policies** available in **Route 53**.
 3. What is the use of a **Rotation Policy** in AWS KMS (Key Management Service)?
 4. What are the main parameters or attributes used when configuring **Auto Scaling** on AWS?
###Terraform (IaC)
 1. What is the purpose of the **depends_on** meta-argument in Terraform?
 2. How do you view or extract **outputs** in Terraform after a deployment?
 3. What is the use of **terraform taint**, and when should it be applied?
###Docker
1. What is Docker Compose, and why is it used?
 2. How can you run multiple containers on the same port in Docker? (Note: Usually involves a Load Balancer or Reverse Proxy).
 3. What is the purpose of the **EXPOSE** command in a Dockerfile?
 4. If you need to run multiple versions of Python or different base image versions, how do you handle that in a Dockerfile build?
###Linux & Scripting
 1. What does the command **chmod 777** do, and what is the meaning of the permission code **5777**?
 2. Which command is used to substitute a string or pattern within a particular directory in Linux?
 3. How do you filter or search for a specific word/pattern in Linux using **grep** or **sed**?
 4. Write a Python script to search for a specific file within a folder or directory.
###CI/CD & Git**
 1. How do you build **parallel stages** in a Jenkins pipeline?
 2. What is the difference between **git merge** and **git rebase**?
 3. What is meant by "**staging**" in Git?
 4. Explain the concept of Blue-Green Deployment.
5.What is Git stash used for.
6. What is Git commit used for ? Are all git commits will same if we do git rebase?
