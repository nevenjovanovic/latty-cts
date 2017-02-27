for $name in 
let $values := 
for $tg in doc("C:\Users\HCStudent\desktop\test\whatever")//*:textgroup/groupname/dirname
return if ($tg/text() = "#anonymus") then replace($tg/text(), "#", "")||replace(generate-id($tg), "id", "") else $tg/text()
return distinct-values($values)
return file:create-dir("C:\Users\HCStudent\desktop\test\"||$name)