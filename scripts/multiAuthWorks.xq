for $multi in
for $ff in collection("data")//*:TEI
where $ff/*:teiHeader/*:fileDesc/*:titleStmt/*:author[2]
return $ff
let $id := $multi//*:titleStmt/*:title/@xml:id/string()
return file:write("C:\Users\HCStudent\desktop\test\"||$id, $multi)
