# RPM Building

Package management in RedHat - learning and development

This repository contains learning and development activities for managing software installation using the RedHat Package Management system.

It uses Github Actions to build RPMs defined within the repository and install RPMs to test their validity.

## Tutorials and Documentations

### RPM

* https://fedoraproject.org/wiki/How_to_create_a_GNU_Hello_RPM_package
* https://www.golinuxcloud.com/how-to-create-rpm-package-in-linux/
* https://www.thegeekstuff.com/2015/02/rpm-build-package-example/
* https://linuxconfig.org/how-to-create-an-rpm-package
* https://rogerwelin.github.io/rpm/rpmbuild/2015/04/04/rpmbuild-tutorial-part-1.html

### Github Actions

* https://docs.github.com/en/actions
* https://docs.github.com/en/actions/getting-started-with-github-actions
* https://github.com/features/actions

### Github Docker

Github actions run on ubuntu linux hosts, which use a different package management system from the debian community.
In order to run RedHat package management, a RedHat derivative distribution is required, such as CentOS or Fedora.
This can be run within a Docker container.

* https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action

The github action
* https://github.com/MetOffice/rpmbuilding/blob/master/.github/workflows/simpleHelloDocker.yml
calls and example action within a Centos container, as defined within
* https://github.com/MetOffice/rpmbuilding/tree/master/simpleHelloDocker
demonstrating the setup of the container.

A new action, using a new folder with an adapted action.yml (always use this filename) and entrypoint.sh script can be defined using this template.
