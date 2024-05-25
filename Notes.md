# Intro
- Security is about sophisticated hacks and vulnerabilities but most of the time it's about the basics and real world scenarios.
- This talk is about the real world scenarios.

# SmartWash Ltd. - Incident in the making
## The Tale of DevOps-Joe & Developer-Steve
### Developer Steve
Developer Steve is a full-stack developer at SmartWash Ltd. a small company that sells washing machines. He is always swamped with tasks and emergencies due to being understaffed. One morning, his boss asked him to set up a file-sharing platform to send a large user manual to a customer. The boss had found some great images on Docker Hub and assured Steve it would be easy for a pro like him.

Feeling overwhelmed and frustrated, especially since it was a Friday and he wanted to leave early, Steve decided to tackle the task. The Docker Hub description indicated that he needed to spawn a pod and create a secret for encryption. He needed help from DevOps Joe, as their cluster was highly secure. Steve hoped Joe could quickly create a service account so he could test some images and complete the task.

By the afternoon, Steve had the platform running and informed his boss that it needed proper setup and more time for refinement before actual use. To his surprise, his boss happily reported that he had already sent files using the new system and it worked great. Steve felt relieved but also slightly annoyed. Nonetheless, he decided to call it a day.

### DevOps Joe
Joe, the DevOps engineer, felt his head spinning because everyone needed something from him. His employer was trying to hire more people, but no one wanted to join a small company named SmartWash Ltd. that sold washing machines. Despite this, Joe continued to face the challenges of the IT world alone.

His friend, Developer Steve, was sharp and always on top of things. Joe trusted Steve because he was competent and reliable.

One day, Steve was testing something for their boss and asked Joe to create a service account so he could quickly spawn a pod and create and access a secret. Joe had no problem with this request since Steve knew his stuff. He set up the account and informed Steve that the service account name was "developer-steve." Joe was already planning to delete it in a few days to avoid any issues. However, he wasn't worried because Steve could only spawn pods and handle secrets, and Joe considered Steve the most capable person in the company.

# Epilogue
As you might guess, the following week, everyone is talking about AI shit, and both Joe and Steve forget to clean up their test environments.
Fast forward six months: the entire system is compromised.
