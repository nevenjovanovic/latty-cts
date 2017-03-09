declare namespace tei="http://www.tei-c.org/ns/1.0";
declare namespace functx = "http://www.functx.com";
declare function functx:path-to-node
  ( $nodes ) {
$nodes/string-join(ancestor-or-self::*[not(name()="TEI" or name()="text")]/name(.), "/tei:")
 } ;
 declare function local:nodecount($path){
(: $count is the maximum number of levels :)
let $count := count(tokenize($path, "/"))
let $sequence := 
  for $e at $pos in tokenize($path, "/")
  let $pp := "*[@n='$" || $pos || "']"
  return $pp
return string-join($sequence, "/")
};

(: get distinct paths in the collection :)
(: below TEI/text :)
declare function local:getdistinctpaths($file){
  let $paths :=
    let $cr := db:open("lattydata", $file)
    let $els := for $e in $cr/*:TEI/*:text//*
          return functx:path-to-node($e)
    return distinct-values($els)
  for $p in $paths
  let $length := count(tokenize($p, "/"))
  let $newpath := local:nodecount($p)
  order by $length descending
  return $newpath
  
};
for $f in //*:TEI
let $file := db:path($f)
return local:getdistinctpaths($file)
 