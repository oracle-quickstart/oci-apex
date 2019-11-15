# oci-apex
This is a ansible playbook sample that will deploy [APEX](https://apex.oracle.com) on [Oracle Cloud Infrastructure (OCI)](https://cloud.oracle.com/en_US/cloud-infrastructure).

## About
This playbook will configure a database and two ORDS servers load balanced with a self signed Certificate.

## Prerequisites 
1. Ansible installed with [OCI-ansible](https://github.com/oracle/oci-ansible-modules).
2. Ensure that you have a valid OCI SDK configuration at the default config path ~/.oci/config
3. [Apex](https://www.oracle.com/tools/downloads/apex-downloads.html) and [ORDS](https://www.oracle.com/database/technologies/appdev/rest.html) installation files available through a weburl.
	You can upload it into OCI storage container and create a PAR for it.
	
## Configurations
In host_vars/locahost configure the following:
- Set the availabliltiy domains
- Set the compartment OCID
- Set the Oracle linux OCID
- Define your ssh keys, set empty to create one
- Set the urls where we can download the ORDS and APEX zipfiles
- Verify the shapes to be used
- Set a DB password this password will also be used for the apex users
- Go over the other options and make sure they work for you
      
## What will be created 
- VCN
- Public and Private Subnets
- Database instance
- ORDS servers
- LoadBalancers with self signed Certificate
- Bastion server


## How to run the sample
- Run the demo playbook to create the sample infrastructure in OCI. The deployment of the 
   Oracle database can take a long while depending on the shape used.
> $ ansible-playbook sample.yaml
- After a succesfull run it will show you the public ip of the loadbalancer to use
- access the apex server with the last part is the pluggable database name
> https://<IP>/ords/pdbprod

## Thanks and inspiration
- Secure MongoDB Deployment in OCI Using Ansible
- [WhitePaper terraform deployment](https://docs.cloud.oracle.com/iaas/Content/Resources/Assets/whitepapers/oracle-apex-on-oci-database.pdf) this provided the jetty-ords scripts for the configuration of ORDS
- Oracle engineers for their support and expertise

## To Do
- Alter the jetty configuration files to allow for different passwords used in ORDS-APEX configurations
- Have option to use autonomous database deployment
- Have option to use XE database deployment
- use letsencrypt to create  Certificate
- ... 
