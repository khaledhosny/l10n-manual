:%s/^\\\([a-z].\{-}section\|section\|chapter\)\({.\{-}}$\)\n\\\pagereference\[bkm:RefHeading\(.\{-}.\)\]/\\\1[ref:\3]\2\r/

:%s/bkm:RefHeading/ref:/g
:%s/\\endinput//
:wq
