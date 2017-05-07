declare function local:open-urn($urn){
  let $node := collection("latty-cts-idx")//cts[urn=$urn] 
  let $dbid := xs:int($node/dbid/string())
  return if ($node) then db:open-id("latty-cts", $dbid) else element p { "Not a valid URN in the latty-cts collection!" }
};
local:open-urn("urn:cts:latty:anonymus52303.latty2810362.latty-lat1:body2")