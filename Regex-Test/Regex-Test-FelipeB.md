# Regex Exam

##**Step 1**
Put the text inside a `<root> </root>` element manually.

##**Step 2**
Type `^(.+?)(\n\n)` and find all, then replace the results with `<sp>\1</sp>\2`
*A*- The reason we don't use *dot matches all* here is because it's function is to match a single
character without really caring what it is except for line breaking characters. But since we are
not really looking for that we just don't activate the *dot matches all* function.
*B*- We put the `\1` and `\2` because that tells regex to replace the first parenthesis with what
is in `\1` and the second parenthesis with what is in `\2`. This allows us to replace a specific part
of the text with the line of code that we want.

##**Step 3**
In order to find all the stage directions and dialogs we have to focus on the `( )` that contains the text
we want to code. Something like `\((.+?)\)`. Now we have all the stage directions highlighted and 
can replace that with a code like `<stage>\1</stage>`.

##**Step 4**
The good thing about the speakers in this file is that they all end in a colon `:`. So we can easily find 
them by doing `(<sp>)([A-Z].+:)`. The `<sp>` at the beginning is because they all come after the
`<sp>` brackets. Now that we have all the speakers separated we simply replace that with 
`\1<speaker>\2</speaker>`. See that we are using the `\1` and `\2` again because we want to wrap it correctly, first the opening `<speaker>` and then the closing `</speaker>`.
We don't use the *dot matches all* here because that will highlight the whole text instead of only the 
speaker which is what we are looking for.