let $workIndex := doc("C:\Users\HCStudent\desktop\test\workIndex.xml")
for $work in $workIndex//work
let $workUrn := $work/@urn
let $x := substring-after(($workUrn), "urn:cts:latty:")
where not(matches($x, "#")) and matches($x, "01.latty")
let $y := replace($x, "\.([^\.]+)", "\\$1")
return file:write("C:\Users\HCStudent\desktop\test\"||$y||"\__cts__.xml", $work)
