declare function local:work-from-urn($cts){
  for $work in collection("latty-cts")//*:work[@urn=substring-before($cts, ".latty-lat")]
let $name := data($work//*:title)
return if ($name) then normalize-space($name) else "sine titulo"
};
for $cts in ("urn:cts:latty:aemilianus01.latty2570222.latty-lat1:", "urn:cts:latty:anonymus52384.latty2810377.latty-lat1:")
return local:work-from-urn($cts)