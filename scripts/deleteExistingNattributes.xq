for $n in //*:TEI/*:text//*[@n]
let $n2 := $n/@n
return delete node $n2