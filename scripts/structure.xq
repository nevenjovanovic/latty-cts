element index {
for $title in //*:titleStmt/*:title
let $key := "urn:cts:latty:"||$title/following-sibling::*:author[1]/@key
let $work := $key||".latty"||generate-id($title)
let $edition := $work||".lat1"
let $titleText := data($title)
let $structure := element work { 
attribute groupUrn {$key},
attribute urn {$work},
attribute xml:lang {"lat"},
  element title {
    attribute xml:lang {"lat"},
     substring-before($titleText, ", versio electronica")
  }, element edition { 
  attribute workUrn {$work},
    attribute urn {$edition},
    element label { attribute xml:lang {"lat"}, $titleText }, 
    element description{ attribute xml:lang {"eng"}, "test description"}
  }
}
return $structure }