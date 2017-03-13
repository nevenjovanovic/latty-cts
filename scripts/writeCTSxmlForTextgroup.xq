declare namespace ti = "http://chs.harvard.edu/xmlns/cts";
for $base in //*:text/@xml:base
let $base2 := substring-after($base, "urn:cts:latty:")
let $base3 := tokenize ($base2, "\.")
let $key := $base3[1]
let $author := $base/ancestor::*:TEI//*:titleStmt/*:author/*
let $tg := element ti:textgroup {
  attribute urn {"urn:cts:latty:"||$key},
  element ti:groupname {
    attribute xml:lang {"lat"}
    $author
  }
}
return file:write("C:\Users\HCStudent\desktop\latty-cts\data\"||$key||"\__cts__.xml", $tg)