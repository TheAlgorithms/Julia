## How to contribute?

### Writing the Julian way

Although there is no systematic way to write Julia, some aspects of the language contribute to its popularity. As such, we invite our contributors to write and possibly write their contribution in an easy-to-read fashion. Example of existing algorithm within this repository and many others, starting with the julialang repository itself contains plethora of examples.

Some emblematic features of the languages follow.

##### multiple dispatch

One key feature of Julia is that it is possible to dispatch a function to different methods according to its signature, that is the number and type of its arguments.

<!-- TODO: give examples, invluding one using the Val(Symbol) trick -->


### Improve an existing algorithm

Pull Requests (PR) to an existing algorithm are welcome, especially in the following cases:
1. enhance the algorithm readability
1. improve efficiency (speed, allocations, accuracy)
1. provide a significant variation of the available algorithm(s), especially if historically or algorithmically relevant or innovative

We invite contributors to detail in the PR and in the documentation of the new function/method to detail those improvements.

### **Adding a new algorithm**

New contributors should only have one PR per algorithm

- Clone this repository:
  - within julia `] dev https://github.com/TheAlgorithms/Julia`, the source folder will appear in `/path/to/home/.julia/dev/TheAlgorithms`
  - through git `git clone https://github.com/TheAlgorithms/Julia`; or
  - through github cli `gh repo clone TheAlgorithms/Julia`.
- Describe the algorithm in the PR. Explain what it does.
- Add documentation in the code.
- Add tests and fix any CodeCov issues.
- We appreciate if you only have one commit of your PR as too many commits mess conversations within the PR.

### **Did you find a bug?**

- Please avoid opening issues asking to be "assigned” to a particular algorithm. This merely creates unnecessary noise for maintainers. Instead, please submit your implementation in a pull request and it will be evaluated by project maintainers.

### **Do you have questions about the source code?**

- Ask any questions about how to use the repository in the [The Algorithms room in Gitter](https://gitter.im/TheAlgorithms/community?source=orgpage#) or in the [Discord](https://discord.gg/c7MnfGFGa6) server.

That is all you need to know about the process. Now it is your turn to help us improve the repository; thank you!
