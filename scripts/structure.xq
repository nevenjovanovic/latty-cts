let $workIndex := element index {
  for $base in //*:text/@xml:base
  let $base2 := substring-after($base, "urn:cts:latty:")
  let $base3 := tokenize ($base2, "\.")
  let $title := data($base/ancestor::*:TEI//*:titleStmt/*:title)
  let $title2 := substring-before($title, ",")
  let $structure := element work {
    attribute groupUrn {"urn:cts:latty:"||$base3[1]},
    attribute urn {"urn:cts:latty:"||$base3[1]||"."||$base3[2]},
    attribute xml:lang {"lat"},
    element title { 
      attribute xml:lang {"lat"}, $title2
    }, element edition {
      attribute workUrn {"urn:cts:latty:"||$base3[1]||"."||$base3[2]},
      attribute urn {$base},
      element label {
        attribute xml:lang {"lat"}, $title
      }, element description {
        attribute xml:lang {"eng"}, "test description"
      }
    }  
  }
  return $structure
}
return file:write("C:\Users\HCStudent\desktop\test2\workIndex", $workIndex)