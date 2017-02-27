for $author in //*:titleStmt/*:author
let $dirname := data($author/@key)
let $tg := element textgroup {
  attribute urn {"urn:cts:latty"||$dirname},
  element groupname {
    $author/*
  }
}
return file:write("C:\Users\HCStudent\desktop\test2\"||$dirname||"\__cts__.xml", $tg)