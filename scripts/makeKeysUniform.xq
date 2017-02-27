for $author in collection("data")/*:TEI/*:teiHeader/*:fileDesc/*:titleStmt/*:author[contains(@key, ".")]
let $authKey := lower-case(substring-after($author/@key, "."))
return replace value of node $author/@key with $authKey