for $base in //*:text/@xml:base
let $base2 := replace ($base, "lattyid", "latty")
return replace value of node $base with $base2
