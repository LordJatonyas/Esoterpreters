# Whitespace Interpreter
## What's Whitespace?
Whitespace is an imperative, stack-based esoteric programming language that uses whitespace characters for computation:
- [space] or " " (ASCII 32)
- [tab] or "\t" (ASCII 9)
- [line-feed] or "\n" (ASCII 10)

Its commands are written as an instruction modification parameter (IMP) followed by an operation related to that particular IMP, and then by parameters should the operation require them.

## Syntax[^1]
There are 5 IMP sequences:
| IMP | Meaning |
| --------- | ------------- |
| [space] | Stack manipulation |
| [tab][space] | Arithmetic |
| [tab][tab] | Heap access |
| [line-feed] | Flow control |
| [tab][line-feed] | I/O |

... and quite a few (24) operations:

**Stack manipulation *(IMP: [space])***
| Operator | Parameter | Meaning |
| ------------- | ----------- | ------------- |
| [space] | integer | Push the integer onto the stack |
| [line-feed][space] | - | Duplicate the top item on the stack |
| [tab][space] | integer | Copy the nth item on the stack onto the top of the stack |
| [line-feed][tab] | - | Swap the top two items on the stack |
| [line-feed][line-feed] | - | Discard the top item on the stack |
| [tab][line-feed] | integer | Slide n items off the stack, keeping the top item |

**Arithmetic *(IMP: [tab][space])***
| Operator | Parameter | Meaning |
| ------------- | ----------- | ------------- |
| [space][space] | - | Addition |
| [space][tab] | - | Subtraction |
| [space][line-feed] | - | Multiplication |
| [tab][space] | - | Integer Division |
| [tab][tab] | - | Modulo |

**Heap access *(IMP: [tab][tab])***
| Operator | Parameter | Meaning |
| ------------- | ----------- | ------------- |
| [space] | - | Store in heap |
| [tab] | - | Retrieve from heap |

**Flow control *(IMP: [line-feed])***
| Operator | Parameter | Meaning |
| ------------- | ----------- | ------------- |
| [space][space] | label | Mark a location in the program |
| [space][tab] | label | Call a subroutine |
| [space][line-feed] | label | Jump to a label |
| [tab][space] | label | Jump to a label if the top of the stack is 0 |
| [tab][tab] | label | Jump to a label if the top of the stack is negative |
| [tab][line-feed] | - | End a subroutine and transfer control back to caller |
| [line-feed][line-feed] | - | End the program |

**I/O *(IMP: [tab][line-feed])***
| Operator | Parameter | Meaning |
| ------------- | ----------- | ------------- |
| [space][space] | - | Output the character at the top of the stack |
| [space][tab] | - | Output the number at the top of the stack |
| [tab][space] | - | Read a character and place it in the location given by the top of the stack |
| [tab][tab] | - | Read a number and place it in the location given by the top of the stack |

In cases where commands expect a parameter, **[space] = 0 and [tab] = 1, and the bit string gets terminated by a [line-feed] character**.

[^1]: [Whitespace tutorial](https://web.archive.org/web/20150618184706/http://compsoc.dur.ac.uk/whitespace/tutorial.php)
