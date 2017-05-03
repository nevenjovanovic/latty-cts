declare function local:indexurns() {
(: list all URNs :)
for $t in collection("latty-cts")//*:text
let $texturns :=
for $id in $t//*[@n]
let $urnsubstring := string-join($id/ancestor-or-self::*[@n]/@n, ".")
let $baseurn2 := $id/ancestor::*:text/@xml:base
let $urn2 := $baseurn2 || $urnsubstring
return element cts { 
element urn { $urn2
},
element dbid {
  db:node-id($id)
}
}
return element doc {
  $texturns
}
};
let $list := element idx { local:indexurns() }
let $address := replace(file:parent(static-base-uri()), "scripts/", "indices/latty-cts-idx.xml")
return file:write($address , $list)