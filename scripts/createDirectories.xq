for $tg in //*:titleStmt/*:author/@key
return file:create-dir("C:\Users\HCStudent\desktop\test2\"||data($tg))