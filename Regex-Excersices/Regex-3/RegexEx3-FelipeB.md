# Regex Excersice 3

##Dracula

**First step:** Put all the lines from the paragraphs in the `<p>` tag by using the `.+?` element.

**Second step:** Fand all the chapter numbers and separate the into a `<heading` tag.
*Find all* the chapter numbers with `<line>\n?([A-Z]{2,}\s.+?)</line>`.
Then *replace all* them with `<heading>\1</heading>`. 
