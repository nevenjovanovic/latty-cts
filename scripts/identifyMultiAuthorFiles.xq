for $ff in collection("data")//*:TEI
where $ff/*:teiHeader/*:fileDesc/*:titleStmt/*:author[2]
return insert node attribute xml:id {replace("multiAuthor"||generate-id($ff), "id", '')} into $ff/*:teiHeader/*:fileDesc/*:titleStmt/*:title