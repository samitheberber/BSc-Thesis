%%
%% This is file `tktl.bst',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tktl.dtx  (with options: `tktl')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2002 Mikael Puolakka.
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
 % BibTeX-bibliografiatyyli `tktl'
    % versio 1.0  BibTeX-versiolle 0.99c ja myöhemmille ja
    %   LaTeX-versiolle 2e.
    % Copyright (C) 2002 Mikael Puolakka.
    % Tämä bibliografiatyylitiedosto tarvitsee tiedostot
    %   babelbst.tex, finnbst.tex, englbst.tex ja swedbst.tex,
    %   jotka sisältävät sanakomentojen, kuten \bbleditor, jne.,
    %   määritelmät.
    % Tämä tiedosto on modifioitu tiedostosta
 % BibTeX standard bibliography style `alpha'
    % version 0.99a for BibTeX versions 0.99a or later, LaTeX version 2.09.
    % Copyright (C) 1985, all rights reserved.
    % Copying of this file is authorized only if either
    % (1) you make absolutely no changes to your copy, including name, or
    % (2) if you do make changes, you name it something other than
    % btxbst.doc, plain.bst, unsrt.bst, alpha.bst, and abbrv.bst.
    % This restriction helps ensure that all standard styles are identical.
    % The file btxbst.doc has the documentation for this style.

ENTRY
  { address
    author
    bibitemlabel
    booktitle
    chapter
    edition
    editor
    howpublished
    institution
    journal
    key
    month
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    url
    valid
    volume
    year
  }
  {}
  { label extra.label sort.label }

INTEGERS { output.state before.all mid.sentence after.sentence after.block }

FUNCTION {format.url}
{ url empty$
    { "" }
    { "\urlprefix\url{" url * "}" * }
  if$
}

FUNCTION {format.url.2}
{ url empty$
    { "" }
    { "\url{" url * "}" * }
  if$
}

FUNCTION {format.valid}
{ valid empty$
    { "" }
    { "[" valid * "]" * }
  if$
}

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.sentence :=
  #3 'after.block :=
}

STRINGS { s t }

FUNCTION {output.nonnull}
{ 's :=
  output.state mid.sentence =
    { ", " * write$ }
    { output.state after.block =
    { add.period$ write$
      newline$
      "\newblock " write$
    }
    { output.state before.all =
        'write$
        { add.period$ " " * write$ }
      if$
    }
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}

FUNCTION {output.bibitem}
{ newline$
  "\bibitem[" write$
  label write$
  "]{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {output.bibitem.with.bibitemlabel}
{ newline$
  "\bibitem[" write$
  bibitemlabel write$
  "]{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {fin.entry}
{ add.period$
  write$
  newline$
}

FUNCTION {fin.www-entry}
{ write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { after.block 'output.state := }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
    'skip$
    { after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}

FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}

FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}

FUNCTION {new.sentence.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.sentence
  if$
}

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "{\em " swap$ * "}" * }
  if$
}

INTEGERS { nameptr namesleft numnames }

FUNCTION {format.names}
{ 's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr
      "{vv~}{ll}{, jj}{, f.}" format.name$

    't :=
      nameptr #1 >
        {
          namesleft #1 >
            { ", " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                { " \bbletal{}." * }
                { " \bbland{} " * t * }
              if$
            }
          if$
        }
        't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {format.authors}
{ author empty$
    { "" }
    { author format.names }
  if$
}

FUNCTION {format.editors}
{ editor empty$
    { "" }
    { editor format.names
      editor num.names$ #1 >
    { ", \bbleditors{}" * }
    { ", \bbleditor{}" * }
      if$
    }
  if$
}

FUNCTION {format.title}
{ title empty$
    { "" }
    { title "t" change.case$ }
  if$
}

FUNCTION {n.dashify}
{ 't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
    { t #1 #2 substring$ "--" = not
        { "--" *
          t #2 global.max$ substring$ 't :=
        }
        {   { t #1 #1 substring$ "-" = }
        { "-" *
          t #2 global.max$ substring$ 't :=
        }
          while$
        }
      if$
    }
    { t #1 #1 substring$ *
      t #2 global.max$ substring$ 't :=
    }
      if$
    }
  while$
}

FUNCTION {format.date}
{ year empty$
    { month empty$
    { "" }
    { "there's a month but no year in " cite$ * warning$
      month
    }
      if$
    }
    { month empty$
    'year
    { month " " * year * }
      if$
    }
  if$
}

FUNCTION {format.btitle}
{ title emphasize
}

FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { "\bblvolume{}" volume tie.or.space.connect
      series empty$
    'skip$
    { " \bblof{} " * series emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
}

FUNCTION {capitalize}
{ "\capitalize" swap$ * }

FUNCTION {format.number.series}
{ volume empty$
    { number empty$
    { series field.or.null }
    { output.state mid.sentence =
        { "\bblnumber{}" }
        { "\bblnumber{}" capitalize }
      if$
      number tie.or.space.connect
      series empty$
        { "there's a number but no series in " cite$ * warning$ }
        { " \bblins{} " * series * }
      if$
    }
      if$
    }
    { "" }
  if$
}

FUNCTION {eng.ord}
{ duplicate$ "1" swap$ *
  #-2 #1 substring$ "1" =
     { "\bblth{}" * }
     { duplicate$ #-1 #1 substring$
       duplicate$ "1" =
         { pop$ "\bblst{}" * }
         { duplicate$ "2" =
             { pop$ "\bblnd{}" * }
             { "3" =
                 { "\bblrd{}" * }
                 { "\bblth{}" * }
               if$
             }
           if$
          }
       if$
     }
   if$
}

FUNCTION {is.num}
{ chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not and
}

FUNCTION {extract.num}
{ duplicate$ 't :=
  "" 's :=
  { t empty$ not }
  { t #1 #1 substring$
    t #2 global.max$ substring$ 't :=
    duplicate$ is.num
      { s swap$ * 's := }
      { pop$ "" 't := }
    if$
  }
  while$
  s empty$
    'skip$
    { pop$ s }
  if$
}

FUNCTION {convert.edition}
{ edition extract.num "l" change.case$ 's :=
  s "first" = s "1" = or
    { "\bblfirst{}" 't := }
    { s "second" = s "2" = or
        { "\bblsecond{}" 't := }
        { s "third" = s "3" = or
            { "\bblthird{}" 't := }
            { s "fourth" = s "4" = or
                { "\bblfourth{}" 't := }
                { s "fifth" = s "5" = or
                    { "\bblfifth{}" 't := }
                    { s #1 #1 substring$ is.num
                        { s eng.ord 't := }
                        { edition 't := }
                      if$
                    }
                  if$
                }
              if$
            }
          if$
        }
      if$
    }
  if$
  t
}

FUNCTION {format.edition}
{ edition empty$
    { "" }
    { output.state mid.sentence =
        { convert.edition "l" change.case$ " " * "\bbledition{}" * }
        { convert.edition "t" change.case$ " " * "\bbledition{}" * }
      if$
    }
  if$
}

INTEGERS { multiresult }

FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
    { #1 'multiresult := }
    { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
    { "\bblpages{}" pages n.dashify tie.or.space.connect }
    { "\bblpage{}" pages tie.or.space.connect }
      if$
    }
  if$
}

FUNCTION {format.vol.num.year}
{ volume field.or.null
  number empty$
    'skip$
    { ","  number * *
      volume empty$
    { "there's a number but no volume in " cite$ * warning$ }
    {year empty$
      'skip$
       { "("  year * ")" * *
       }
       if$
     }
     if$
    }
  if$
}

FUNCTION {format.chapter.pages}
{ chapter empty$
    'format.pages
    { type empty$
    { "\bblchapter{}" }
    { type "l" change.case$ }
      if$
      chapter tie.or.space.connect
      pages empty$
    'skip$
    { ", " * format.pages * }
      if$
    }
  if$
}

FUNCTION {format.in.ed.booktitle}
{ booktitle empty$
    { "" }
    { editor empty$
    { "\bblin{} " capitalize booktitle emphasize * }
    { "\bblin{} " booktitle emphasize * ", " * capitalize format.editors * }
      if$
    }
  if$
}

FUNCTION {format.in.ed.booktitle.proc}
{ booktitle empty$
    { "" }
    { editor empty$
    { " " booktitle emphasize * }
    { " " booktitle emphasize * ", " * format.editors * }
      if$
    }
  if$
}

FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
  key empty$ not and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}

FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$
      type "t" change.case$
    }
  if$
}

FUNCTION {format.tr.number}
{ type empty$
    { "\bbltechreport{}" capitalize }
    'type
  if$
  number empty$
    { "t" change.case$ }
    { number tie.or.space.connect }
  if$
}

FUNCTION {format.article.crossref}
{ key empty$
    { journal empty$
    { "need key or journal for " cite$ * " to crossref " * crossref *
      warning$
      ""
    }
    { "\bblinj{} " capitalize * "{\em " journal * "\/}" * }
      if$
    }
    { "\bblin{} " capitalize key * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.crossref.editor}
{ editor #1 "{vv~}{ll}{, jj}{, f.}" format.name$
  editor num.names$ duplicate$
  #2 >
    { pop$ " \bbletal{}." * }
    { #2 <
    'skip$
    { editor #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
        { " \bbletal{}." * }
        { " \bbland{} " * editor #2 "{vv~}{ll}{, jj}{, f.}" format.name$ * }
      if$
    }
      if$
    }
  if$
}

FUNCTION {format.book.crossref}
{ volume empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      "\bblin{} " capitalize
    }
    { "\bblvolume{}" capitalize volume tie.or.space.connect
      " \bblof{} " *
    }
  if$
  editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
    { series empty$
        { "need editor, key, or series for " cite$ * " to crossref " *
          crossref * warning$
          "" *
        }
        { "{\em " * series * "\/}" * }
      if$
    }
    { key * }
      if$
    }
    { format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.incoll.inproc.crossref}
{ editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
    { booktitle empty$
        { "need editor, key, or booktitle for " cite$ * " to crossref " *
          crossref * warning$
          ""
        }
        { "In {\em " booktitle * "\/}" * }
        { "\bblin{} " capitalize * "{\em " booktitle * "\/}" * }
      if$
    }
    { "\bblin{} " capitalize key * }
      if$
    }
    { "\bblin{} " capitalize format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {article}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  crossref missing$
    { journal emphasize "journal" output.check
      format.vol.num.year output
      format.pages output
    }
    { format.article.crossref output.nonnull
      format.pages output
    }
  if$
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-article}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  crossref missing$
    { journal emphasize "journal" output.check
      format.vol.num.year output
      format.pages output
    }
    { format.article.crossref output.nonnull
      format.pages output
    }
  if$
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {book}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  author empty$
    { format.editors "author and editor" output.check }
    { format.authors output.nonnull
      crossref missing$
    { "author and editor" editor either.or.check }
    'skip$
      if$
    }
  if$
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      new.block
      format.number.series output
      new.sentence
      publisher "publisher" output.check
      address output
    }
    { new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-book}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  author empty$
    { format.editors "author and editor" output.check }
    { format.authors output.nonnull
      crossref missing$
    { "author and editor" editor either.or.check }
    'skip$
      if$
    }
  if$
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      new.block
      format.number.series output
      new.sentence
      publisher "publisher" output.check
      address output
    }
    { new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {booklet}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors output
  format.title "title" output.check
  howpublished address new.block.checkb
  howpublished output
  address output
  format.date output
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-booklet}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors output
  format.title "title" output.check
  howpublished address new.block.checkb
  howpublished output
  address output
  format.date output
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {inbook}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  author empty$
    { format.editors "author and editor" output.check }
    { format.authors output.nonnull
      crossref missing$
    { "author and editor" editor either.or.check }
    'skip$
      if$
    }
  if$
  new.block
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      format.chapter.pages "chapter and pages" output.check
      new.block
      format.number.series output
      new.sentence
      publisher "publisher" output.check
      address output
    }
    { format.chapter.pages "chapter and pages" output.check
      new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-inbook}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  author empty$
    { format.editors "author and editor" output.check }
    { format.authors output.nonnull
      crossref missing$
    { "author and editor" editor either.or.check }
    'skip$
      if$
    }
  if$
  new.block
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      format.chapter.pages "chapter and pages" output.check
      new.block
      format.number.series output
      new.sentence
      publisher "publisher" output.check
      address output
    }
    { format.chapter.pages "chapter and pages" output.check
      new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {incollection}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      publisher "publisher" output.check
      address output
      format.edition output
      format.date "year" output.check
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output
    }
  if$
  format.chapter.pages output
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-incollection}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      publisher "publisher" output.check
      address output
      format.edition output
      format.date "year" output.check
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output
    }
  if$
  format.chapter.pages output
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {inproceedings}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  crossref missing$
    { format.in.ed.booktitle.proc "booktitle" output.check
      format.bvolume output
      format.number.series output
      address empty$
    { organization publisher new.sentence.checkb
      organization output
      publisher output
      format.date "year" output.check
    }
    { address output.nonnull
      format.date "year" output.check
      organization output
      publisher output
    }
      if$
    }
    { format.incoll.inproc.crossref output.nonnull
    }
  if$
  format.pages output
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-inproceedings}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  crossref missing$
    { format.in.ed.booktitle.proc "booktitle" output.check
      format.bvolume output
      format.number.series output
      address empty$
    { organization publisher new.sentence.checkb
      organization output
      publisher output
      format.date "year" output.check
    }
    { address output.nonnull
      format.date "year" output.check
      organization output
      publisher output
    }
      if$
    }
    { format.incoll.inproc.crossref output.nonnull
    }
  if$
  format.pages output
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {conference} { inproceedings }

FUNCTION {www-conference} { www-inproceedings }

FUNCTION {manual}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  author empty$
    { organization empty$
    'skip$
    { organization output.nonnull
      address output
    }
      if$
    }
    { format.authors output.nonnull }
  if$
  format.btitle "title" output.check
  author empty$
    { organization empty$
    { address new.block.checka
      address output
    }
    'skip$
      if$
    }
    { organization address new.block.checkb
      organization output
      address output
    }
  if$
  format.edition output
  format.date output
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-manual}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  author empty$
    { organization empty$
    'skip$
    { organization output.nonnull
      address output
    }
      if$
    }
    { format.authors output.nonnull }
  if$
  format.btitle "title" output.check
  author empty$
    { organization empty$
    { address new.block.checka
      address output
    }
    'skip$
      if$
    }
    { organization address new.block.checkb
      organization output
      address output
    }
  if$
  format.edition output
  format.date output
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {mastersthesis}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  "\bblmthesis{}" capitalize format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-mastersthesis}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  "\bblmthesis{}" capitalize format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {misc}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  howpublished output
  format.date output
  new.block
  format.url output
  new.block
  note output
  fin.entry
  empty.misc.check
}

FUNCTION {www-misc}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  format.date output
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
  empty.misc.check
}

FUNCTION {phdthesis}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.btitle "title" output.check
  new.block
  "\bblphdthesis{}" capitalize format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-phdthesis}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.btitle "title" output.check
  new.block
  "\bblphdthesis{}" capitalize format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {proceedings}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  editor empty$
    { organization output }
    { format.editors output.nonnull }
  if$
  new.block
  format.btitle "title" output.check
  format.bvolume output
  format.number.series output
  address empty$
    { editor empty$
    { publisher new.sentence.checka }
    { organization publisher new.sentence.checkb
      organization output
    }
      if$
      publisher output
      format.date "year" output.check
    }
    { address output.nonnull
      format.date "year" output.check
      new.sentence
      editor empty$
    'skip$
    { organization output }
      if$
      publisher output
    }
  if$
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-proceedings}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  editor empty$
    { organization output }
    { format.editors output.nonnull }
  if$
  new.block
  format.btitle "title" output.check
  format.bvolume output
  format.number.series output
  address empty$
    { editor empty$
    { publisher new.sentence.checka }
    { organization publisher new.sentence.checkb
      organization output
    }
      if$
      publisher output
      format.date "year" output.check
    }
    { address output.nonnull
      format.date "year" output.check
      new.sentence
      editor empty$
    'skip$
    { organization output }
      if$
      publisher output
    }
  if$
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {techreport}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  format.tr.number output.nonnull
  institution "institution" output.check
  address output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {www-techreport}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  format.tr.number output.nonnull
  institution "institution" output.check
  address output
  format.date "year" output.check
  new.block
  note output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {unpublished}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  format.url output
  new.block
  note "note" output.check
  format.date output
  fin.entry
}

FUNCTION {www-unpublished}
{ bibitemlabel empty$
    { output.bibitem }
    { output.bibitem.with.bibitemlabel }
  if$
  format.authors "author" output.check
  format.title "title" output.check
  new.block
  note "note" output.check
  format.date output
  new.block
  format.url.2 "url" output.check
  new.block
  format.valid output
  fin.www-entry
}

FUNCTION {default.type} { misc }

MACRO {jan} {"\bbljan{}"}

MACRO {feb} {"\bblfeb{}"}

MACRO {mar} {"\bblmar{}"}

MACRO {apr} {"\bblapr{}"}

MACRO {may} {"\bblmay{}"}

MACRO {jun} {"\bbljun{}"}

MACRO {jul} {"\bbljul{}"}

MACRO {aug} {"\bblaug{}"}

MACRO {sep} {"\bblsep{}"}

MACRO {oct} {"\bbloct{}"}

MACRO {nov} {"\bblnov{}"}

MACRO {dec} {"\bbldec{}"}

MACRO {acmcs} {"ACM Computing Surveys"}

MACRO {acta} {"Acta Informatica"}

MACRO {cacm} {"Communications of the ACM"}

MACRO {ibmjrd} {"IBM Journal of Research and Development"}

MACRO {ibmsj} {"IBM Systems Journal"}

MACRO {ieeese} {"IEEE Transactions on Software Engineering"}

MACRO {ieeetc} {"IEEE Transactions on Computers"}

MACRO {ieeetcad}
 {"IEEE Transactions on Computer-Aided Design of Integrated Circuits"}

MACRO {ipl} {"Information Processing Letters"}

MACRO {jacm} {"Journal of the ACM"}

MACRO {jcss} {"Journal of Computer and System Sciences"}

MACRO {scp} {"Science of Computer Programming"}

MACRO {sicomp} {"SIAM Journal on Computing"}

MACRO {tocs} {"ACM Transactions on Computer Systems"}

MACRO {tods} {"ACM Transactions on Database Systems"}

MACRO {tog} {"ACM Transactions on Graphics"}

MACRO {toms} {"ACM Transactions on Mathematical Software"}

MACRO {toois} {"ACM Transactions on Office Information Systems"}

MACRO {toplas} {"ACM Transactions on Programming Languages and Systems"}

MACRO {tcs} {"Theoretical Computer Science"}

READ

FUNCTION {sortify}
{ purify$
  "l" change.case$
}

INTEGERS { len }

FUNCTION {chop.word}
{ 's :=
  'len :=
  s #1 len substring$ =
    { s len #1 + global.max$ substring$ }
    's
  if$
}

INTEGERS { et.al.char.used }

FUNCTION {initialize.et.al.char.used}
{ #0 'et.al.char.used :=
}

EXECUTE {initialize.et.al.char.used}

FUNCTION {format.lab.names}
{ 's :=
  s num.names$ 'numnames :=
  numnames #1 >
    { numnames #4 >
    { #3 'namesleft := }
    { numnames 'namesleft := }
      if$
      #1 'nameptr :=
      ""
    { namesleft #0 > }
    { nameptr numnames =
        { s nameptr "{vv~}{ll}{, jj}{, f.}" format.name$ "others" =
        { "{\etalchar{+}}" *
          #1 'et.al.char.used :=
        }
        { s nameptr "{v{}}{l{}}" format.name$ * }
          if$
        }
        { s nameptr "{v{}}{l{}}" format.name$ * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
      while$
      numnames #4 >
    { "{\etalchar{+}}" *
      #1 'et.al.char.used :=
    }
    'skip$
      if$
    }
    { s #1 "{v{}}{l{}}" format.name$
      duplicate$ text.length$ #2 <
    { pop$ s #1 "{ll}" format.name$ #3 text.prefix$ }
    'skip$
      if$
    }
  if$
}

FUNCTION {author.key.label}
{ author empty$
    { key empty$
    { cite$ #1 #3 substring$ }
    { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {author.editor.key.label}
{ author empty$
    { editor empty$
    { key empty$
        { cite$ #1 #3 substring$ }
        { key #3 text.prefix$ }
      if$
    }
    { editor format.lab.names }
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {author.key.organization.label}
{ author empty$
    { key empty$
    { organization empty$
        { cite$ #1 #3 substring$ }
        { "The " #4 organization chop.word #3 text.prefix$ }
      if$
    }
    { key #3 text.prefix$ }
      if$
    }
    { author format.lab.names }
  if$
}

FUNCTION {editor.key.organization.label}
{ editor empty$
    { key empty$
    { organization empty$
        { cite$ #1 #3 substring$ }
        { "The " #4 organization chop.word #3 text.prefix$ }
      if$
    }
    { key #3 text.prefix$ }
      if$
    }
    { editor format.lab.names }
  if$
}

FUNCTION {calc.label}
{ type$ "book" =
  type$ "inbook" =
  or
  type$ "www-inbook" =
  or
  type$ "www-book" =
  or
    'author.editor.key.label
    { type$ "proceedings" =
    'editor.key.organization.label
    { type$ "manual" =
        'author.key.organization.label
        'author.key.label
      if$
    }
      if$
    }
  if$
  duplicate$
  year field.or.null purify$ #-1 #2 substring$
  *
  'label :=
  year field.or.null purify$ #-1 #4 substring$
  *
  sortify 'sort.label :=
}

FUNCTION {sort.format.names}
{ 's :=
  #1 'nameptr :=
  ""
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { nameptr #1 >
    { "   " * }
    'skip$
      if$
      s nameptr "{vv{ } }{ll{ }}{  ff{ }}{  jj{ }}" format.name$ 't :=
      nameptr numnames = t "others" = and
    { "\bbletal{}" * }
    { t sortify * }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {sort.format.title}
{ 't :=
  "A " #2
    "An " #3
      "The " #4 t chop.word
    chop.word
  chop.word
  sortify
  #1 global.max$ substring$
}

FUNCTION {author.sort}
{ author empty$
    { key empty$
    { "to sort, need author or key in " cite$ * warning$
      ""
    }
    { key sortify }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {author.editor.sort}
{ author empty$
    { editor empty$
    { key empty$
        { "to sort, need author, editor, or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { editor sort.format.names }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {author.organization.sort}
{ author empty$
    { organization empty$
    { key empty$
        { "to sort, need author, organization, or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { "The " #4 organization chop.word sortify }
      if$
    }
    { author sort.format.names }
  if$
}

FUNCTION {editor.organization.sort}
{ editor empty$
    { organization empty$
    { key empty$
        { "to sort, need editor, organization, or key in " cite$ * warning$
          ""
        }
        { key sortify }
      if$
    }
    { "The " #4 organization chop.word sortify }
      if$
    }
    { editor sort.format.names }
  if$
}

FUNCTION {presort}
{ calc.label
  sort.label
  "    "
  *
  type$ "book" =
  type$ "inbook" =
  or
    'author.editor.sort
    { type$ "proceedings" =
    'editor.organization.sort
    { type$ "manual" =
        'author.organization.sort
        'author.sort
      if$
    }
      if$
    }
  if$
  *
  "    "
  *
  year field.or.null sortify
  *
  "    "
  *
  title field.or.null
  sort.format.title
  *
  #1 entry.max$ substring$
  'sort.key$ :=
}

ITERATE {presort}

SORT

STRINGS { longest.label last.sort.label next.extra }

INTEGERS { longest.label.width last.extra.num }

FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #0 int.to.chr$ 'last.sort.label :=
  "" 'next.extra :=
  #0 'longest.label.width :=
  #0 'last.extra.num :=
}

FUNCTION {forward.pass}
{ last.sort.label sort.label =
    { last.extra.num #1 + 'last.extra.num :=
      last.extra.num int.to.chr$ 'extra.label :=
    }
    { "a" chr.to.int$ 'last.extra.num :=
      "" 'extra.label :=
      sort.label 'last.sort.label :=
    }
  if$
}

FUNCTION {reverse.pass}
{ next.extra "b" =
    { "a" 'extra.label := }
    'skip$
  if$
  label extra.label * 'label :=
  label width$ longest.label.width >
    { label 'longest.label :=
      label width$ 'longest.label.width :=
    }
    'skip$
  if$
  extra.label 'next.extra :=
}

EXECUTE {initialize.longest.label}

ITERATE {forward.pass}

REVERSE {reverse.pass}

FUNCTION {begin.bib}
{ et.al.char.used
    { "\newcommand{\etalchar}[1]{$^{#1}$}" write$ newline$ }
    'skip$
  if$
  preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{"  longest.label  * "}" * write$ newline$
  "\expandafter\ifx\csname url\endcsname\relax"
  write$ newline$
  "  \def\url#1{{\tt #1}}\fi"
  write$ newline$
  "\expandafter\ifx\csname urlprefix\endcsname\relax\def\urlprefix{URL }\fi"
  write$ newline$
  "\input babelbst.tex" write$ newline$
  "\newcommand{\Capitalize}[1]{\uppercase{#1}}" write$ newline$
  "\newcommand{\capitalize}[1]{\expandafter\Capitalize#1}" write$ newline$
}

EXECUTE {begin.bib}

EXECUTE {init.state.consts}

ITERATE {call.type$}

FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}" write$ newline$
}

EXECUTE {end.bib}
%%
%%
%% End of file `tktl.bst'.
%% 
%%
%% End of file `tktl.bst'.
