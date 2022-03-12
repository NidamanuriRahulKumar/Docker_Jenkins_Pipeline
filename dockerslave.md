# Docker Slaves and Jenkins master

## What is a Jenkins master?
- Main Jenkins server is the master. The master's job is to handle:
    - Scheduling build jobs
    - Dispatching builds to the slaves for the actual execution
    - Monitoring the slaves (taking them online or offline)
    - Recording and presenting the build results
    - Master instance of Jenkins can also execute build jobs directly.
    
## What is a Docker slave?
- Runs on a remote machine (AWS EC2 Ubuntu server in this case)
- It hears requests from the Jenkins Master Instance
- Slaves can run on a variety of operating systems
- The job of a slave is to do as they are told to, which involves executing build jobs dispatched by the Master.
- When we want to build a connection between two jenkins jobs (for example) which are hosted on different servers, we use the master-servant model.

Diagram Jenkins master, docker slave architecture 
https://www.edureka.co/blog/jenkins-master-and-slave-architecture-a-complete-guide/#:~:text=Jenkins%20Slave,the%20characteristics%20of%20Jenkins%20Slaves%3A&text=Slaves%20can%20run%20on%20a,jobs%20dispatched%20by%20the%20Master.

## Configuring Jenkins for Slave
- Install Yet Another Docker Plugin
```
- Manage Jenkins
- Manage Plugin
- Search for Yet Another Docker Plugin
- Install after restart
- Restart Jenkins when no job in running 
```

- Enable TCP port for JNLP agents: Jenkins is Java Network Launch Protocol, Jenkins slave will communicate with Jenkins Master on this protocol. 
```bash
- Manage Jenkins
- Configure Global Security
- Agent >> Selected for Fixed and put 9080
```
