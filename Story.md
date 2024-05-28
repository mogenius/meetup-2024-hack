# The Tale of DevOps Joe & Developer Steve
Meet Developer Steve. Steve works at SmartWash Ltd., a company that sells washing machines. Steve is always buried under a mountain of tasks because the development team is seriously understaffed. One Friday, his boss asks him to set up a file-sharing platform to send a 500MB user manual to a customer. His boss assures him it’ll be easy with some Docker Hub images.

Steve, already frustrated and dreaming of leaving early, decides to tackle the task. But he needs help from his buddy, DevOps Joe, to create a service account in their super secure cluster.

Now, let’s talk about Joe. Joe is the DevOps guy at SmartWash and is just as overwhelmed as Steve. Everyone needs something from Joe, and hiring more people isn’t happening fast enough. But Joe trusts Steve—Steve is sharp, reliable, and they’ve worked together for ages.

So, when Steve asks Joe to create a service account to quickly spawn a pod and create a secret, Joe thinks, "No problem!" He sets it up, names it "developer-steve," and plans to delete it in a few days. After all, what could possibly go wrong?

Steve gets the platform running by the afternoon, tells his boss it's done, and decides to call it a day, even though there are a few loose ends.

The following week, everyone at SmartWash gets caught up in the latest AI buzz, and both Joe and Steve forget to clean up their test environments. Fast forward six months, and—surprise!—the entire system is compromised.
