# dr_Quine

This project approaches the auto replication problem and the Kleene recursion theorem.
It consists in three different programs which have to autoreplicate themselves, each program is implemented in C, ASM x86 and Python.

## Project Overview

### Colleen

- **Executable Name:** Colleen
- **Functionality:** Outputs its own source code when executed.
- **Source Code Requirements:**
  - Must contain a `main` function.
  - Must have at least two different comments.
  - One comment must be in the `main` function.
  - One comment must be outside of the program.
  - Another function, besides `main`, must be defined and called.

### Grace

- **Executable Name:** Grace
- **Functionality:** Writes its source code into a file named `Grace_kid.c/Grace_kid.s` when executed.
- **Source Code Requirements:**
  - No `main` function declared.
  - Must contain three defines only.
  - Must have one comment.
  - Program runs by calling a macro.

### Sully

- **Executable Name:** Sully
- **Functionality:** Writes a file named `Sully_X.c/Sully_X.s` and compiles/runs it (X is an integer, initially set to 5).
- **Stopping Condition:** Executes only if X > 0.
- **Integer in Source Code:** An integer present, decrements on each execution.
- **Constraints:** No specific constraints on the rest of the source code.


## Kleene Recursion Algorithm

The Kleene recursion algorithm, inspired by Stephen Kleene's work, enables the creation of a program that replication their own source code, which is also called a quine.

### How it Works

1. **Self-reference:** The quine embeds its own source code within its program. This is achieved by a technique where the program manipulates its own source code during runtime. This is done by using placeholders within the code which are replaced with actual code snippets.

2. **Fixed Points:** In mathematics fixed points are velues that not change under a given transformation.

	For example:  
	**x = x^2^ − 4x + 3**, the value **1** is a fixed point, indeed **f(1) = 1**.

	It's exactly the same idea in computer science, once the code is 		executed, the output is exactly the code itself.

3. **Recursion:** The algorithm iterates recursively, applying transformations to the code. By seeking fixed points in each iteration, it gradually converges to a stable state where the code reflects itself.

## Author

[Archibald Thirion](https://github.com/Archips)  


