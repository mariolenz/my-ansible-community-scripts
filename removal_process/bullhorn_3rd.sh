#!/bin/bash
# bullhorn_3nd.sh collection community-topic version

if [ $# -ne 3 ]
then
    echo "usage: $0 collection_name community_topic ansible_version"
    exit 1
fi

echo "The \`$1\` collection [is considered unmaintained]($2) and will be removed from the Ansible Community Package (ACP) $3 if no one starts maintaining it again before ACP $3. See [the Ansible Community Package Collections Removal Process](https://docs.ansible.com/ansible/devel/community/collection_contributors/collection_package_removal.html#canceling-removal-of-an-unmaintained-collection).

Please note that you can still manually install the collection with \`ansible-galaxy collection install $1\` even when it has been removed from the Ansible Community Package."
