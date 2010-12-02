:%s/^\\\([a-z].\{-}section\|section\|chapter\)\({.\{-}}$\)\n\\\pagereference\[bkm:RefHeading\(.\{-}.\)\]/\\\1[ref:\3]\2\r/

:%s/bkm:RefHeading/ref:/g
:%s/\\endinput//
:%s/^\\stopitemize\n\\startitemize\[1\]\n//
:%s/manualar-img/img/g
:%s/{\\md \(.\{-}.\)}/{\\bf \1}/g
:%s/\\href{\(.\{-}.\)\/}{.\{-}.}/\\url{\1}/g
:%s/\\href{\(.\{-}.\)}{\(.\{-}.\)}/\\goto{\2}[url(\1)]/g
:%s/\\url{/\\URL{/g
:%s/<\(Alt.\{-}.\|Ctrl.\{-}.\|Alt\|Ctrl\)>/\\KBD{\1}/g
:%s/\(\\externalfigure\[.\{-}.\]\)\[.\{-}\]/\\placefigure[here,force]\r  {none}\r  {\1[width=.8\\textwidth]}/g

:%s/\\startframedtext\[right\]\[background=screen\]\n^\(.*.\)$\n\\stopframedtext/\\framed[background=screen]{\1}/
:wq
