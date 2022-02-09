# Regex Excercise 4

**Step 1:** *Find all* `\n\n`, that will separate all paragraphs and will allow you to 
*replace* that with the `</sp>\0<sp>` tags. Now you have every "scene" separated into 
`<sp>` tags

**Step 2:** *Find all* the directing stages that are in between brackets [ ]. Type `\[(.+?)\]`
and click *finad all*. Then *replace all* with `<stage>\1</stage>`

**Step 3:** *Find all* the speakers name that end in a `<stage>` tag by writing `(<sp>)([A-Z][^:]+?)(<stage>)`.
Then *replace* that with `\1<speaker>\2</speaker>\3`. That will put all the speakers names that end in a `<stage>` inside a `<speaker>` tag.

**Step 4:** Lastly, find the speakers name that end in a `:` by finding `(<sp>)([A-Z].+:)`. Then again *replace* that with `\1<speaker>\2</speaker>`.
So now all the speakers names will be inside the `<speaker>` tag no matter if they are followed by a `:` or a `<stage>` tag.

