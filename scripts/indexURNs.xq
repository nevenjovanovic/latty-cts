import module namespace latty = "http://www.ffzg.unizg.hr/klafil/latty" at "repo/latty.xqm";

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
let $baseurn3 := $t/@xml:base
return element doc {
  $baseurn3 ,
  element textgroup { latty:textgroup-from-urn(data($baseurn3)) },
  element work { latty:work-from-urn(data($baseurn3)) },
  $texturns
}
};
let $list := element idx { local:indexurns() }
let $address := replace(file:parent(static-base-uri()), "scripts/", "indices/latty-cts-idx.xml")
return file:write($address , $list)