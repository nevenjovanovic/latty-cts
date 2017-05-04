for $doc in collection("latty-cts-idx")//doc
return element ol {
  for $cts in $doc//cts
  let $urn := $cts/urn/string()
  return element li { 
  element a {
    attribute href { "http://croala.ffzg.unizg.hr/basex/lattycts/" || $urn  },
    $urn
  }
}
}