#!/usr/bin/python
# coding: utf-8
# Author: Mario Lenz <m@riolenz.de>
# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)
# SPDX-License-Identifier: GPL-3.0-or-later
# SPDX-FileCopyrightText: Ansible Project, 2022
"""Show unchanged dependencies between Ansible versions."""

import argparse


def get_dependencies(version):
    dependencies = {}
    major_version = version.split('.')[0]
    with open('%s/ansible-%s.deps' % (major_version, version)) as f:
        for line in f:
            dependency = line.strip().split(':')
            dependencies[dependency[0]] = dependency[1].strip()
    return dependencies


def compare_dependencies(dependencies1, dependencies2):
    for dependency in dependencies1:
        if dependency in dependencies2:
            if dependencies1[dependency] == dependencies2[dependency]:
                print(dependency)


def main():
    parser = argparse.ArgumentParser(description='Show unchanged dependencies between Ansible versions.')
    parser.add_argument('version1', help='first version for the comparison')
    parser.add_argument('version2', help='second version for the comparison')
    args = parser.parse_args()
    dependencies1 = get_dependencies(args.version1)
    dependencies2 = get_dependencies(args.version2)
    compare_dependencies(dependencies1, dependencies2)


if __name__ == '__main__':
    main()
