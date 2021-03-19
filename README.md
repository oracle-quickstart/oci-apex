# Deploying Oracle Application Express on Oracle Cloud Infrastructure

Oracle Application Express is a low-code development platform that enables you to build scalable, secure enterprise applications with world-class features that can be deployed anywhere.

This repository provides multiple methods to automate the provisioning and management of Application Express on OCI. 

Application Express provides you with an easy-to-use browser-based environment to load data, manage database objects, develop REST interfaces, and build applications which look and run great on both desktop and mobile devices. You can use Application Express to develop a wide variety of solutions: import spreadsheets and develop a single source of truth in minutes, create compelling data visualizations against your existing data, deploy productivity applications to elegantly solve a business need, or build your next mission-critical data management application.

Application Express embraces SQL. Anything you can express with SQL can be easily employed in an Application Express application. Application Express also enables low-code development, providing developers with powerful data management and data visualization components that deliver modern, responsive end-user experiences out of the box. Instead of writing code by hand, you are able to use intelligent wizards to guide you through the rapid creation of applications and components.

## Using Ansible

Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling infrastructure as code. In the `/ansible` directory you will find the ansible configuration required to deploy the Oracle database and ORDS servers that enable the Application Express platform for low code application development. You can use this to deploy and self manage an APEX instance.

## Using Terraform

Terraform is an open-source infrastructure as code software tool. You define data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language (HCL) and Terraform calls the cloud APIs to create and manage the infrastructure.

The terraform configuration provided in the `/terraform` directory provides a preconfigured, fully managed and secured Application Express environment to both build and deploy world-class data-centric applications. There are no limits on the number of developers or end users for your applications.

Configuration, patching, monitoring, and upgrading of all Oracle Application Express components is fully managed by Oracle, leaving you free to focus on developing your solutions and solving your business problems. Oracle Application Express enables your organization to be more agile and develop solutions faster, for less cost, and with greater consistency. You can adapt to changing requirements with ease. And you can empower professional developers, citizen developers, and everyone else. 

