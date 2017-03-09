for $f in //*:TEI/*:text//*
let $name := $f/name()
return $name||(count($f/preceding-sibling::*/$name)+1)