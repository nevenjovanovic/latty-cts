for $text in //*:TEI[//*:author[@key] and not(//*:author[2]) and not(//*:author[contains(@key, "#")])]//*:text
let $key := $text/..//*:author/@key
let $work := ".latty"||generate-id($text)
let $baseVar := attribute xml:base{"urn:cts:latty:"||$key||$work||".latty-lat1:"}
return insert node $baseVar into $text