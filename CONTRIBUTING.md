# Contributing to [The Algorithms - Julia](https://github.com/TheAlgorithms/Julia)

This document describes how to become a contributor to this repository. This will help you add new algorithms, correct issues and adding new fixes.

## Adding a new algorithm

New contributors should only have one PR per algorithm. We assume you have basic knowledge of [git](https://git-scm.org).

To get started [fork](https://help.github.com/articles/fork-a-repo) this repository. Then clone it:

through git:

	$ git clone https://github.com/<Your username>/Julia

through github cli:

	$ gh repo clone <Your username>/Julia

within Julia:

    ] dev https://github.com/TheAlgorithms/Julia

the source folder when cloning the repository within julia is located at `$HOME/.julia/dev/TheAlgorithms/Julia`

To keep your forked repository up to date, setup the `upstream` remote to pull in new changes

	$ git remote add upstream https://github.com/TheAlgorithms/Julia.git

	$ git pull --rebase upstream main

If you used github cli, there is already `upstream` remote so no need to do the thing above.

Things you should do is always create a new branch when adding a new algorithm (or any contribution):

	$ git checkout -b <name of issue or algorithm> main
	$ # do changes anew

You should never touch your `main` branch of your repository. Any mistake can lead to inconsistent history. You must always create a new branch for any changes you might want to add.

### Usual steps in adding the new algorithm

Put the algorithm in what you think is the right category in the `src` folder. For example, if it involves string manipulation, you should create a new file in `src/strings/<name of algorithm>`.

The following is self-explanatory and contributors **should** do the following:

Add documentation in the code. Documentation is great for people who want to check out the repo and read the code. It will give them an idea on how it works.

Add tests and fix any any issues. Adding tests to your algorithm will let us confirm that it works. Without tests, we cannot verify the function of the algorithm or if it works. To add your test, append it with other existing tests (but keep it separate) in the file named after the category within the `test` folder. For example, you should append the tests for `sieve of erastosthenes` with the other tests in `test/math.jl`.

If you have changes you need to commit, do the following commands:

	$ git add <file>
	$ git commit -m "<your message>"
	$ git push


## Did you find a bug?

- Please avoid opening issues asking to be "assigned” to a particular algorithm. This merely creates unnecessary noise for maintainers. Instead, please submit your implementation in a pull request and it will be evaluated by project maintainers.

## Do you have questions about the source code?

- Ask any questions about how to use the repository in the [The Algorithms room in Gitter](https://gitter.im/TheAlgorithms/community?source=orgpage#) or in the [Discord](https://discord.gg/c7MnfGFGa6) server.

That is all you need to know about the process. Now it is your turn to help us improve the repository; thank you!
