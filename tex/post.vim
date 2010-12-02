:%s/^\\\([a-z].\{-}section\|section\|chapter\)\({.\{-}}$\)\n\\\pagereference\[bkm:RefHeading\(.\{-}.\)\]/\\\1[ref:\3]\2\r/

:%s/bkm:RefHeading/ref:/g
:%s/\\endinput//
:%s/^\\stopitemize\n\\startitemize\[1\]\n//
:%s/manualar-img/img/g
:%s/{\\md \(.\{-}.\)}/{\\bf \1}/g
:wq
