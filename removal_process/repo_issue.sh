#!/bin/bash
# repo_issue.sh collection community-topic version

if [ $# -ne 3 ]
then
    echo "usage: $0 collection_name communiy_topic ansible_version"
    exit 1
fi
echo "Unmaintained collection: Removal from the Ansible Community Package

It looks like this collection is effectively unmaintained. According to the current [Ansible Community Package Collections Removal Process](https://docs.ansible.com/ansible/devel/community/collection_contributors/collection_package_removal.html#identifying-and-removing-an-unmaintained-collection-that-has-not-been-deprecated-by-its-maintainers), we will consider removing it in a future version of the Ansible Community Package. Please see [Unmaintained collection: $1]($2) for more information.

At least one month after this announcement appears here and on [Bullhorn](https://forum.ansible.com/c/news/bullhorn/17), the Ansible Community Steering Committee will vote on whether this collection is considered unmaintained and will be removed, or whether it will be kept. If it will be removed, this will happen earliest in Ansible $3. Please note that people can still manually install the collection with \`ansible-galaxy collection install $1\` even when it has been removed from the Ansible Community Package."
