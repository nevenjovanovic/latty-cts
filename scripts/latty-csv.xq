let $csv := element csv {
let $nodenames := ("head", "p", "l", "lg", "note", "stage", "sp", "castList", "quote", "opener")
for $t in //*:text
let $id := $t/@xml:base
let $label := collection("latty-cts")//*:edition[@urn=$id]//*:label
for $p in $t//*:div/*[name()=$nodenames]
let $text := data($p)
return element row {
  element id { $id || string-join(data($p/ancestor-or-self::*[@n]/@n), ".") },
element text {
  normalize-space($text)
},
element label { data($label) } }
}
return csv:serialize($csv)