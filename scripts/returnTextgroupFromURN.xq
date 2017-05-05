declare function local:textgroup-from-urn($cts){
  for $textgroup in collection("latty-cts")//*:textgroup[@urn=substring-before($cts, ".")]
let $name := data($textgroup//*:groupname)
return if ($name) then normalize-space($name) else "Anonymus"
};
for $cts in ("urn:cts:latty:aemilianus01.latty2570222.latty-lat1:", "urn:cts:latty:anonymus52384.latty2810377.latty-lat1:")
return local:textgroup-from-urn($cts)