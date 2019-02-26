# docker-problem

I locate the problem a whole day and minimize the problem in the [Github](https://github.com/Eriice/docker-problem). 

When I mounted the host file to docker container, and enter to docker container then run `ls -lash` to see the file permission, It appears that file which from MacOS own by the `user` created by Dockerfile but the file which from Centos own by the `root`. It test at the same docker engine version(18.09.2) between MacOS and Centos7.6.

Is it a bug in docker?

![Test in MacOs](http://img.eriice.com/docker-question-github-mac.png)

![Test in Centos7.6](http://img.eriice.com/docker-question-github-centos.png)
