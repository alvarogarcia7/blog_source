---
categories:
- tip
- bash
- pipe
- failure
- exit-code
- exit-status
- code
- feature-toggle
comments: true
date: 2015-10-02T08:53:29Z
title: 'Tip: Propagate the failure in bash'
---

In bash, the usual behavior is to return the last status code:

```bash
bash-3.1$ tr
tr: two strings must be given when translating
bash-3.1$ echo $?
1
```

But this also applies to pipes:

```bash
bash-3.1$ tr|tee 1.txt
tr: two strings must be given when translating
bash-3.1$ echo $?
0
```

Should you want to pass the non-zero (error) status code to the next operation, use this feature toggle: ``set -o pipefail``

```bash
bash-3.1$ set -o pipefail
bash-3.1$ tr|tee 1.txt
tr: two strings must be given when translating
bash-3.1$ echo $?
1
```

This might be useful if you stop on a non-zero status (``set -e``).

## Set Builtin Reference

Reference from the [Set Builtin](https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html#The-Set-Builtin):

### -e

>-e
>
>Exit immediately if a pipeline (see Pipelines), which may consist of a single simple command (see Simple Commands), a list (see Lists), or a compound command (see Compound Commands) returns a non-zero status. The shell does not exit if the command that fails is part of the command list immediately following a while or until keyword, part of the test in an if statement, part of any command executed in a && or || list except the command following the final && or ||, any command in a pipeline but the last, or if the command’s return status is being inverted with !. If a compound command other than a subshell returns a non-zero status because a command failed while -e was being ignored, the shell does not exit. A trap on ERR, if set, is executed before the shell exits.
>
>This option applies to the shell environment and each subshell environment separately (see Command Execution Environment), and may cause subshells to exit before executing all the commands in the subshell.
>
>If a compound command or shell function executes in a context where -e is being ignored, none of the commands executed within the compound command or function body will be affected by the -e setting, even if -e is set and a command returns a failure status. If a compound command or shell function sets -e while executing in a context where -e is ignored, that setting will not have any effect until the compound command or the command containing the function call completes.

### -o pipefail

>-o pipefail
>
>If set, the return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. This option is disabled by default.