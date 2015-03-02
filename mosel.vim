" Vim syntax file
" Language:	Mosel
" Maintainer:	Andrea Bettinelli <andrea.bettinelli@unibo.it>
" Last Change:	2015-03-02

" For version 5.x: Clear all syntax items.
" For version 6.x: Quit when a syntax file was already loaded.
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Add '-' to keyword characters
:setlocal iskeyword+=-

"--
syn keyword moselType	integer real string set array list
syn keyword moselType	mpvar linctr
syn keyword moselIPType is_binary is_integer is_semcont 
syn keyword moselIPType is_free is_semint is_partint

"--
syn keyword moselStatement dynamic 
syn keyword moselStatement forward public

"--
syn keyword moselConditional if else elif end-if then case end-case
syn keyword moselConditional and in not or

"--
syn keyword moselRepeat	  forall while repeat until break next

"--
syn keyword moselKeyword of as from

"--
syn keyword moselBlocks do end-do
syn keyword moselBlocks model end-model
syn keyword moselBlocks package end-package
syn keyword moselBlocks procedure end-procedure
syn keyword moselBlocks function end-function
syn keyword moselBlocks record end-record
syn keyword moselBlocks parameters end-parameters
syn keyword moselBlocks declarations end-declarations
syn keyword moselBlocks initializations end-initializations

"--
syn keyword moselInclude options uses
syn keyword moselInclude include import

"--
syn keyword moselAggrOperator min max sum union prod

" Built-in functions
syn keyword moselFunction abs arctan assert
syn keyword moselFunction bittest
syn keyword moselFunction ceil cos create currentdate currenttime
syn keyword moselFunction cuthead cutall
syn keyword moselFunction delcell
syn keyword moselFunction exists exit exp exportprob
syn keyword moselFunction fclose fflush finalize findfirst
syn keyword moselFunction findlast floor fopen fselect fskipline
syn keyword moselFunction getact getcoeff getdual getfid
syn keyword moselFunction getfirst gethead getfname getlast
syn keyword moselFunction getobjval getparam getcost
syn keyword moselFunction getreadcnt getreverse getsize
syn keyword moselFunction getslack getsol getall gettype getvars
syn keyword moselFunction iseof ishidden isodd 
syn keyword moselFunction ln log 
syn keyword moselFunction makesos1 makesos2 maxlist minlist
syn keyword moselFunction random read readln reset reverse round
syn keyword moselFunction setcoeff sethidden setparam setrandseed
syn keyword moselFunction settype sin splithead splittail sqrt
syn keyword moselFunction strfmt substr
syn keyword moselFunction timestamp
syn keyword moselFunction write writeln 

" mmxprs functions
syn keyword moselFunction addmipsol 
syn keyword moselFunction basisstability
syn keyword moselFunction clearmipdir clearmodcut command
syn keyword moselFunction defdelayedrows defsecurevecs
syn keyword moselFunction fixglobal
syn keyword moselFunction getbstat getiis getiissense getiistype
syn keyword moselFunction getinfcause getinfeas getlb getname
syn keyword moselFunction getprobstat getrange getsensrng getub
syn keyword moselFunction implies indicator isiisvalid isintegral
syn keyword moselFunction loadbasis loadmipsol loadprob
syn keyword moselFunction minimize maximize 
syn keyword moselFunction postsolve readbasis readdirs rejectintsol
syn keyword moselFunction repairinfeas resetbasis resetiis
syn keyword moselFunction savebasis savemipsol savestate selectsol
syn keyword moselFunction setbstat setcallback setcbcutoff setgndata
syn keyword moselFunction setlb setmipdir setmodcut setub setucbdata
syn keyword moselFunction stopoptimize
syn keyword moselFunction unloadprob
syn keyword moselFunction writebasis writedirs writeprob
syn keyword moselFunction xor

syn keyword moselFunction addcut addcuts delcuts dropcuts getcnlist
syn keyword moselFunction getcplist loadcuts storecut storecuts

" Numbers
syn match   moselNumber	"\<0[oO]\=\o\+[Ll]\=\>"
syn match   moselNumber	"\<0[xX]\x\+[Ll]\=\>"
syn match   moselNumber	"\<0[bB][01]\+[Ll]\=\>"
syn match   moselNumber	"\<\%([1-9]\d*\|0\)[Ll]\=\>"
syn match   moselNumber	"\<\d\+[jJ]\>"
syn match   moselNumber	"\<\d\+[eE][+-]\=\d\+[jJ]\=\>"
syn match   moselNumber
	\ "\<\d\+\.\%([eE][+-]\=\d\+\)\=[jJ]\=\%(\W\|$\)\@="
syn match   moselNumber
	\ "\%(^\|\W\)\@<=\d*\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>"

"Strings
syntax region moselString start=/\v['"]/ skip=/\v\\./ end=/\v['"]/ contains=@Spell

syn match moselBasicOperators ":\|:=\|="

"Comments
syn match  moselComment	"!.*$" contains=@moselCommentGroup,moselTodo,@Spell
syn region moselCommentBlock	matchgroup=moselCommentStart start="(!" end="!)" contains=moselTodo,@Spell extend

syn keyword moselTodo		FIXME NOTE NOTES TODO XXX contained


hi def link moselKeyword	Keyword
hi def link moselConditional 	Conditional
hi def link moselRepeat		Repeat
hi def link moselType	 	Type
hi def link moselIPType	 	Type
hi def link moselComment 	Comment
hi def link moselCommentBlock 	Comment
hi def link moselTodo 		Todo
hi def link moselBlocks 	Statement
hi def link moselStatement 	Statement
hi def link moselBuiltIn 	Function
hi def link moselString 	String
hi def link moselAggrOperator	Operator
hi def link moselInclude	Include
hi def link moselFunction	Function
hi def link moselNumber		Number

hi def link moselBasicOperators	Operator


