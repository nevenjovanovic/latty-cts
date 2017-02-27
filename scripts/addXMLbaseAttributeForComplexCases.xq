for $text in//*:TEI//*:text[not(@xml:base)]
let $key := data($text/..//*:titleStmt/*:title/@xml:id)
let $work := ".latty"||generate-id($text)
let $baseVar := attribute xml:base{"urn:cts:latty:"||$key||$work||".latty-lat1:"}
return insert node $baseVar into $text