# Concrete development workflow and tools

In order of importance, roughly.

## Your development process should be repeatable

This means a collaborator (or future you) should be able to:

1.  Spin up a new development environment with all the dependencies (this is a continuum, with \"How To\" docs at on end and Docker build files at the other)
2.  Understand what your code does
3.  Recreate your files
4.  Recreate your analyses
5.  Distinguish between raw and processed data
6.  Prove your code does what it claims to do

## Testing and Validation

How do you know your code does what you say it does? A taxonomy of testing strategies, from simple to complex:

1.  Defensive coding
    1.  Assume your inputs are bad, and include tests of input correctness in your code.
    2.  Use `assert` statements (sparingly) for things that should never break.
2.  Unit tests: Can be overkill (not enough return for time invested). Many languages have unit test libraries as part of their core offering (e.g., Java, Python). Use selectively for:
    1.  Input validation
    2.  Calculation validation
    3.  Places where the code tends to change a lot
3.  Integration testing: The sweet spot for small-to-medium projects. For example:
    1.  Start with a vetted sample input file
    2.  Generate intermediate data and compare to known intermediate data
    3.  Run analyses and compare results to known results
    4.  Write results to output and compare with known output file (this is different than 3!)

### The metaphysics of integration/system testing

1.  What are the theoretically possible workflow paths?
2.  Which ones are implemented? If you pull on this thread, you will discover that your code implements many partial workflows. This is a huge source of confusion for future users and maintainers. When you discover a partial workflow, you can clean up and/or reorganize in one of three ways:
    1.  Finish implementing the complete workflow
    2.  Strip out the workflow entirely. This usually requires more work than the alternatives.
    3.  Explicitly stub out the un-implemented parts. The simplest way to do this is to leave comments: \"X, Y, Z cases aren\'t handled yet. When you try them, we attempt to return an informative error.\"
3.  Which ones are tested?

## Version Control

Version control preserves a record of your changes over time.

![](./img/snapshots.png)

Version control allows you to fearlessly collaborate.

![](./img/branch-merge.png)

### Version control in practice

1.  One branch should always be deliverable, working code. Typically this is \"main\".
2.  New work happens on development branches.
3.  Merge new work using a \"general and lieutenants\" workflow:
    -  Developer (\"lieutenant\") pushes development branch to shared repository.
    -  Project lead (\"general\") merges development branch into main branch, or talks to developer if there\'s a conflict.
4.  Everyone comments their commits.
5.  There are many possible workflows; the more your team knows, the more options you have.

## Issue Tracking

### Key features

1.  Issue title
2.  Issue description
3.  Issue creator
4.  Current assignee
5.  Status
6.  Dates (created, resolved, closed, re-opened)
7.  Comments
8.  Topic tags, version tags, etc
9.  Version control integration (\"fixed by commit X\"; this is a nice-to-have but not necessary feature)
10. Support for searching, filtering, and sorting

### Many options

Github, Trello, Microsoft Planner, Airtable, Jira, Fossil, Trac...

### Demo

Github, because you\'re probably already using it.

## Dependency management and environment management by language

Broadly speaking, you want to be able to set up a self-contained environment that contains all of your weird dependencies, such that you can tear it down and rebuild it if something goes wrong.

![](./img/python_environment_2x.png)
[xkcd comic](<https://xkcd.com/1987/)

### Python

1.  Conda package manager and environments [see example here](https://github.com/devnich/catalina-setup#install-python-anaconda-distribution)
2.  Pip and virtualenv

### R

1.  [renv](https://rstudio.github.io/renv/articles/renv.html)
2.  Read about additional options [here](https://github.com/DataCurationNetwork/data-primers/blob/master/R%20Data%20Curation%20Primer/R-data-curation-primer.md)

### SQL

Integrates with almost every language; check your language docs for usage information.

### Parallel concerns for other languages

### When does it make sense to use containers?

Containers and VMs add an additional maintenance and testing burden. It may still make sense to use them if:

1.  Your code needs to run on a remote environment (e.g. UCSD Supercomputing). In this case, using a container for setup and teardown may ultimately save time.
2.  You need to repeatedly recreate a computing environment.

## Deployment

Where is the lever I pull to make this go? If you have an answer for dependency management, the deployment (i.e., automatic recreation of your code in its environment) is trivial.

1.  Packaged environment and dependencies
    1.  .condarc
    2.  environment.yml file
2.  Description of environment and dependencies (otherwise how will we debug?)
    1.  git version
    2.  python version
    3.  shell type (bash, zsh, sh, dash, powershell)
    4.  Have you tested this on Windows? I see by your face that you haven\'t.
3.  You can solve this problem with Docker!
    1.  Now you have two problems.
    2.  Containerizing more likely to pay off in circumstances where you have to deploy to the cloud anyway (e.g., you are building and tearing down instances at UCSD Supercomputing)

## How do we know when we\'re done?

1.  General enough
2.  Robust enough
3.  Extensible enough
4.  Tested enough
