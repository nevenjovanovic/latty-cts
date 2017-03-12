declare namespace ti="http://chs.harvard.edu/xmlns/cts";
for $tg in //ti:textgroup
return validate:rng-report($tg,"/home/neven/rad/latty-cts/schemas/textgroup.rng")