let $workIndex := doc("C:\Users\HCStudent\desktop\test2\workIndex")
for $work in $workIndex//work
let $workUrn := $work/@urn
let $x := substring-after(($workUrn), "urn:cts:latty:")
let $y := replace($x, "\.([^\.]+)", "\\$1")
return file:write("C:\Users\HCStudent\desktop\test2\"||$y||"\__cts__.xml", $work)