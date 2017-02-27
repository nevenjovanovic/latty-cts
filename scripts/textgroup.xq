declare namespace ti = "http://chs.harvard.edu/xmlns/cts";
for $author in //*:titleStmt/*:author
return element ti:textgroup {
  element groupname {
    $author/*
  }
}