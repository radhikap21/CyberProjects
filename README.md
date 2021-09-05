# CyberProjects
This contains Radhika's Projects
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

**Note**: The following image link needs to be updated. Replace `diagram_filename.png` with the name of your diagram image file.  

![TODO: Update the path with the name of your diagram](Images/diagram_filename.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: etc/ansible/install-elk.yml 

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_
Answer: Load balancer protects the system from vulnerable attacks especially DDos attack by distrubing  the loads to diffrents servers. Advantage of jump box is when ever the user hit request it directly doesn't go to virtual machines jump box looks for a secure connection and then forward  it to virtual machines. It looks for secure connection. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
Answer:Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing
- _TODO: What does Metricbeat record?_
Answer:Metricbeat is a lightweight shipper that you can install on your servers to periodically collect metrics from the operating system and from services running on the server.Like usgae of CPU ,memory.RAM

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| name       | function | ip address | operating system |
|------------|----------|------------|------------------|
| jump box   | gateway  | 10.1.0.4   | Linux            |
| DVWA VM1   | Server   | 10.1.0.5   | Linux            |
| DVWA VM 2  | Server   | 10.1.0.6   | Linux            |
| Elk server | server   | 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO:  My home ip 

Machines within the network can only be accessed by _____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_
Answer: Jump box is allowed to access ELK VM ip is 10.0.0.4 .


A summary of the access policies in place can be found in the table below.

| name       | Public accessible | allowed ip address |
|------------|-------------------|--------------------|
| jump box   | Yes               | 10.1.0.4           |
| DVWA VM1   | no                | 10.1.0.5           |
| DVWA VM 2  | no                | 10.1.0.6           |
| Elk server | no                | 10.0.0.4           |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _Answer: We Can perform multiple tasks in a single playbook. 

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
-  1.Install docker.io and python3-pip
   2.Installing python3.pip
   3.Install Docker python module
   4.  sysctl -w vm.max_map_count=262144
   5. download and launch a docker web container -elk
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

**Note**: The following image link needs to be updated. Replace `docker_ps_output.png` with the name of your screenshot image file.  


![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _Answer: Elk server to configured to monitor DVWA 1 10.1.0.5 and DWVA 2 10.1.0.6.  

We have installed the following Beats on these machines:
- _Answer: We have install Filebeat and Metricbeat on these machines.

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._
Answer:Filebeats collects log files and log events . 
       Metricbeat collects data from  system like CPU usage RAM

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_

Answer:/etc/ansible/file/filebeat-configuration.yml

- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_

Answer: Elk server 10.0.0.4 edited the hosts file to add Elk server ip address

- _Which URL do you navigate to in order to check that the ELK server is running?

Answer:Elk server ip address :5601/app/kibana

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
Answer: ansible-playbook filebeat-playbook.yml 
