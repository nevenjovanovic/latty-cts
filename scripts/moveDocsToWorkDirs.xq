for $work in //*:TEI
for $key in data($work/*:teiHeader/*:fileDesc/*:titleStmt/*:author/@key)
where not(matches($key, "#"))
return $key
(:return file:write("C:\Users\HCStudent\desktop\test\"||$key||"\"||".xml", $work):)