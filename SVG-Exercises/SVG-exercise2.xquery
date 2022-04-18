xquery version "3.1";
declare variable $ySpacer := 10;
declare variable $xSpacer := 30;

<svg width="1000" height="1000">
<g transform="translate(30, 600)">

{
let $ac := doc('/db/assassinsCreed/assassinscreedodyssey.xml')/script
let $sections := $ac/*
for $s at $pos in $sections
let $spkCount := $s//speaker ! normalize-space() => distinct-values() => count()
let $actions := $s//action => count()
return 
    (: concat($spks, ": ", $actions ):)
<g>
    <line x1="{$pos * $xSpacer}" x2="{$pos * $xSpacer}" y1="0" y2="-{$actions * $ySpacer}" stroke="purple" stroke-width="20"/>
    <line x1="{$pos * $xSpacer}" x2="{$pos * $xSpacer}" y1="0" y2="-{$spkCount * $ySpacer}" sroke="orange" stroke-width="20"/>
    <line x1="-10" x2="-10" y1="5" y2="-500" color="black" stroke="black" stroke-width="3"/>
    <line x1="-10" x2="1000" y1="5" y2="5" color="black" stroke="black" stroke-width="3"/>
    <text x="-30" y="-510" font-size="20">Speakers</text>
    <text x="400" y="30" font-size="20">Chapters</text>
    
</g>
}
</g>
</svg>