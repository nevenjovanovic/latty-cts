for $ff in collection("data")//*:TEI
where $ff/*:teiHeader/*:fileDesc/*:titleStmt/*:author[contains(., 'nonym')]
return insert node attribute xml:id {replace("Anonymus"||generate-id($ff), "id", '')} into $ff/*:teiHeader/*:fileDesc/*:titleStmt/*:title