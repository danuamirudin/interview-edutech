I designed a modular Terraform setup to deploy Google Kubernetes Engine (GKE) and a Cloud SQL (MySQL) instance in Google Cloud. The goal was to keep the infrastructure scalable, maintainable, and secure while following Terraform best practices.

To achieve this, I structured the project using separate modules for GKE and MySQL, making it easy to manage and extend. The root main.tf file acts as a central point to invoke these modules.


##  Setup
1. Install Terraform
2. Authenticate with GCP:
   ```sh
   gcloud auth application-default login && gcloud services enable compute.googleapis.com container.googleapis.com sqladmin.googleapis.com
   ```
3. INIT the module
  ```sh
   terraform init
   ```
4. APPLY the resource
    ```sh
    terraform apply -auto-approve
    ```
5. Destroy resources:
    ```sh
    terraform destroy -auto-approve
    ```


  