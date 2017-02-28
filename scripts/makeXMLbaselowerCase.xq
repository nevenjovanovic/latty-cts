for $base in //*:text/@xml:base
where matches($base, "[A-Z]")
return replace value of node $base with lower-case ($base)