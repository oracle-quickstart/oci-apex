# Apex Deployment

This Terraform configuration helps you create a new fully managed APEX environment on Oracle Cloud Infrastructure.
The APEX low-code development platform available as a managed cloud service that developers can use to build data-driven enterprise applications quickly and easily.
While the original APEX platform was only available as part of the Oracle Database, APEX Application Development is available as a standalone service and works with a variety of applications. 
The service supports unlimited applications, and elastically scales as additional capacity is needed.

## Deploy Using Oracle Resource Manager

1. Click [![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)]()

    If you aren't already signed in, when prompted, enter the tenancy name and user credentials.

2. Review and accept the terms and conditions.

3. Select the region where you want to deploy the stack.

4. Follow the on-screen prompts and instructions to create the stack.

5. After creating the stack, click **Terraform Actions**, and select **Plan**.

6. Wait for the job to be completed, and review the plan.

    To make any changes, return to the Stack Details page, click **Edit Stack**, and make the required changes. Then, run the **Plan** action again.

7. If no further changes are necessary, return to the Stack Details page, click **Terraform Actions**, and select **Apply**. 

## Deploy Using the Terraform CLI

### Clone of the repo
Now, you'll want a local copy of this repo. You can make that with the commands:

```
git clone https://github.com/oracle-quickstart/oci-apex
cd oci-apex/terraform
ls
```

### Prerequisites

To get stared, you need to setup terraform to be abel to connect to your OCI tenancy and execute actions against it.  That's all detailed [here](https://github.com/cloud-partners/oci-prerequisites).

Once you have terraform installed and configured, you can tell terraform how to connect to your OCI tenancy by creating a `terraform.tfvars` file and populating with the following information:

```
# Authentication
tenancy_ocid         = "<tenancy_ocid>"
user_ocid            = "<user_ocid>"
fingerprint          = "<finger_print>"
private_key_path     = "<pem_private_key_path>"

# Region
region = "<oci_region>"

# Compartment
compartment_ocid = "<compartment_ocid>"

# Jenkins password
autonomous_database_admin_password = "<jenkins_password>"
```

### Create the Resources

Run the following commands:

```    
terraform init
terraform plan
terraform apply
```

### Destroy the Deployment

When you no longer need the deployment, you can run this command to destroy the resources:

```
terraform destroy
```

