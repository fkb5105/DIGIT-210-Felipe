# Regex Excersice 2
## Shakespare sonnets

**Step 1**: Put all the lines in the `<line>` tag. By using the `.+` element in the find and replace tool

**Step 2**: Separate the chapter numbers into different tags. 
First, find all the chapter numbers with `<line>([IVXLC]{2,})</line>`
Second replace it with `<sonnet>\1</sonnet>`
