for $anon in
for $ff in collection("data")//*:TEI
where $ff/*:teiHeader/*:fileDesc/*:titleStmt/*:author[contains(., 'nonym')]
return $ff
let $id := $anon//*:titleStmt/*:title/@xml:id/string()
return file:write("C:\Users\HCStudent\desktop\test\"||$id, $anon)