declare function local:urn-header($urn){
  let $doc := collection("latty-cts-idx")//doc[cts/urn=$urn]
let $xmlbase :=  $doc/@xml:base
let $textgroup := $doc/textgroup
let $work := $doc/work
return element div {
  element h1 { replace($xmlbase, ":$", "") },
  element h2 { $textgroup || " ― " || $work }
}
};
let $urn := "urn:cts:latty:aemilianus01.latty2570222.latty-lat1:body1.div5.lg2.l52"
return local:urn-header($urn)