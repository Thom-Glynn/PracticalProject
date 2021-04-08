# Cloud Native Practical Project

## Links:

- Jira Board - [Jira Board](https://fundementalproject1.atlassian.net/secure/RapidBoard.jspa?projectKey=PP&rapidView=2)
- Github - [Github Repo](https://github.com/Thom-Glynn/PracticalProject)

## Brief

The second project in the QA Cloud Native Engineer course was to create a completed CI Pipeline with accompanying documentation. The CI 
Pipeline needs to be successfully deployed with the application provided. Demonstration of said CI Pipeline 

The application must: 
- A Jira board with full expansion on tasks needed to complete the project.
- This could also provide a record of any issues or risks that you faced creating your project.
- The application must be deployed using containerisation and orchestration tools.
- The application must be tested through the CI pipeline.
- The project must make use of two managed Database Servers: 1 for Testing and 1 for Production.
- If a change is made to the code base, Webhooks should be used so that Jenkins recreates and redeploys the changed application.
- The infrastructure for the project should be configured using an infrastructure management tool (Infrastructure as Code).
- As part of the project, you need to create an Ansible Playbook that will provision the environment that your CI Server needs to run.
- The project must make use of a reverse proxy to make your application accessible to the user.

## Architecture

Depiced below is a diagram of the infrastructre of the CI pipeline.

![infrastrucre diagram](https://i.imgur.com/ftVxCIp.png)

In the diagram Terraform provisions the RDS databases, the EC2 Virtual Machines and the kubernetes cluster. 
The EC2's provisioned with Terraform will have their resources configured putting onto them the infrastrucure
needed for testing. One of the EC2's named Jenkins_VM will be responsible for being the CI server of the pipeline,
keeping a log of all changes and updates from the repoistory.

## JIRA board

A screenshot of my Jira board is below: 
![Jira Board](https://i.imgur.com/yQLcxrr.png)

## Testing

The scripts were set up so that a test report was written to a seperate document that could be accessed from the console.
Unfortunately I was not able to get Jenkins running and therefor a succsessful test was never performed.

![Unsuccessful Tests](https://i.imgur.com/0URS7YP.png)


## Automated Development

Using Terraform, I was able to provision hardware resources in concurrance with AWS infrastructure automatically. Ansible 
is then used to automatically install a list of programs; Docker, Docker-Compose, python-3, mysql-client, python-pytest,
aws-cli and Jenkins.

## Manual Development

After deployment the manual steps needed are outlined below: 

- Adding to the Ansible inventory with the new Jenkins and Test IP.
- SSH into the Jenkins VM and producing a new key pair with ssh-keygen
- login into jenkins using the initial admin password saved in /home/jenkins/.jenkins/secrets/initialAdminPassword
- SSH into the test VM and add jenkins key pair to the authorised keys list
- Logging into Jenkins using the initial admin password and the public IP:8080
- Setting up the jenkins pipeline and linking to PracticalProject in the pipeline

## Acknowledgmenets

I'd like to acknowledge Jay Grindrod, Reece Elder, Nathan Forester, Harry Volkner and all other cohorts who assited me.

## Author

Thomas Glynn
