---
categories:
- docker
- tool
- pipeline
- jenkins
- yarn
- npm
- javascript
comments: true
date: 2017-03-03T11:09:28Z
title: 'Convert a project from npm to yarn'
---

At a  client, we're converting all projects (i.e., sites, services, libraries) from `npm` to `yarn`. Mostly for the speed (as it uses the internal cache).

## Step by step guide

  1. Install yarn in your local environment
    * https://yarnpkg.com/lang/en/docs/install/
  1.  Run `yarn install`
    * This will create a `yarn.lock` file
    * Add that file to the repo: `git add yarn.lock`
  1. Modify Dockerfile
    * Install yarn  (in the Dockerfile). Idea: shortcut this execution with `yarn --version` in case it is installed
    * Configure the PATH variable (ENV PATH ...)
    * `ADD yarn.lock`
    * Replace `npm install` with `yarn install`
  1. Modify pipeline
    * See example (below)
    * `install_yarn`. Idea: shortcut this execution with `yarn --version` in case it is installed
    * Replace `npm install` with `yarn install`
  1. Test it

## Jenkins

Build step: execute shell

```bash
function install_yarn {
  yarn --version || curl -o- -L https://yarnpkg.com/install.sh | bash
  export PATH="$HOME/.yarn/bin:$PATH"
}

install_yarn

yarn install
```

