declare namespace ti = "http://chs.harvard.edu/xmlns/cts";
let $workIndex := element index {
  for $base in //*:text/@xml:base
  let $base2 := substring-after($base, "urn:cts:latty:")
  let $base3 := tokenize ($base2, "\.")
  let $title := data($base/ancestor::*:TEI//*:titleStmt/*:title)
  let $title2 := substring-before($title, ",")
  let $structure := element ti:work {
    attribute groupUrn {"urn:cts:latty:"||$base3[1]},
    attribute urn {"urn:cts:latty:"||$base3[1]||"."||$base3[2]},
    attribute xml:lang {"lat"},
    element ti:title { 
      attribute xml:lang {"lat"}, $title2
    }, element ti:edition {
      attribute workUrn {"urn:cts:latty:"||$base3[1]||"."||$base3[2]},
      attribute urn {$base},
      element ti:label {
        attribute xml:lang {"lat"}, $title
      }, element ti:description {
        attribute xml:lang {"eng"}, "test description"
      }
    }  
  }
  return $structure
}
return file:write("C:\Users\HCStudent\desktop\latty-cts\workIndex", $workIndex)