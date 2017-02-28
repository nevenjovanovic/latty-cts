for $base in //*:text/@xml:base
let $base2 := substring-after($base, "urn:cts:latty:")
let $base3 := tokenize ($base2, "\.")
return file:create-dir ("C:\Users\HCStudent\Desktop\test2\"||$base3[1])