# Answer the following questions

## How would you update a concrete artifact inside the web server layer?

In order to be able to modify elements of the code referring to the web environment, the code layer of the configuration layer has been extradited, in this way the code can be edited without having to touch the configuration files. In development environment the code is in a volume external to the image, this way it can be modified without the need to make a build each time modifications are saved.
Regarding the configuration of the web layer, a configuration file has been generated for the service and another for the configuration of the virtualhost or upstream. In this way it is easier to make changes to these files and avoid errors.

## How would you assure HA for the whole application?

1- Using monitoring tools, for example prometheus, increase cluster nodes and add new web layer services

2- In order to assure HA the first thing that should be done is to extract the mysql to a dedicated server and that can be replicated on demand traffic. Create Database Cluster.

3- If possible, set up a horizon autoscale file, similar to the one kubernetes has, that allows autoscaling services according to the load at all times.

## How would you improve your solution? Mention next steps to be considered.

1-  For a production environment it would be better to use a database server external to service, such as an RDS or Cloud SQL or a dedicated server. Using a database instance will allow us to obtain performance improvements.

2- In the Jenkins file I use the build_id variable, this one comes from Jenkins, it would be better to use a git tag or the git_commit to tag the image.

3- Having secrets in the code repository is not good practice. It is better to have them in an external repository code or in some tool for example Vault.

4- If for most applications you are going to use the same base configuration of web layer (nginx or apache) it would be good to generate an image with the basic configuration and in this way not drag it every time in each code repository.

5- If the repositories follow the same pattern it is not a bad idea to generate a generic JenkinsFile and that the JenkinsFiles of the repositories call the generic file.

6- Using tools like Ansible will allow us to generate a configuration file in yml and use it to generate a new docker-compose file for production.

7- JenkinsFile notifies an external tool, for example slack, if the job was successfully completed or failed.
