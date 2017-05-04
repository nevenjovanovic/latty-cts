element h2 {},
element ol {
let $urn := "urn:cts:latty:sperges01.latty2718834.latty-lat1"
let $doc := collection("latty-cts-idx")//doc[contains(@xml:base, $urn)]
for $cts in $doc//cts
let $urn := $cts/urn/string()
return element li { element a {
  attribute href { "http://croala.ffzg.unizg.hr/basex/lattycts/" ||  $urn },
  $urn
}
}
}