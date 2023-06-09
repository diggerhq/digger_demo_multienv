# Digger Demo

A demo repository for [Digger](https://github.com/diggerhq/digger) - an open-source alternative to Terraform Cloud

To see Digger, you need:
- digger.yml file at the root of the repo
- workflow file for Github Actions

# Demo steps
1. Make a change to any terraform file under /dev or /prod
2. Create a pull request
3. An action will start
4. A "lock acquired" comment to the PR
5. A plan output will be also posted to the PR
6. Create another PR with a different change (under the same project)
7. A "failed to acquire lock" comment will be posted to the PR
