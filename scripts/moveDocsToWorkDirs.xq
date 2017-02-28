for $base in //*:text/@xml:base
let $base2 := substring-after($base, "urn:cts:latty:")
let $base3 := tokenize ($base2, "\.")
return file:write ("C:\Users\HCStudent\Desktop\test2\"||$base3[1]||"\"||$base3[2]||"\"||substring-before($base2, ":")||".xml", $base/ancestor::*:TEI)