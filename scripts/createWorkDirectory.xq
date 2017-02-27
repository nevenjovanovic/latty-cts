let $groupUrn := doc("C:\Users\HCStudent\desktop\test\workIndex.xml")
for $x in $groupUrn//work/@groupUrn
let $y := substring-after(($x/../@urn), ".")
where not(matches($x, ":$") or matches($x, "#"))
return file:create-dir("C:\Users\HCStudent\desktop\test\"||substring-after($x, "urn:cts:latty:")||"\"||$y)
