for $tg in doc("C:\Users\HCStudent\desktop\test\whatever")//*:textgroup[not(groupname/dirname/text()="#anonymus")]
let $dirname := $tg/groupname/dirname/text()
let $tgnew := element textgroup {
  attribute urn {"urn:cts:latty:"||$dirname},
    $tg/*}
return file:write("C:\Users\HCStudent\desktop\test\"||$dirname||"\__cts__.xml", $tgnew)