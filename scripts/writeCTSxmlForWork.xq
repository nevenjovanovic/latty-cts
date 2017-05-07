declare namespace ti = "http://chs.harvard.edu/xmlns/cts";
let $workIndex := doc("C:\Users\HCStudent\desktop\latty-cts\workIndex")
for $work in $workIndex//ti:work
let $workUrn := $work/@urn
let $x := substring-after(($workUrn), "urn:cts:latty:")
let $y := replace($x, "\.([^\.]+)", "\\$1")
return file:write("C:\Users\HCStudent\desktop\latty-cts\data\"||$y||"\__cts__.xml", $work)