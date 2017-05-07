for $doc in collection("latty-cts-idx")//doc
let $baseurn := replace($doc/@xml:base, ":$", "")
return element div {
  element h2 { $baseurn } ,
  let $cts := count($doc//cts)
  return element p { 
  element a {
    attribute href { "http://croala.ffzg.unizg.hr/basex/lattycts/" || $baseurn  },
    $cts
  }
}
}