Whitespace is an imperative, stack-based esoteric programming language that uses whitespace characters for computation:
- [space] or " " (ASCII 32)
- [tab] or "\t" (ASCII 9)
- [line-feed] or "\n" (ASCII 10)

Its commands are written as an instruction modification parameter (IMP) followed by an operation related to that particular IMP, and then by parameters should the operation require them.

There are 5 IMP sequences:
| IMP | Meaning |
| --------- | ------------- |
| [space] | Stack manipulation |
| [tab][space] | Arithmetic |
| [tab][tab] | Heap access |
| [line-feed] | Flow control |
| [tab][line-feed] | I/O |
