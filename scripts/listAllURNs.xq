declare function local:listurns() {
(: list all URNs :)
for $t in collection("latty-cts")//*:text
let $baseurn := element h1 { replace($t/@xml:base, ":$", "") }
let $texturns :=
for $id in $t//*[@n]
let $urnsubstring := string-join($id/ancestor-or-self::*[@n]/@n, ".")
let $baseurn2 := $id/ancestor::*:text/@xml:base
let $urn2 := $baseurn2 || $urnsubstring
return element li { 
element a { 
attribute href { $urn2 } , $urn2
}
}
return (
  $baseurn ,
  element ol {
  $texturns
}
)
};
local:listurns()