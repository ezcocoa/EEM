@c -*- mode: texinfo -*-
\input texinfo

@c $Id: emacs-goodies-el.texi,v 1.83 2009-07-17 22:34:44 psg Exp $
@c %**start of header
@setfilename info/emacs-goodies-el
@settitle Emacs-Goodies-el
@c %**end of header

@dircategory Emacs
@direntry
* Emacs-Goodies-el: (emacs-goodies-el). Miscellaneous add-ons for Emacs
@end direntry

@c Version variables.
@set EDITION 31.1
@set UPDATED 25 Nov 2009

@ifinfo
This is Edition @value{EDITION}, last updated @value{UPDATED}, of
@cite{Emacs-Goodies-el}.
@end ifinfo

@titlepage
@title Emacs-Goodies-el: Miscellaneous add-ons for Emacs
@subtitle A manual for what's in this package.
@author Peter S. Galbraith
@end titlepage

@node Top, align-string, (dir), (dir)
@top The Emacs-Goodies-el Package Setup

This manual describes the Emacs-Goodies-el package and its setup.  A
quick descriptions of elisp files contained in this package can be found
in the file @file{/usr/share/doc/emacs-goodies-el/README.Debian.gz}.

All packaged files are installed, setup and ready to use if they don't
override standard Emacs commands, modes, or settings.

Some extra package installation and setup is done if you customize the
variable @code{emacs-goodies-el-defaults} to t (its aggressive state).
These will override standard Emacs defaults, but in a good
(uncontroversial) way.  The affected packages are currently only:
@ref{ff-paths}, @ref{home-end} and @ref{ibuffer}.  Packages which
require activation in order to function also include:
@ref{bar-cursor}, @ref{diminish}, @ref{df} and @ref{filladapt}.

To customize setup of all customizable packages on a finer-grain
basis, do:
@example
@kbd{M-x} customize-group @key{RET} emacs-goodies-el @key{RET}
@end example

In the following document, when we speak of customizing a variable, we
mean to use the Emacs custom interface, such as in:
@example
@kbd{M-x} customize-variable @key{RET} some-variable @key{RET}
@end example
When we speak of customizing a group, it's as the example above for the
group @code{emacs-goodies-el}.

The following files are documented so far.  Eventually, all files will
be documented.

@menu
* align-string::                Align string components over several lines
* all::                         Edit all lines matching a given regexp
* apache-mode::                 Major mode for Apache configuration files
* auto-fill-inhibit::           auto-fill-mode (de)activation
* ascii::                       ASCII code display for character under point
* bar-cursor::                  Switch block cursor to a bar
* boxquote::                    Quote text with a semi-box
* browse-huge-tar::             Browse files in a tarball memory-efficiently
* browse-kill-ring::            Interactively insert items from kill-ring
* cfengine::                    Major-mode for editing cfengine scripts
* clipper::                     Save strings of data for further use
* coffee::                      Submit BREW request to RFC2324-compliant device
* color-theme::                 Install color themes
* csv-mode::                    Mode for comma-separated value files.
* ctypes::                      Enhanced font-lock for custom defined types
* cyclebuffer::                 Select buffer by cycling through
* cua::                         Emulate CUA key bindings (C-z, C-x, C-c, C-v)
* cwebm::                       CWEB/WEB modified mode
* dedicated::                   Minor mode for dedicated buffers
* df::                          Display space left on partitions in mode-line
* dict::                        Emacs interface to dict client
* diminish::                    Diminish minor-mode's display
* dirvars::                     Local variables that apply to entire directory
* edit-env::                    Display and edit environment variables
* egocentric::                  Highlight your name inside emacs buffers
* ff-paths::                    Searches certain paths to find files
* filladapt::                   Adaptively set fill-prefix
* floatbg::                     Slowly modify background color
* folding::                     A folding-editor-like minor mode
* framepop::                    Display temporary buffers in a dedicated frame
* highlight-beyond-fill-column::  Fontify beyond the fill-column
* highlight-completion::        Completion with highlighted provisional text
* highlight-current-line::      highlight line where the cursor is
* home-end::                    Alternative Home and End key commands
* htmlize::                     HTML-ize font-lock buffers
* ibuffer::                     Operate on buffers like dired
* ido::                         Interactively do things with buffers and files
* joc-toggle-buffer::           Flips back and forth between two buffers
* joc-toggle-case::             Toggles case at point like ~ in vi
* keydef::                      A simpler way to define keys, with kbd syntax
* keywiz::                      Emacs key sequence quiz
* lcomp::                       list-completion hacks
* maplev::                      Maple major mode
* map-lines::                   Map a command over many lines
* markdown-mode::               Major mode for editing Markdown files
* marker-visit::                Navigate through a buffer's marks in order
* matlab::                      Major mode for MATLAB dot-m files
* minibuf-electric::            Electric minibuffer behavior from XEmacs
* minibuffer-complete-cycle::   Cycle through the *Completions* buffer
* mutt-alias::                  Lookup/insert mutt mail aliases
* muttrc-mode::                 Major mode to edit muttrc under Emacs
* newsticker::                  A Newsticker for Emacs
* nuke-trailing-whitespace::    Strip trailing whitespace from buffers
* obfusurl::                    Obfuscate URLs so they aren't spoilers
* pack-windows::                Resize windows to display maximal information
* perldoc::                     Show help for Perl functions and modules
* pod-mode::                    Major mode for editing POD files
* projects::                    Project-based buffer name management
* protbuf::                     Protect buffers from accidental killing
* protocols::                   Protocol database access functions
* quack::                       Enhanced support for editing and running Scheme
* rfcview::                     View IETF RFCs with improved formatting
* services::                    Services database access functions
* session::                     Session Management for Emacs
* setnu::                       vi-style line number mode for Emacs
* shell-command::               Enables tab-completion for `shell-command'
* show-wspace::                 Highlight whitespaces of various kinds
* slang-mode::                  Major-mode for editing slang scripts
* silly-mail::                  Generate bozotic mail headers
* sys-apropos::                 Interface for the *nix apropos command
* tabbar::                      Display a tab bar in the header line
* table::                       Create and edit WYSIWYG embedded tables
* tail::                        Tail files within Emacs
* tc::                          Cite text with proper filling in mail
* tlc::                         Major mode for editing tlc files
* thinks::                      Insert text in a think bubble
* tld::                         TLD (Top Level Domain) lookup tool
* todoo::                       Major mode for editing TODO files
* toggle-option::               Easily toggle frequently toggled options
* twiddle::                     Cute mode-line display hack
* under::                       Underline with the ^ character
* wdired::                      Rename files by editing in dired buffers
* xrdb-mode::                   Mode for editing X resource database files

@detailmenu
 --- The Detailed Node Listing ---

folding - A folding-editor-like minor mode.

* folding Installation::        
* folding documentation::       
* folding custom::              
* folding examples::            

framepop - display temporary buffers in a dedicated frame

* announcement::                Announcement on gnu-emacs-sources
* Purpose::                     What's it's for
* Quick Setup::                 Get going within a minute
* Customization::               Extra settings
* For elisp hackers::           More extra seetings for teh adventurous
* Bugs::                        Or limitations

session - Session Management for Emacs

* Session Menus and Key-Bindings::  
* Saving Session Variables::    
* Storing Buffer Places::       

table - Create and edit WYSIWYG text based embedded tables

* table introduction::          
* table background::            
* table getting started::       
* table keymap::                
* table menu::                  
* table function advising::     
* Definition of tables and cells::  
* Cell contents formatting::    
* Cell Justification::          
* Acknowledgments::             

@end detailmenu
@end menu

This work compiles GPL'ed documentation from the various elisp files
in /usr/share/emacs/site-lisp/emacs-goodies-el/.  As a derived work
from GPL'ed works, this text is also licensed under the GPL V2 (See
/usr/share/common-licenses/GPL-2) and is edited by Peter S. Galbraith
@email{psg@@debian.org}.

The following file is not yet documented.  Read its commentary
section for usage, but be advised that I haven't documented it
because I intend to change it.

@table @samp
@item /usr/share/emacs/site-lisp/emacs-goodies-el/initsplit.el
code to split customizations into different files
@end table

@node align-string, all, Top, Top
@chapter align-string - align string components over several lines.

This elisp file is not documented.  The commands are:

@table @samp
@item align-string

  Align first occurrence of REGEXP in each line of region.  If given a
prefix argument, align occurrence number COUNT on each line.

@item align-all-strings

  Align all occurrences of REGEXP in each line of region.  That is to
say, align the first occurrence of each line with each other, align
the second occurence of each line with each other, and so on.
@end table

@node all, apache-mode, align-string, Top
@chapter all - Edit all lines matching a given regexp.

This is an implementation of the xedit @code{all} command for GNU Emacs.

It works mostly like @code{occur} except that changes to the
@code{*All*} buffer are propagated back to the original buffer.

Type @kbd{M-x all} to try it out.

@node apache-mode, auto-fill-inhibit, all, Top
@chapter apache-mode - major mode for editing Apache configuration files

@noindent Authors: Jonathan Marten  <jonathan.marten@@uk.sun.com>,
Kevin A. Burton  <burton@@openprivacy.org>

The mode provides fontification while editing Apache configuration
files.  The list of keywords was derived from the documentation for
Apache 1.3; there may be some errors or omissions.

There are currently no local keybindings defined, but the hooks are
there in the event that anyone gets around to adding any.

@node auto-fill-inhibit, ascii, apache-mode, Top
@chapter auto-fill-inhibit - auto-fill-mode (de)activation

The purpose of this library is to allow the use of @command{auto-fill-mode}
using, e.g.

@example
 (add-hook 'text-mode-hook 'turn-on-auto-fill)
@end example
or, using by customizing the variable @code{text-mode-hook},
selecting @command{turn-on-auto-fill} and then save the setting.

You may disable @command{auto-fill-mode} on buffers with names that
match one of a list of regular expressions by customizing the variable
@code{auto-fill-inhibit-list}.

@node ascii, bar-cursor, auto-fill-inhibit, Top
@chapter ascii - ASCII code display.

@noindent Author: Vinicius Jose Latorre <vinicius@@cpqd.com.br>

@noindent http://www.cpqd.com.br/~vinicius/emacs/

This package provides a way to display ASCII code on a window, that is,
display in another window an ASCII table highlighting the current character
code.

@noindent Commands:

@table @samp
@item ascii-customize
Customize ASCII options.
@item ascii-display
Toggle ASCII code display.
@item ascii-on
Turn on ASCII code display.
@item ascii-off
Turn off ASCII code display.
@end table

You can also bind @command{ascii-display}, @command{ascii-on},
@command{ascii-off} and @command{ascii-customize} to some key, like:

@example
   (global-set-key "\C-c\C-a" 'ascii-on)
   (global-set-key "\C-c\C-e" 'ascii-off)
   (global-set-key "\C-c\C-t" 'ascii-display)
   (global-set-key "\C-c\C-c" 'ascii-customize)
@end example

If you're using the `mule' package, a good usage example is to activate `ascii'
on the emacs/etc/HELLO file.


@noindent Acknowledgments

Thanks to Roman Belenov <roman@@nstl.nnov.ru> for suggestion on dynamic ascii
table evaluation (depending on character encoding).

Thanks to Alex Schroeder <asc@@bsiag.com> for suggestion on customization.

@node bar-cursor, boxquote, ascii, Top
@chapter bar-cursor - switch block cursor to a bar

A simple package to convert the block cursor into a bar cursor.  In
overwrite mode, the bar cursor changes back into a block cursor.
This is a quasi-minor mode, meaning that it can be turned on & off
easily though only globally (hence the quasi-).

To enable it, customize the variable @code{bar-cursor-mode}.

It is also listed when you customize the group @code{emacs-goodies-el}.

@node boxquote, browse-huge-tar, bar-cursor, Top
@chapter boxquote - Quote text with a semi-box.

boxquote provides a set of functions for using a text quoting style that
partially boxes in the left hand side of an area of text, such a marking
style might be used to show externally included text or example code.

@example
,----
| The default style looks like this.
`----
@end example

A number of functions are provided for quoting a region, a buffer, a
paragraph and a defun. There are also functions for quoting text while
pulling it in, either by inserting the contents of another file or by
yanking text into the current buffer.

Look for the @command{@kbd{M-x} boxquote-*} commands.

@node browse-huge-tar, browse-kill-ring, boxquote, Top
@chapter browse-huge-tar - Browse files in a tarball memory-efficiently.

@noindent Author: Gareth Owen <gowen@@gwowen.freeserve.co.uk>

This uses tar (z)tvf to browse a gzipped tar file without opening the
whole thing, in a dired-stylee.  Knocked together in a fit of pique
after trying to read the xemacs source tarball in xemacs chewed through
all my swapspace one afternoon, and as an exercise in thesis avoidance.

The trade off is memory usage vs. speed.  This is very slow on large,
compressed tarballs, and each operation is slow individually, but
relatively low memory machines (like old 486s running one of the i386
unices) don't handle these well with jka-compress and tar-mode either.
XEmacs-20.4 was a 13MB gzipped tarball and the similarly packaged linux
kernel 2.0.36 was 7MB, so the memory savings can be pretty high too.

On small files the saving/price is pretty low, and
tar-mode/jka-compress have approximately 10^13 more features, so I'd
advise you to go that way.

@noindent Commands:

@table @samp
@item browse-huge-tar-file
Create a buffer containing a listing of FILENAME as a tar file.
@item browse-huge-tar-view-file-at-point
Extract the file at the point into a buffer for viewing.
@item browse-huge-tar-copy-file-at-point
Extract the file at the point and copy to a local file OUTFILE.
@end table

@node browse-kill-ring, cfengine, browse-huge-tar, Top
@chapter browse-kill-ring.el -  interactively insert items from kill-ring.

Ever feel that @kbd{C-y M-y M-y M-y ...} is not a great way of trying
to find that piece of text you know you killed a while back?  Then
browse-kill-ring.el is for you.

To use, type @command{@kbd{M-x} browse-kill-ring}.  You can bind
@command{browse-kill-ring} to a key, like:

@example
(global-set-key (kbd "C-c k") 'browse-kill-ring)
@end example

Even better than doing that, though, is to set up @kbd{M-y} such that
it invokes @command{browse-kill-ring} if the last command wasn't a
yank.  This great idea is from Michael Slass @email{mikesl@@wrq.com}.
Here is code (from him) to do this:

@example
(defadvice yank-pop (around kill-ring-browse-maybe (arg))
  "If last action was not a yank, run `browse-kill-ring' instead."
  (if (not (eq last-command 'yank))
      (browse-kill-ring)
    ad-do-it))

(ad-activate 'yank-pop)
@end example

(The emacs-goodies-el package could add a customizable variable to
set this up.  Ask if this would be useful. - @email{psg@@debian.org})

Note that the command keeps track of the last window displayed to
handle insertion of chosen text; this might have unexpected
consequences if you do @command{@kbd{M-x} browse-kill-ring}, then
switch your window configuration, and try to use the same @code{*Kill
Ring*} buffer again.

@node cfengine, clipper, browse-kill-ring, Top
@chapter cfengine - major-mode for editing cfengine scripts

@noindent Author: Dave Love <fx@@gnu.org>

Provides support for editing GNU Cfengine files, including
font-locking, Imenu and indention, but with no special keybindings.

@node clipper, coffee, cfengine, Top
@chapter clipper - Save strings of data for further use.

Clipper is a way to handle 'clips' of text with some persistance via handles.
A good example is something like the GNU Public License.  If you do a lot of
Free Software work and need to have a copy of the GPL for insertion in your
source files, you can save this text as a 'GPL' clip.  When you call
clipper-insert you will be prompted for a name and when you enter GPL this
will be inserted.

Clipper can also perform search and replacement on token names.  For example
if want the current buffer filename you can use the token
@code{CLIPPER_FILE_NAME_NONDIRECTORY}.

@noindent Available tokens are:

@code{CLIPPER_FILE_NAME_NONDIRECTORY}: The current filename
without its directory.  If this buffer isn't saved to disk then the
buffer name is used.

@code{CLIPPER_FILE_NAME_NONDIRECTORY_SANS_EXTENSION}: The current
filename without its directory and without an extension.

@noindent The following functions allow you to manipulate clipper:

@command{clipper-create} creates a new clip.

@command{clipper-delete} deletes an existing clip.

@command{clipper-insert} inserts a clip into the current buffer.

@command{clipper-edit-clip} edits an existing clip.

@noindent You might also want to setup personal key bindings:

@example
(global-set-key "\C-cci" 'clipper-insert)
(global-set-key "\C-ccc" 'clipper-create)
@end example

@node coffee, color-theme, clipper, Top
@chapter coffee.el - Submit BREW request to an RFC2324-compliant coffee device

This module provides an Emacs interface to RFC2324-compliant coffee
devices (Hyper Text Coffee Pot Control Protocol, or HTCPCP). It
prompts the user for the different additives, then issues a BREW
request to the coffee device.

coffee.el requires a special BREW-capable version of Emacs/W3 to be
installed.

Reference: <URL:ftp://ftp.isi.edu/in-notes/rfc2324.txt>

@quotation
You can probably guess how coffee.el came about ...yadda yadda
everything but make coffee ...yadda yadda ...
@end quotation

To do anything at all on emacs21, coffee requires the Debian packages
@file{w3-el} and @file{w3-url-e21} to be installed.  Then it will
prompt for coffee and sweetener type.  Then @code{url-retrieve} will
fail since it doesn't really support the coffee URL type.  So...
this package is really an elaborate joke.  Because of this, it's
longer autoloaded in Debian.  To try, do:

@example
M-x load-library coffee
M-x coffee 
@end example

@node color-theme, csv-mode, coffee, Top
@chapter color-theme - install color themes

@noindent Authors: Jonadab the Unsightly One <jonadab@@bright.net>,
Alex Schroeder <alex@@gnu.org>, Xavier Maillard <zedek@@gnu-rox.org>

@noindent Maintainer: Xavier Maillard <zedek@@gnu-rox.org>

@noindent Installing a color theme:

There are two ways to explore and install themes.  The first is to
customize the group @code{color-theme} and then the variable
@code{color-theme-selection} and select a theme, then set the variable
for the current session to test it out.  If you don't like it, either
select @code{Undo} immediately or select another theme and set it.  If
you like it, set and save the customization for future sessions.

The second method is to call the command @code{M-x
color-theme-select}.  That creates a Color Theme Selection buffer.
Press @key{RET} or @key{i} on a color theme to install it for the rest
of your session. If you want to install the theme in future sessions,
read the description of the theme you like and remember the name of
the color theme function.  Press @key{d} on a color theme in the Color
Theme Selection buffer to read the description.  Assuming you like the
Gnome2 theme, you'll find that the function to use is called
@code{color-theme-gnome2}.  Add the following to the end of your
@file{.emacs}

@example
(require 'color-theme)
(color-theme-gnome2)
@end example

@noindent Changing menu colors:

In Emacs 21 on X, you can set the menu colors and font using the
menu face.  Example for your .emacs file:

@example
  (set-face-font 'menu "7x14")
  (set-face-foreground 'menu "white").
@end example

If are using X, you can set the menu foreground and background using
a resource file, usually @file{.Xdefaults} or @file{.Xresources}.  Usually
@file{.Xdefaults} is used when you start your session using a display
manager such as xdm or gdm.  @file{.Xresources} is usually used when you
start X directly via a shell script such as startx.  If you set
Emacs*Background and Emacs*Foreground in such a resource file, the
foreground and background of Emacs including the menu will be set.
If your @file{.emacs} then loads a color theme, the foreground and
background are changed -- with the exception of the menu.  There is
no way to manipulate the menu foreground and background color from
elisp.  You can also set more specific menu resources for Emacs in
the resource file.  Here is a sample entry for your resource file:

@example
  Emacs*Background:		DarkSlateGray
  Emacs*Foreground:		wheat
@end example

@noindent Sharing your current color setup:

If you have already invested time in customizing Emacs faces, please
consider sharing your current setup.  Type @code{M-x
color-theme-submit} and mail the result to the maintainer of this
package (see above for mail addres).

If you want to make sure that all your customization was exported,
type @code{M-x list-faces-display} to get a list of all faces currently
defined.  This is the list of faces that @code{color-theme-print} uses.


@node csv-mode, ctypes, color-theme, Top
@chapter csv-mode - major mode for editing comma-separated value files.

@noindent Author: Francis J. Wright <F.J.Wright at qmul.ac.uk>

This package is intended for use with GNU Emacs 21 (only) and implements
the following commands to process records of CSV (comma-separated value)
type: @command{csv-sort-fields} and @command{csv-sort-numeric-fields}
sort respectively lexicographically and numerically on a specified field
or column; @command{csv-reverse-region} reverses the order.  They are
based closely on, and use, code in @file{sort.el}.
@command{csv-kill-fields} and @command{csv-yank-fields} respectively
kill and yank fields or columns, although they do not use the normal
kill ring.  @command{csv-kill-fields} can kill more than one field at
once, but multiple killed fields can be yanked only as a fixed group
equivalent to a single field.  @command{csv-align-fields} aligns fields
into columns; @command{csv-unalign-fields} undoes such alignment;
separators can be hidden within aligned records.  `csv-transpose'
interchanges rows and columns.  For details, see the documentation for
the individual commands.

CSV mode supports a generalised comma-separated values format
(character-separated values) in which the fields can be separated by any
of several single characters, specified by the value of the customizable
user option @code{csv-separators}.  CSV data fields can be delimited
by quote characters (and must if they contain separator characters).
This implementation supports quoted fields, where the quote characters
allowed are specified by the value of the customizable user option
@code{csv-field-quotes}.  By default, the only separator is a comma
and the only field quote is a double quote.  These user options can be
changed ONLY by CUSTOMIZING them, e.g. via the command
@command{customize-variable}.

CSV mode commands ignore blank lines and comment lines beginning with
the value of the buffer local variable @code{csv-comment-start},
which by default is #.  The user interface is similar to that of the
standard commands @command{sort-fields} and
@command{sort-numeric-fields}, but see the major mode documentation
below.

The global minor mode @command{csv-field-index-mode} provides display of
the current field index in the mode line, cf.
@command{line-number-mode} and @command{column-number-mode}.  It is on
by default.


@node ctypes, cyclebuffer, csv-mode, Top
@chapter ctypes - Enhanced font-lock support for custom defined types.

@noindent Author: Anders Lindgren <andersl@@andersl.com>

To activate this package in the Debian emacs-goodies-el package,
customize the group @code{ctypes}, toggle on the variable
@code{ctypes-install} and save for future seesions.  This will enable
the package.  Then start by using @command{ctypes-buffer} in a C file.

@noindent Description.

As most Emacs users know, Emacs can fontify source code buffers
using the `font-lock' package.  Most of the time it does a really
good job.  Unfortunately, the syntax of one of the most widely
spread languages, C, makes it difficult to fontify variable
declarations.  For example, what does the following line mean:

@verbatim
    hello(foo * bar);
@end verbatim

@enumerate
@item
A new function @code{hello} that takes one argument @code{bar} that is
a pointer to a @code{foo}, or;

@item
call the function @code{hello} with the result of @code{foo} multiplied by
@code{bar}.
@end enumerate

To answer the question correctly you must know whether @code{foo} is a
type or not.  Unfortunately, font-lock has no way of knowing this.

This package can search through source files hunting down typedefs.
When found, font-lock is informed and your source code will be even
more beautifully colored than before.

Each major mode has it's own set of types.  It is possible for one
major mode to inherit the types of another mode.

Currently, this package can parse C and C++ files.  (However, since
I do not use C++, the probability is high (about 12, on a scale
from 1 to 12) that I've missed something).  By default C++ inherits
the types defined for C mode.

@noindent Defining types:

The following commands are available to define and remove types:

@table @samp
@item ctypes-define-type
Add a type.
@item ctypes-define-type-in-mode
Add a type to another major mode.
@item ctypes-buffer
Scan a buffer for types.
@item ctypes-all-buffer
Scan all buffer for types.
@item ctypes-tags
Search through all files in a TAGS table.
@item ctypes-dir
Search a directory hierarchy for files.
@item ctypes-file
Search in a file for types.
@item ctypes-remove-type
Remove one type.
@item ctypes-remove-type-in-mode
Remove one type in another mode.
@item ctypes-clear-types
Forget all types.
@item ctypes-clear-types-all-modes
Forget all types in all major modes.
@end table

@noindent Edit types:

If you would like to view or change the types found you can use the
function @command{ctypes-edit}.  When done press @key{C-c C-c}.
Should you like do discard your changes just kill the buffer with
@key{C-x k}.

To edit the types for another major mode use the command
@command{ctypes-edit-types-for-mode}.

@noindent Saving types:

The commands @command{ctypes-write-file} and
@command{ctypes-read-file} can be used to save your hard-earned
collection of types to a file and to retrieve it later.

The default file name is stored in the variable @code{ctypes-file-name}.

Note that only one collection of types are managed.  Should you
prefer to keep one type file per project, remember to clear the set
of known types (using the command @command{ctypes-clear-types-all-modes})
before each new set is generated.

@noindent At Load:

It is possible to automatically add new types, or read specific
type files, when Emacs opens a file.

By adding a "Local Variables" section to the end of the file
containing the variables @code{ctypes-add-types-at-load} and/or
@code{ctypes-read-files-at-load} this can be accomplished.

For example:

@verbatim
/*
 * Local Variables:
 * ctypes-add-types-at-load: ("MyType" "YourType")
 * ctypes-read-files-at-load: (".ctypes")
 * End:
 */
@end verbatim

@noindent The `Auto Parse' mode:

This package can automatically search for new types in all visited
files.  Activate the minor mode @command{ctypes-auto-parse-mode} to enable
this feature.

Add the following line to your startup file to automatically
scan all visited files:
@example
 (ctypes-auto-parse-mode 1)
@end example

@noindent Example 1:

The following setup is for the really lazy person.  The keywords
collected during one session will be kept for the next, and all
visited files will be parsed in the boldly search for new types.
I would recomend using this approach only when you are keeping all
your types in one file.

@example
(require 'ctypes)
(setq ctypes-write-types-at-exit t)
(ctypes-read-file nil nil t t)
(ctypes-auto-parse-mode 1)
@end example

@noindent Example 2:

In this example, ctypes will not be not loaded until either c-mode
or c++-mode is activated.  When loaded, ctypes will read the type
file @file{~/.ctypes_std_c} (containing, for example, all types defined
in the standard C header files).

@example
(defun my-c-mode-hook ()
  (require 'ctypes)
  (turn-on-font-lock))
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

(defun my-ctypes-load-hook ()
  (ctypes-read-file "~/.ctypes_std_c" nil t t))
(add-hook 'ctypes-load-hook 'my-ctypes-load-hook)
@end example

@noindent CTypes, the true story:

Well, brave reader, are you willing to learn what this package
really is capable of?

Basically, it is a general purpose parsing package.  The default
settings just happened to specify a parser that looks for C
typedefs, and that the default action is to add the types found to
font-lock.

Be redefining the variable `ctypes-mode-descriptor' you can change
the behavior totally.  For example, you can use it to search for
all occurrences of XX (replace XX with whatever you like) in all
files edited in major mode YY (ditto for YY) and to perform ZZ-top
whenever a new XX is found.  (However, it might be difficult for
Emacs to grow a beard).

I will, however, in the document string, write "search for types"
when I really mean "Call the parser routine as specified by
`ctypes-mode-descriptor'".  Also, I write "Informing font-lock"
whenever I mean "Performing the default action as specified in
@code{ctypes-mode-descriptor}".
@node cyclebuffer, cua, ctypes, Top
@chapter cyclebuffer - Select buffer by cycling through.

Cyclebuffer is yet another way of selecting buffers.  Instead of
prompting you for a buffer name, cyclebuffer-forward switches to the
most recently used buffer, and repeated invocations of
cyclebuffer-forward switch to less recently visited buffers.  If you
accidentally overshoot, calling cyclebuffer-backward goes back.

I find this to be the fastest buffer-switching mechanism; it's like
@kbd{C-x b <RET>} without the @key{RET}, but it's not limited to the
most recently accessed buffer.  Plus you never have to remember buffer
names; you just keep cycling until you recognize the buffer you're
searching for.

@noindent Suggested keybings:
@example
(global-set-key "\M-N" 'cyclebuffer-forward)
(global-set-key "\M-P" 'cyclebuffer-backward)
@end example

@node cua, cwebm, cyclebuffer, Top
@chapter cua - emulate CUA key bindings

@noindent Author: Kim F. Storm <storm@@cua.dk>
@noindent http://www.cua.dk/

This file is part of Emacs 22.

The command @command{M-x cua-mode} sets up key bindings that are
compatible with the Common User Access (CUA) system used in many other
applications.  @key{C-x} means cut (kill), @key{C-c} copy, @key{C-v}
paste (yank), and @key{C-z} undo.  Standard Emacs commands like @key{C-x
C-c} still work, because @key{C-x} and @key{C-c} only take effect when
the mark is active.  

You may also use Customize the variable @code{cua-mode} to turn it
on.  You may customize its features and fine tune its behaviour.

CUA mode also provides enhanced rectangle support with visible
rectangle highlighting.  Use `Shift-RET' to start a rectangle,
extend it using the movement commands, and cut or copy it using
`C-x' or `C-c'.

@node cwebm, dedicated, cua, Top
@chapter cwebm - CWEB/WEB modified mode

This is a modified and renamed version of cweb.el

@noindent Differences from cweb.el:

Key bindings:
@example
  1. @key{C-\} becomes @key{C-cwy}
  2. @key{M-\} becomes @key{C-cws}
  3. @key{C-z} becomes @key{C-cwr}
@end example
The first and second modifications are important for me because:
@example
  1. @key{C-\} switches keyboard layout.
  2. I've used to use @key{M-\}.
@end example
The third modification was made to unify key bindings.

@noindent Description

Some WEB-oriented functions whose main purpose is to maintain a stack of
module names that are "pending" as you are writing a program. When you
first think of a module that needs to be written later, put it into the
pending list (by typing @key{CTL-Z} instead of @key{@@>} after the
name). Later you can say @key{CTL-\} to retrieve a pending name (and if
you want to cycle through the pending names, @key{ESC-y} after
@key{CTL-\} will do it, just as @key{ESC-y} works after a yank).  After
you've said @key{CTL-\}, the current region is the name just removed
from the pending list. If you change your mind, you can put it back
again by saying @key{ESC-\}. If you had put it into the pending list by
mistake, you can get rid of it by using the normal @key{CTL-W} operation
(kill-region).  The following code binds the new commands to
@key{CTL-Z}, @key{CTL-\}, and @key{ESC-\} in all modes. You may prefer
other bindings, of course.  @key{CTL-Z} is normally "suspend emacs", but
it is best not used when emacs has its own window as it usually does
nowadays; if you need the old @key{CTL-Z}, you might rather bind it to
@key{CTL-X CTL-Z}.  @key{CTL-\} is normally undefined.  @key{ESC-\} is
normally "delete space", but @key{ESC-space DEL} does that easily too.


@node dedicated, df, cwebm, Top
@chapter dedicated - a very simple minor mode for dedicated buffers

@noindent Author: Eric Crampton <eric@@atdesk.com>

This minor mode allows you to toggle a window's "dedicated" flag.
When a window is "dedicated", Emacs will not select files into that
window. This can be quite handy since many commands will use
another window to show results (e.g., compilation mode, starting
info, etc.) A dedicated window won't be used for such a purpose.

Dedicated buffers will have "D" shown in the mode line.

Use the command:
@example
M-x dedicated-mode
@end example

@node df, dict, dedicated, Top
@chapter df - display space left on partitions in the mode-line.

This is a quick hack to display disk usage in the mode-line.

If you work with a lot of users sharing the same partition, it
sometimes happens that there is no space left to save your work, which
may drive you to serious brain damage when you lose important work.
This package allows you to have the available disk space and the buffer
size displayed in the mode-line, so you know when you can save your
file or when it's time to do some cleanup.

df is simple to use. Add something like
@example
(df "/home")
@end example
in your .emacs if you want to scan @file{/home}.  Even simpler, enable
it by customizing the group @code{df} where you can toggle on the
variable @code{df-run-on-startup}.

@node dict, diminish, df, Top
@chapter dict - Emacs interface to dict client

This package is an Emacs wrapper around the shell @file{dict} command
and provides an easy and comfortable (from my point of view) access to
the dictd server from Emacs.

The package provides several key bindings, which are customisation variables,
so you can change them easily:

@itemize @bullet
@item
@key{C-c d d} for running dict with options defined by
customisation variables described below.

@item
@key{C-c d r} for running dict on region as a single word.

@item
@key{C-c d m} for running dict on every word in the region.

@item
@key{C-c d s} for running dict to perform search on the given server.

@item
@key{C-c d w} for running wordinspect GUI dict client.
@end itemize

The Debian emacs-goodies-el package doesn't setup these keys by
default.  The first time you use @code{dict} in a session you must do
so manually with @code{M-x dict}.  Thereafter the keybindings will
work.  If someone requests it, a customization variable could be added
to enable them automatically.

Descriptions of all customisation variables are given below in their
definitions, and of cause you can find them in the customization of
the grou @code{Dict}.

The author hopes you find the program useful and would like to know
your opinion about the program, improvement suggestions and of course
bug reports.  Mail them to max-appolo@@mail.ru

@node diminish, dirvars, dict, Top
@chapter diminish - Diminish minor-mode's display

Minor modes each put a word on the mode line to signify that they're
active.  This can cause other displays, such as % of file that point is
at, to run off the right side of the screen.  For some minor modes, such
as mouse-avoidance-mode, the display is a waste of space, since users
typically set the mode in their .emacs & never change it.  For other
modes, such as my jiggle-mode, it's a waste because there's already a
visual indication of whether the mode is in effect.

A diminished mode is a minor mode that has had its mode line
display diminished, usually to nothing, although diminishing to a
shorter word or a single letter is also supported.  This package
implements diminished modes.

@noindent To create diminished modes interactively, type
@example
@kbd{M-x} diminish
@end example
@noindent to get a prompt like
@example
  Diminish what minor mode:
@end example
@noindent and respond with the name of some minor mode, like
@code{mouse-avoidance-mode}. You'll then get this prompt:
@example
  To what mode-line display:
@end example
Respond by just hitting @key{<Enter>} if you want the name of the mode
completely removed from the mode line.  If you prefer, you can abbreviate
the name.  If your abbreviation is 2 characters or more, such as "Av",
it'll be displayed as a separate word on the mode line, just like minor
modes' names.  If it's a single character, such as "V", it'll be scrunched
up against the previous word, so for example if the undiminished mode line
display had been "Abbrev Fill Avoid", it would become "Abbrev FillV".
Multiple single-letter diminished modes will all be scrunched together.
The display of undiminished modes will not be affected.

To find out what the mode line would look like if all diminished modes
were still minor, type @command{@key{M-x} diminished-modes}.  This
displays in the echo area the complete list of minor or diminished
modes now active, but displays them all as minor.  They remain
diminished on the mode line.

To convert a diminished mode back to a minor mode, type
@command{@key{M-x} diminish-undo} to get a prompt like
@example
  Restore what diminished mode:
@end example
Respond with the name of some diminished mode.  To convert all
diminished modes back to minor modes, respond to that prompt
with @code{diminished-modes} (unquoted, & note the hyphen).

When you're responding to the prompts for mode names, you can use
completion to avoid extra typing; for example, m o u SPC SPC SPC
is usually enough to specify mouse-avoidance-mode.  Mode names
typically end in "-mode", but for historical reasons
auto-fill-mode is named by "auto-fill-function".

To create diminished modes noninteractively in your .emacs file, put
code like
@example
  (require 'diminish)
  (diminish 'abbrev-mode "Abv")
  (diminish 'jiggle-mode)
  (diminish 'mouse-avoidance-mode "M")
@end example
near the end of your .emacs file.  It should be near the end so that any
minor modes your .emacs loads will already have been loaded by the time
they're to be converted to diminished modes.

Alternatively, you can setup dimished modes using the customize
interface by customizing the variable @code{diminished-minor-modes}.
The same caveat as above applies and the minor mode libraries should
be loaded in ~/.emacs before the @code{(custom-set-variables} line.

@node dirvars, edit-env, diminish, Top
@chapter dirvars - local variables that apply to an entire directory.

Emacs allows you to specify local variable values for use when
editing a file either in the first line or in a local variables
list.

This file provides similar functionality, but for an entire
directory tree.

You simply place an .emacs-dirvars file in the root of your
project's tree, and you can then set emacs variables like you would
in a Local Variables: section at the end of a file.  E.g. the
contents of a typical dirvars file might look like this:

@example
   ;; -*- emacs-lisp -*-
   ;;
   ;; This file is processed by the dirvars emacs package.  Each variable
   ;; setting below is performed when this dirvars file is loaded.
   ;;
   indent-tabs-mode: nil
   tab-width: 8
   show-trailing-whitespace: t
   indicate-empty-lines: t
@end example

Much of this code is stolen and modified from the standard Emacs
files.el

This code refuses to set any symbol that meets any of these
criteria (this criteria is stolen from files.el):

@itemize @bullet
@item
the symbol is in the ignored-local-variables list

@item
the symbol has the risky-local-variable property.

@item
the symbol name ends in -hook(s), -function(s), -form(s),
    -program, -command, or -predicate.
@end itemize

To use this package, it must be loaded.  You can do this by adding a require
statement to your @file{~/.emacs} file:

@example
  (require 'dirvars)
@end example

@node edit-env, egocentric, dirvars, Top
@chapter edit-env - display and edit environment variables

@noindent Author: Benjamin Rutt <brutt@@bloomington.in.us>

This file uses the widget library to display, edit, delete and add
environment variables.  Inspired by @key{G c} in a gnus *Group* buffer.
Bug reports or patches are welcome, please use the above email
address.

@noindent To use it, do:

@example
M-x edit-env
@end example

to enter the environment editor.  To change variables, simply edit
their values in place.  To delete variables, delete their values.  To
add variables, add a new rows to the list at the bottom by pressing
@key{INS}; then, add a new name/value pair of the form VAR=VALUE
(e.g. FOO=BAR).  After changing and/or deleting and/or adding
environment variables, press the @key{done} button at the top.  Note that
environment variable changes will only be visible to your current
emacs session or child processes thereof.

@node egocentric, ff-paths, edit-env, Top
@chapter egocentric - highlight your name inside emacs buffers

@noindent Author: Benjamin Drieu <bdrieu@@april.org>

This package highlights occurrences of your own name and/or
nickname.  Quite useful for daily kibozing.

Main purpose is to be used within your favourite Emacs mailer.  To
use egocentric.el with Gnus, simply use the following inside your
Gnus init file.

@example
(add-hook 'gnus-article-prepare-hook 'egocentric-mode)
(autoload 'egocentric-mode "egocentric"
          "Highlight your name or various keywords in buffers")
@end example

@node ff-paths, filladapt, egocentric, Top
@chapter ff-paths - searches certain paths to find files.

This code allows you to use C-x C-f normally most of the time, except that
if the requested file doesn't exist, it is checked against a list of
patterns for special paths to search for a file of the same name.

@noindent Examples:
@itemize @bullet
 @item a file extension of @file{.bib} will cause to search the path
defined in $BSTINPUTS or $BIBINPUTS for the file you requested.
 @item a file extension of @file{.h} will cause the @file{/usr/include/}
and @file{/usr/local/include/} directory trees to be searched.
 @item a file extension of @file{.sty} causes a search of TEXINPUTS and
of all directories below @file{"/usr/share/texmf/tex/}
 @item a file extension of @file{.el} causes a search of the path set in
the emacs variable @code{load-path}.
 @item If the aboves searches don't return a match, the filename is
searched for using the @file{locate} command (if available on your
system).
 @item gzip-compressed files (@file{.gz}) will also be found by ff-paths
if the package jka-compr is present.  If you use some other package,
simply set the @code{ff-paths-gzipped} variable to t:
@end itemize

If one file is found, or many files of the same name are found, then the
*completions* buffer is displayed with all possibilities, including the
non-existing path you first provided.  Selecting it creates the new
file.

This package runs as a find-file-not-found-hooks hook, and so will
happily live alongside other such file-finding mechanisms (e.g.
PC-look-for-include-file PC-try-load-many-files vc-file-not-found-hook)

The patterns to test against filenames and the associated paths to search
for these files can be modified by the user by editing the variable
@code{ff-paths-list}

I suggest that you use ffap.el by Michelangelo Grigni <mic@@cs.ucsd.edu>,
now part of GNU Emacs.  His package will guess the filename from the
text under the editing point.  It will search for an existing file in
various places before you even get the "File: " prompt.  ff-paths will
provide itself to ffap as an additional tool to locate the file before
you ever see a prompt.  ff-paths behaves slightly differently with ffap
than it does with find-file: if the file path selected under point by
ffap does not exist, it is not shown in the completions buffer along
with existing paths.  If only one existing path is found for said file,
it is placed in the minibuffer at the ffap prompt.  Also, since using
the `locate' command is fairly aggressive, it is not used in the ffap
toolkit.

@noindent Installation:

ff-paths installs itself as a hook in find-file-not-found-hooks for
find-file.  If ffap is installed, ff-paths installs itself as a
toolbox hook in ffap-alist.

To use it, customize the variable @code{ff-paths-install}.

To also enable ffap, customize the variable @code{ff-paths-use-ffap}.

Both of the above are enabled if you customize the variable
@code{emacs-goodies-el-defaults} to t (its aggressive state).

You may alter various settings of @code{ff-paths} using the
customization group @code{ff-paths}.

@node filladapt, floatbg, ff-paths, Top
@chapter filladapt - adaptively set fill-prefix and overload filling functions

These functions enhance the default behavior of Emacs' Auto Fill
mode and the commands @code{fill-paragraph}, @code{lisp-fill-paragraph},
@code{fill-region-as-paragraph} and @code{fill-region}.

The chief improvement is that the beginning of a line to be
filled is examined and, based on information gathered, an
appropriate value for fill-prefix is constructed.  Also the
boundaries of the current paragraph are located.  This occurs
only if the fill prefix is not already non-nil.

The net result of this is that blurbs of text that are offset
from left margin by asterisks, dashes, and/or spaces, numbered
examples, included text from USENET news articles, etc. are
generally filled correctly with no fuss.

Note that in this release Filladapt mode is a minor mode and it is
_off_ by default.  If you want it to be on by default, use
@example
  (setq-default filladapt-mode t)
@end example

@code{M-x filladapt-mode} toggles Filladapt mode on/off in the current
buffer.

Filladapt works well with any language that uses comments that
start with some character sequence and terminate at end of line.
So it is good for Postscript, Lisp, Perl, C++ and shell modes.

Use
@example
    (add-hook 'text-mode-hook 'turn-on-filladapt-mode)
@end example
to have Filladapt always enabled in Text mode, or customize the
variable @code{filladapt-turn-on-mode-hooks}.

In C mode, @code{c-setup-filladapt} arranges for filling of block
style comments (@pxref{Text Filling and Line Breaking,,, ccmode, CC
Mode}).

@example
    (add-hook 'c-mode-hook 'turn-on-filladapt-mode)
    (add-hook 'c-mode-hook 'c-setup-filladapt)
@end example

Old versions of CC Mode (eg.@: the version with Emacs 20) don't have
@code{c-setup-filladapt} and you may instead want to use
@code{turn-off-filladapt-mode}.

In many cases, you can extend Filladapt by adding appropriate entries
to the following three custiomizable variables.  See
@code{postscript-comment} or @code{texinfo-comment} as a sample of
what needs to be done.

@example
    filladapt-token-table
    filladapt-token-match-table
    filladapt-token-conversion-table
@end example

@node floatbg, folding, filladapt, Top
@chapter floatbg - slowly modify background color

Floatbg slowly modifies the backgound color through an hsv color
model, like floatbg for X-Windows by Jan Rekers.

To enable it, customize the variable @code{floatbg-mode}.
There are other tweaks to set in the customization group
@code{floatbg}.

@node folding, framepop, floatbg, Top
@chapter folding - A folding-editor-like minor mode.

@noindent Author:      Jamie Lokier    <jamie@@imbolc.ucc.ie>
Jari Aalto      <jari.aalto@@poboxes.com>
Anders Lindgren <andersl@@csd.uu.se>

@noindent Preface

     This package provides a minor mode, compatible with all major
     editing modes, for folding (hiding) parts of the edited text or
     program.

     Folding mode handles a document as a tree, where each branch
     is bounded by special markers @{@{@{ and @}@}@}. A branch can be
     placed inside another branch, creating a complete hierarchical
     structure.

     Folding mode can CLOSE a fold, leaving only the initial `@{@{@{'
     and possibly a comment visible.

     It can also ENTER a fold, which means that only the current
     fold will be visible, all text above `@{@{@{' and below `@}@}@}'
     will be invisible.

     Please note, that the maintainers do not recommend to use only
     folding for you your code layout and navigation. Folding.el is
     on its best when it can "chunk" large sections of code inside
     folds. The larger the chunks, the more the usability of
     folding will increase. Folding.el is not meant to hide
     individual functions: you may be better served by hideshow.el
     or imenu.el (which can parse the function indexes)

@menu
* folding Installation::        
* folding documentation::       
* folding custom::              
* folding examples::            
@end menu


@node folding Installation, folding documentation, folding, folding
@section Folding installation

     The best way to use folding is to turn it on explicitely when
     needed using @command{M-x folding-mode}.

     But if you always use folding, then consider adding these lines
     to your @file{~/.emacs} file:

@example
         (if (load "folding" 'nomessage 'noerror)
             (folding-mode-add-find-file-hook))
@end example

     The same folding marks can be used in `vim' editor command
     "set fdm=marker".

@noindent To remove folding, call `M-x' `folding-uninstall'.

@node folding documentation, folding custom, folding Installation, folding
@section Folding documentation

@noindent Tutorial

     To start folding mode, give the command: @command{M-x
folding-mode}. The mode line should contain the string "Fld"
indicating that folding mode is activated.

     When loading a document containing fold marks, Folding mode is
automatically started and all folds are closed. For example when
loading my init file, only the following lines (plus a few lines of
comments) are visible:

@verbatim
;;{{{ General...
;;{{{ Keyboard...
;;{{{ Packages...
;;{{{ Major modes...
;;{{{ Minor modes...
;;{{{ Debug...
@end verbatim

     To enter a fold, use @key{C-c @ >}. To show it without entering, use
@key{C-c @ C-s}, which produces this display:

@verbatim
;;{{{ Minor modes

;;{{{ Follow mode...
;;{{{ Font-lock mode...
;;{{{ Folding...

;;}}}
@end verbatim

     To show everything, just as the file would look like if Folding
mode hadn't been activated, give the command @command{M-x
folding-open-buffer}, normally bound to @key{C-c @ C-o}.  To
close all folds and go to the top level, the command
@command{folding-whole-buffer} could be used.

@noindent Mouse support

     Folding mode v2.0 introduced mouse support. Folds can be shown or
hidden by simply clicking on a fold mark using mouse button 3.  The
mouse routines have been designed to call the original function bound
to button 3 when the user didn't click on a fold mark.

@noindent The menu

     A menu is placed in the "Tools" menu. Should no Tools menu exist
(Emacs 19.28) the menu will be placed in the menu bar.

@noindent ISearch

     When searching using the incremental search (C-s) facilities,
folds will be automagically entered and closed.

@noindent Problems

    Uneven fold marks

     Oops, I just deleted some text, and a fold mark got deleted!
What should I do?  Trust me, you will eventually do this sometime. the
easiest way is to open the buffer using @command{folding-open-buffer}
(@key{C-c @ C-o}) and add the fold mark by hand. To find mismatching
fold marks, the package `occur' is useful. The command:

@verbatim
         M-x occur RET {{{\|}}} RET
@end verbatim

     will extract all lines containing folding marks and present them
in a separate buffer.

     Even though all folding marks are correct, Folding mode sometimes
gets confused, especially when entering and leaving folds very
often. To get it back on track, press @key{C-g} a few times and give the
command @command{folding-open-buffer} (@key{C-c @ C-o}).

    Fold must have a label

     When you make a fold, be sure to write some text for the name of
the fold, otherwise there may be an error "extraneous fold mark..."
Write like this:

@verbatim
         ;;{{{ Note
         ;;}}}
@end verbatim

     instead of

@verbatim
         ;;{{{
         ;;}}}
@end verbatim

    folding-whole-buffer doesn't fold whole buffer

     If you call commands @command{folding-open-buffer} and
@command{folding-whole-buffer} and notice that there are open fold
sections in the buffer, then you have mismatch of folds somewhere. Run
@command{M-x occur} and type the regexp @code{@{@{@{\|@}@}@}} to check where
is the extra open or closing fold mark.

@noindent Folding and outline modes

     Folding mode is not the same as Outline mode, a major and minor
mode which is part of the Emacs distribution. The two packages do,
however, resemble each other very much.  The main differences between
the two packages are:

@itemize @bullet
@item 
Folding mode uses explicit marks, @code{@{@{@{} and `@}@}@}', to
mark the beginning and the end of a branch.
Outline, on the other other hand, tries to use already
existing marks, like the `\section' string in a TeX
document.

@item 
Outline mode has no end marker which means that it is
impossible for text to follow a sub-branch.

@item 
Folding mode use the same markers for branches on all depths,
Outline mode requires that marks should be longer the
further, down in the tree you go, e.g `\chap', \section',
`\subsection', `\subsubsection'. This is needed to
distinguish the next mark at the current or higher levels
from a sub-branch, a problem caused by the lack of
end-markers.

@item 
Folding mode has mouse support, you can navigate through a
folded document by clicking on fold marks. (The XEmacs version
of Outline mode has mouse support.)

@item 
The Isearch facilities of Folding is capable of
automatically to open folds. Under Outline, the the entire
document must be opened prior isearch.
@end itemize

     In conclusion, Outline mode is useful when the document being
edited contains natural markers, like LaTeX. When writing code natural
markers are hard to find, except if you're happy with one function per
fold (I'm not).

@noindent Personal reflections by Anders Lindgren

     When writing this, version 2.0 of Folding mode is just about to
be released. The current version has proven itself stable during a
months of testing period. In other words: we haven't had time to touch
the folding for quite some time.

     Our plan was from the beginning to rewrite the entire package,
including replacing the core of the program, written using old Emacs
technology (selective display), and replace it with modern
equivalences, like overlays or text-properties for Emacs and extents
for XEmacs.

     Unfortunately, this has not yet been done, even though we have
implemented most other items on our to-do agenda.

     It is not likely that any of us, even in the near future, will
find the time required to rewrite the core of the package. Since the
package, in it's current state, is much more powerful than the
original, we have decided to release this code.

@node folding custom, folding examples, folding documentation, folding
@section Folding customization

@noindent Customization: general

     The behavior of Folding mode is controlled mainly by a set of
Emacs Lisp variables. This section will discuss the most useful ones,
for more details please see the code. The descriptions below assumes
that you know a bit about how to use simple Emacs Lisp and knows how
to edit ~/.emacs, your init file.

@noindent Customization: hooks

     The normal procedure when customizing a package is to write a
function doing the customization. The function is then added to a hook
which is called at an appropriate time. (Please see the example
section below.)  The following hooks are available:
@table @samp
@item folding-mode-hook
Called when folding mode is activated.
@item <major mode>-folding-hook
Called when starting folding mode in a buffer with major
mode set to <major mode>. (e.g. When editing C code
the hook `c-mode-folding-hook' is called.)
@item folding-load-hook
Called when folding mode is loaded into Emacs.
@end table

@noindent Customization: The Mouse

     The variable @code{folding-behave-table} contains the actions
which should be performed when the user clicks on an open fold, a
closed fold etc.  For example, if you prefer to `enter' a fold rather
than `open' it you should rebind this variable.

     The variable @code{folding-default-mouse-keys-function} contains
the name of the function used to bind your mouse keys. To use your own
mouse bindings, create a function, say
@command{my-folding-bind-mouse}, and set this variable to it.

@noindent Customization: Keymaps

     When Emacs 19.29 was released, the keymap was divided into strict
parts. (This division existed before, but a lot of packages, even the
ones delivered with Emacs, ignored them.)

@verbatim
         C-c <letter>    -- Reserved for the users private keymap.
         C-c C-<letter>  -- Major mode. (Some other keys are
                            reserved as well.)
         C-c <Punctuation Char> <Whatever>
                         -- Reserved for minor modes.
@end verbatim

     The reason why @key{C-c@@} was chosen as the default prefix is
that it is used by outline-minor-mode. It is not likely that few
people will try to use folding and outline at the same time.

     However, old key bindings have been kept if possible.  The
variable @code{folding-default-keys-function} specifies which function
should be called to bind the keys. There are various function to
choose from how user can select the keybindings.  To use the old key
bindings, add the following line to your init file:

@verbatim
         (setq folding-default-keys-function
               'folding-bind-backward-compatible-keys)
@end verbatim

     To define keys similar to the keys used by Outline mode, use:

@verbatim
         (setq folding-default-keys-function
               'folding-bind-outline-compatible-keys)
@end verbatim

@noindent Customization: adding new major modes

     To add fold marks for a new major mode, use the function
@command{folding-add-to-marks-list}. Example:

@verbatim
         (folding-add-to-marks-list 
          'c-mode "/* {{{ " "/* }}} */" " */" t)
         (folding-add-to-marks-list 
          'java-mode "// {{{ " "// }}}" nil t)
@end verbatim

@noindent Customization: ISearch

     If you don't like the extension folding.el applies to isearch,
set the variable `folding-isearch-install' to nil before loading this
package.

@node folding examples,  , folding custom, folding
@section Folding examples

@noindent Example: personal setup

     To define your own key binding instead of using the standard
ones, you can do like this:

@verbatim
          (setq folding-mode-prefix-key "\C-c")
          ;;
          (setq folding-default-keys-function
              '(folding-bind-backward-compatible-keys))
          ;;
          (setq folding-load-hook 'my-folding-load-hook)


          (defun my-folding-load-hook ()
            "Folding setup."

            (folding-install)  ;; just to be sure

            ;; ............................................... markers ...

            ;;  Change text-mode fold marks. Handy for quick
            ;;  sh/perl/awk code

            (defvar folding-mode-marks-alist nil)

            (let* ((ptr (assq 'text-mode folding-mode-marks-alist)))
              (setcdr ptr (list "# {{{" "# }}}")))

            ;; ........................................ bindings ...

            ;;  Put `folding-whole-buffer' and `folding-open-buffer'
            ;;  close together.

            (defvar folding-mode-prefix-map nil)

            (define-key folding-mode-prefix-map "\C-w" nil)
            (define-key folding-mode-prefix-map "\C-s"
                        'folding-show-current-entry)
            (define-key folding-mode-prefix-map "\C-p"
                        'folding-whole-buffer))
@end verbatim

@noindent Example: changing default fold marks

     In case you're not happy with the default folding marks, you can
change them easily. Here is an example

@verbatim
         (setq folding-load-hook 'my-folding-load-hook)

         (defun my-folding-load-hook ()
           "Folding vars setup."
           (let* ((ptr (assq 'text-mode folding-mode-marks-alist)))
             (setcdr ptr (list "# {{{" "# }}}"))))
@end verbatim


@noindent Example: choosing different fold marks for mode

     Suppose you sometimes want to use different fold marks for the
major mode: e.g. to alternate between "# @{@{@{" and "@{@{@{" in `text-mode'
Call @command{M-x my-folding-text-mode-setup} to change the marks.

@verbatim
   (defun my-folding-text-mode-setup (&optional use-custom-folding-marks)
     (interactive
       (list (y-or-n-p "Use Custom fold marks now? ")))
     (let* ((ptr (assq major-mode folding-mode-marks-alist))
            (default-begin "# {{{")
            (default-end   "# }}}")
            (begin "{{{")
            (end   "}}}"))
       (when (eq major-mode 'text-mode)
         (unless use-custom-folding-marks
           (setq  begin default-begin  end default-end)))
       (setcdr ptr (list begin end))
       (folding-set-marks begin end)))
@end verbatim

@noindent Example: AucTex setup

     Suppose you're using comment.sty with AucTeX for editing LaTeX2e
documents and you have these comment types. You would like to be able
to set which of these 3 is to be folded at any one time, using a
simple key sequence: move back and forth easily between the different
comment types, e.g., "unfold everything then fold on \x".

@verbatim
         \O   ...  \endO
         \L   ...  \endL
         \B   ...  \endB

         (setq folding-load-hook 'my-folding-load-hook)

         (defun my-folding-load-hook ()
           "Folding vars setup."
           (let ((ptr (assq 'text-mode folding-mode-marks-alist)))
             (setcdr ptr (list "\\O" "\\endO"))
             (define-key folding-mode-prefix-map "C"
                        'my-folding-marks-change)))

         (defun my-folding-marks-change (&optional selection)
           "Select folding marks: prefixes nil, C-u and C-u C-u."
           (interactive "P")
           (let ((ptr (assq major-mode folding-mode-marks-alist))
                 input)
             (when (string-match "^\\(plain-\\|la\\|auc\\)?tex-"
                                 (symbol-name  major-mode))
               (setq input
                     (read-string "Latex \\end(X) Marker (default O): "
                                  nil nil "O" nil))
               (setq input (upcase input))
               (turn-off-folding-mode)
               (folding-add-to-marks-list
                major-mode 
                (concat "\\" input) (concat "\\end" input) nil nil t)
               ;; (setcdr ptr (list (concat "\\" input) (concat "\\end" input)))
               (turn-on-folding-mode))))
         ;;  End of example
@end verbatim


@node framepop, highlight-beyond-fill-column, folding, Top
@chapter framepop - display temporary buffers in a dedicated frame

Framepop makes temporary buffers such as *Help* or *Completions*
appear in a separate frame which is easily dismissed when no longer
needed.

@menu
* announcement::                Announcement on gnu-emacs-sources
* Purpose::                     What's it's for
* Quick Setup::                 Get going within a minute
* Customization::               Extra settings
* For elisp hackers::           More extra seetings for teh adventurous
* Bugs::                        Or limitations
@end menu

@node announcement, Purpose, framepop, framepop
@section announcement on gnu-emacs-sources

@noindent FROM: David M Smith
@noindent DATE: 08/14/1996 10:01:29
@noindent SUBJECT:  Framepop 2.19

@noindent Get that *Completions* buffer outta my face!!!"

Are you tired of hearing this plaintive cry echoing around your
office? Are you sick of having two-line *Help* messages taking up half
of your Emacs frame? Are you endlessly frustrated by having that
useful mode description in *Help* being overwritten by some useless
output from @key{C-h k}? Well, have WE got the package for YOU!

Yes, it`s FramePop -- the NEW and IMPROVED successor to that old Emacs
18 favourite, popper.el. As if by MAGIC, the ``progeny of popper``
takes care of temporary buffers like *Help* and *Completions* by
making them appear in their own, separate shrink-wrapped FramePop
frame, to be read at your leisure without destroying your
painstakingly created window configuration. The framepop frame is
automatically sized to your taste, taking up as little of your
precious VDU screen real estate as possible. And, what`s more, it
comes in *your choice* of colours and font. How much would you expect
to pay for this INCREDIBLY USEFUL feature? Well, DON`T ANSWER! Because
you also get the amazing FramePop Frame ToolKit KeyMap, providing
every command you would ever need to manipulate the amazing FramePop
Frame. You can scroll it, you can resize it, you can even iconify it
completely. A complete suite of manipulation commands, yours as our
gift even if you decide to return the FramePop package.

A package like this could cost hundreds of pesetas in the stores, but
how much would @strong{you} expect to pay? Well, DON`T ANSWER! Because you
also get the incredible FramePop Frame Duplicator! Got a temporary
frame you want to keep around as a reference? Just hit those keys, and
in just microseconds you can have a copy of your own -- in yet another
shrink-wrapped Emacs frame -- to keep as your own for as long as you
wish. But what if it`s a *Help* buffer, I hear you ask? Won`t it be
overwritten next time a *Help* buffer is created? That`s no problem
for the FramePop Frame Duplicator! Just give it a prefix argument, and
it not only copies the frame but it copies the buffer AS WELL! It even
gives it a stylishly chosen NEW NAME!

That`s right, you get the FramePop frame in your choice of colours and
font, the FramePop Frame ToolKit KeyMap and the amazing FramePop Frame
Duplicator, @strong{plus} the no-money-back GPL "NO WARRANTY" guarantee, for
the incredible, never-to-be-repeated price of ABSOLUTELY NOTHING!
Remember, FramePop is not available in stores.  Eval now! Send no
money -- we won`t bill you. Eval now!

SPECIAL OFFER: If you install FramePop in the next 48 hours you`ll
receive FramePop: the Deluxe Limited Edition 2.19! All the features of
the original FramePop 2.17 plus extra bugfixes, leaner code (which
doesn`t require advice) and better interaction with completion and the
minibuffer. Extra value at no extra cost if you act now!

@node Purpose, Quick Setup, announcement, framepop
@section Purpose

Defines temp-buffer-show-function to display buffers in a dedicated
temporary frame (and so requires a display which can accomodate
separate frames). The frame is automatically shrink-wrapped to just
contain the buffer (restricted to a maximum and minimum
size). Buffers thus affected include *Help*, completion buffers and
buffer listings.

Commands are provided for manipulating the FramePop frame:
scrolling, resizing, window manager functions, and also a facility
for copying the displayed buffer. You need never lose that handy
*Help* buffer again!

Framepop is orthogonal to the Emacs' special-display-buffers feature;
you can use both at the same time if you so desire.  You can make
special-display buffers appear in the FramePop frame as well, if you
wish; see below.

@node Quick Setup, Customization, Purpose, framepop
@section Quick Setup

Since framepop is already installed and byte-compiled in this packaged
form, this setup can all be done using the custom interface with
@command{M-x customize-group framepop}.

To use framepop, you must first enable it.  Customize the variable
@code{framepop-enable} to @code{on}.

Then you'll need to enable a keybing to the @code{framepop-map}
keymap.  We suggest using @key{F2}.  Customize the variable
@code{framepop-enable-keybinding} and select @key{F2} or some other
string that represents a key you'd prefer.

You may then optionally extend Framepop's functionality by allowing it
to use the @code{advice} library to advise other functions.  Select
this option by customizing the variable @code{framepop-use-advice} to
@code{on}.

Save all these settings and you are ready to go.

Type @command{M-x framepop-display-help} (bound to @key{?} in
framepop-map) for more information about the available commands
to control the new frame.  For example, @key{F2} iconizes the Framepop
frame, so if you used the suggested binding of @key{F2} above for the
Framepop keymap pressing @key{F2} twice will dismiss the frame.

@node Customization, For elisp hackers, Quick Setup, framepop
@section Customization

More detailed customization is available via @code{M-x customize-group
RET framepop'}.  This sections discusses some of them.

The maximum and minimum height of the framepop buffer are
determined by the user options @code{framepop-max-frame-size} and
@code{framepop-min-frame-size}.

The variable @code{framepop-frame-parameters} holds the Framepop frame
parameters. You can define colours, fonts and positions for the
Framepop frame here. For example:

@verbatim
  (setq framepop-frame-parameters
     '((name . nil)                     ; use buffer name
       (unsplittable . t)               ; always include this
       (menu-bar-lines . 0)             ; no menu bar
       (minibuffer . nil)               ;    or minubuffer
       (left . -1)                      ; top left corner of screen,
       (top . 30)                       ;    away from my main frame
       (width . 71)                     ; narrower, so it fits nicely
       (background-color . "orchid4")   ; I like purple. So sue me.
       (foreground-color . "cornsilk")
       (font . "-*-courier-bold-o-*-*-12-*-*-*-m-*-*-*")))
@end verbatim

But you may use the customize interface to edit
@code{framepop-frame-parameters}.

By default, only temporary buffers (which call
@code{temp-buffer-show-function}) are displayed in the FramePop frame.
To make other buffers also appear in the selected frame, the easiest
thing to do is make buffers listed in special-display-buffer-names or
special-display-regexps appear in the framepop frame by adding the
following to your @file{~/.emacs} file:

@example
(setq special-display-function 'framepop-special-display)
@end example

@noindent Here's a suggestion for some buffers to use this feature on:

@example
(setq special-display-buffer-names
 '("*Shell Command Output*"  "*grep*" "*compilation*"))
@end example

Alternatively (if you want to keep the special-display feature
separate from framepop) you can use the function @code{framepop-wrap}.

There are lots of nifty things that can be done with the advice
package to make FramePop work that much better. Many such things
will be done for you automatically if you

@example
  (require 'advice)
@end example

before loading the framepop package (or customize the variable
@code{framepop-use-advice}.

Buffer names listed in the variable @code{framepop-do-not-display-list}
will not be displayed in the framepop-frame by default.

You may set the variable @code{framepop-auto-resize} to @code{on} to
have the FramePop frame automatically resize to accomodate buffers
which change size. If you do not, initially empty buffers (which are
likely to grow) get a FramePop frame of full size.

@node For elisp hackers, Bugs, Customization, framepop
@section For elisp hackers

Alternatively, for greater control over the behaviour of the
framepop frame, you can redefine the variable `framepop-lines' to a
lambda expression which will return the desired height of a buffer
to be displayed in the framepop frame. It may also return nil,
meaning that the buffer should not be displayed in the FramePop
frame, but in an ordinary window instead. The default value of this
lambda expression is the number of lines in the buffer, except that
empty buffers and compilation buffers (both of which are likely to
grow) get full size. You may wish to disable this feature, or
perhaps make other constraints based on buffer mode, etc. For
example, placing the following in your .emacs will force the
framepop frame to have as many lines as the buffer being displayed
provided it is not the *Completions* buffer (which will not be
displayed in the FramePop frame at all):

@verbatim
  (setq framepop-lines
    '(lambda (buf)
  	 (if (string= (buffer-name buf) "*Completions*") nil
  	   (save-excursion
  	     (set-buffer buf)
  	     (+ (count-lines (point-min) (point-max)) 1)))))
@end verbatim

This will cause empty buffers to have the minimum height, because
the maximum and minimum frame sizes (as specified in
@code{framepop-max-frame-size} and @code{framepop-min-frame-size}) are enforced
independently of @code{framepop-lines}. To get around this, define advice
around the function @code{framepop-frame-height}.

The default value of @code{framepop-lines} is framepop-default-lines.

@node Bugs,  , For elisp hackers, framepop
@section Bugs

@enumerate
@item
Completion in comint buffers doesn't work very well unless
comint-dynamic-show-completions is given a lobotomy.  NB: this happens
by default if @code{framepop-use-advice} is customized to @code{on}.
@item
I'd like to redefine framepop-wrap so that it saves the window
configuration, displays the requested buffer in the
framepop-frame, and then restores the window configuration. But
the job of framepop-wrap is better done by
special-display-buffer-names, so I shan't bother.
@end enumerate

@node highlight-beyond-fill-column, highlight-completion, framepop, Top
@chapter  highlight-beyond-fill-column - fontify beyond the fill-column.

This defines a function that can be used by @code{font-lock-add-keyword}' to
find the columns that are beyond @code{fill-column}'.  It does not currently
work in XEmacs because it lacks the function @code{font-lock-add-keywords}.

Enable it on a buffer using @code{M-x highlight-beyond-fill-column}.
You may use that command in a hook (e.g. @code{text-mode-hook}).

Use @code{customize-face highlight-beyond-fill-column-face} to to
setup the face used for highlight-beyond-fill-column.

@node highlight-completion, highlight-current-line, highlight-beyond-fill-column, Top
@chapter highlight-completion - completion with highlighted provisional text

This package modified how Emacs performs completions.  Ordinarily,
if you are typing a file name into the minibuffer (after hitting
@key{C-x C-f}, say), if you type a few letters and hit the TAB key, then
Emacs completes as far as possible.  For example, suppose the
directory contains only these files:
@example
   filbert   filibuster   frank   grunge.tex
@end example
If you type @key{g} followed by TAB, then @code{runge.tex} is
inserted.  If you hit @code{fi} then TAB, an @code{l}' is inserted.
If you hit @code{f} then TAB, there is no unique continuation of the
file name, so Emacs opens up a new window displaying the list of
possible completions.

That's the old system.  This package provides a variant: if you
type @key{g}, then @code{runge.tex} is automatically inserted as highlighted
text, to indicate that it's only provisional.  The point remains
immediately after the @code{g}.  If you hit TAB, the point jumps to the
end, and the added text is no longer highlighted.  (So if you
weren't looking at the screen, you wouldn't know that anything
different had happened.)  If after hitting @code{g}, you typed @code{a}
(because you wanted to find a new file 'gaptooth.el') the
highlighted text would disappear.  The effects of various keys:

@itemize @bullet
 @item @key{TAB}: jump forward to the end of the highlighted text.  If no
      text is highlighted, open up a window showing possible
      completions.

 @item @key{SPC}: jump forward a word (so 'g' followed by SPC would yield
      'grunge.tex', with the point after the '.', and with 'tex'
      highlighted).  If no text is highlighted, open up a window
      showing possible completions.

 @item @key{?}: open up a window showing possible completions.

 @item @key{RET}: open the named file (so 'g' followed by RET would open
      'grunge.tex').

 @item @key{C-g}: delete the highlighted text and stop this modified
      completion process (and exit the minibuffer, if you're in the
      minibuffer).

 @item @key{C-c}: delete the highlighted text and stop this modified
      completion process.

 @item @key{character}: if consistent with completion, unhighlight it and
      move the point forward.  if inconsistent, insert the
      character and delete the highlighted text, stopping this
      completion process.
@end itemize

@noindent Turn on highlight completion by either: running
@example
      M-x highlight-completion-mode
@end example
or customizing the variables in the group @code{highlight-completion}
and turn on "Highlight completion mode".  You may want to modify some
of the entries in "Highlight completion list".

@noindent You can also run the functions

@verbatim
     hc-completing-insert-file-name       to complete file names
     hc-completing-insert-lisp-function               lisp functions
     hc-completing-insert-lisp-variable               lisp variables
     hc-completing-insert-kill                        contents of kill ring
     hc-completing-insert-buffer-contents             buffer contents
     hc-ispell-complete-word                          words, using ispell
@end verbatim

These functions can be used anywhere, not just in the minibuffer.

@node highlight-current-line, home-end, highlight-completion, Top
@chapter highlight-current-line.el - highlight line where the cursor is

This is a minor mode to highlight the line the cursor is in. You can
change colors of foreground (text) and background. The default
behaviour is to set only a background color, so that font-lock
fontification colors remain visible (syntax coloring).

Enable it on a buffer using @code{M-x highlight-current-line-minor-mode} or
globally by customizing @code{highlight-current-line-globally}.  Customize
it via the @code{highlight-current-line} customization group.

You can select whether the whole line (from left to right window border)
is marked or only the really filled parts of the line (from left window
border to the last char in the line). The second behaviour is suitable
if it's important for you to see trailing spaces or tabs in a
line. Customize the variable @code{highlight-current-line-whole-line}.

You may enable the minor-mode automatically for (almost) all buffers by
customizing the variable @code{highlight-current-line-globally}.  Buffers
whose buffer-name match the regular expression in the customizable variable
@code{highlight-current-line-ignore-regexp} are not highlighted.  You can
extend or redefine this regexp. This works together with the default ignore
function @code{highlight-current-line-ignore-function}. You can redefine this
function to implement your own criterias.

@node home-end, htmlize, highlight-current-line, Top
@chapter home-end - Alternative Home and End key commands

Some useful bindings for Home and End keys:
@itemize @bullet
@item Hit the key once to go to the beginning/end of a line,
@item hit it twice in a row to go to the beginning/end of the window,
@item three times in a row goes to the beiginning/end of the buffer.
@end itemize

To enable it, customize the variable @code{home-end-enable}.

@node htmlize, ibuffer, home-end, Top
@chapter htmlize - HTML-ize font-lock buffers

@noindent Author: Hrvoje Niksic <hniksic@@xemacs.org>

@noindent Commands:

@table @samp
@item htmlize-buffer
Convert BUFFER to HTML, preserving colors and decorations.
@item htmlize-region
Convert the region to HTML, preserving colors and decorations.
@item htmlize-file
Load FILE, fontify it, convert it to HTML, and save the result.
@item htmlize-many-files
Convert FILES to HTML and save the corresponding HTML versions.
@item htmlize-many-files-dired
HTMLize dired-marked files.
@end table

This package converts the buffer text and the associated
decorations to HTML.  Mail to <hniksic@@xemacs.org> to discuss
features and additions.  All suggestions are more than welcome.

To use this, just switch to the buffer you want HTML-ized and type
@code{M-x htmlize-buffer}.  You will be switched to a new buffer that
contains the resulting HTML code.  You can edit and inspect this
buffer, or you can just save it with @key{C-x C-w}.  @code{M-x htmlize-file}
will find a file, fontify it, and save the HTML version in
FILE.html, without any additional intervention.  @code{M-x
htmlize-many-files} allows you to htmlize any number of files in
the same manner.  @code{M-x htmlize-many-files-dired} does the same for
files marked in a dired buffer.

htmlize supports two types of HTML output, selected by setting
@code{htmlize-output-type}: @code{css} and @code{font}.  In @code{css} mode, htmlize
uses cascading style sheets to specify colors; it generates classes
that correspond to Emacs faces and uses <span class=FACE>...</span>
to color parts of text.  In this mode, the produced HTML is valid
under the 4.01 strict DTD, as confirmed by the W3C validator.  In
@code{font} mode, htmlize uses <font color="...">...</font> to colorize
HTML, which is not standard-compliant, but works better in older
browsers.  @code{css} mode is the default.

You can also use htmlize from your Emacs Lisp code.  When called
non-interactively, @code{htmlize-buffer} and @code{htmlize-region} will
return the resulting HTML buffer, but will not change current
buffer or move the point.

I tried to make the package elisp-compatible with multiple Emacsen,
specifically aiming for XEmacs 19.14+ and GNU Emacs 19.34+.  Please
let me know if it doesn't work on some of those, and I'll try to
fix it.  I relied heavily on the presence of CL extensions,
especially for cross-emacs compatibility; please don't try to
remove that particular dependency.  When byte-compiling under GNU
Emacs, you're likely to get lots of warnings; just ignore them.

@noindent The latest version should be available at:

       http://fly.srk.fer.hr/~hniksic/emacs/htmlize.el

@noindent You can find a sample of htmlize's output (possibly generated with
an older version) at:

       http://fly.srk.fer.hr/~hniksic/emacs/htmlize.el.html

Thanks go to the multitudes of people who have sent reports and
contributed comments, suggestions, and fixes.  They include Ron
Gut, Bob Weiner, Toni Drabik, Peter Breton, Thomas Vogels and many
others.

@verbatim
User quotes: "You sir, are a sick, sick, _sick_ person. :)"
                 -- Bill Perry, author of Emacs/W3
@end verbatim
@node ibuffer, ido, htmlize, Top
@chapter ibuffer - operate on buffers like dired

@noindent ibuffer does not work under XEmacs.

ibuffer.el is an advanced replacement for the `buffer-menu' which
is normally distributed with Emacs.  Its interface is intended to
be analogous to that of Dired.

Use @code{M-x ibuffer} to get started.  @key{h} will give a brief usage
description.

Just for fun, here is the author's favorite `ibuffer-formats'
configuration:

@verbatim
(setq ibuffer-formats '((mark modified read-only " " (name 16 16) " "
                        (size 6 -1 :right) " " (mode 16 16 :center)
                         " " (process 8 -1) " " filename)
                    	   (mark " " (name 16 -1) " " filename))
      ibuffer-elide-long-columns t
      ibuffer-eliding-string "&")
@end verbatim

Remember, you can switch between formats using
@code{ibuffer-switch-format}, bound to @key{`} by default.

In emacs-goodies-el, you can use the customize interface to bind
@code{ibuffer} to @key{\C-x\C-b} by customizing the variable
@code{ibuffer-enable}.

@node ido, joc-toggle-buffer, ibuffer, Top
@chapter ido - interactively do things with buffers and files.

@noindent Author: Kim F. Storm <storm@@cua.dk>
@noindent Based on: iswitchb by Stephen Eglen <stephen@@cns.ed.ac.uk>

There is a different version of the package in Emacs 22 so it will
eventually be removed.

This package features a faster way to switch buffers and get new files.
To get the alternative switch-to-buffer and find-file functions in
this package bound to keys, do

@example
 (ido-mode t)
@end example
or @code{M-x ido-mode}.

As you type in a substring, the list of buffers or files currently
matching the substring are displayed as you type.  The list is
ordered so that the most recent buffers or files visited come at
the start of the list.

The buffer or file at the start of the list will be the one visited when
you press return.  By typing more of the substring, the list is narrowed
down so that gradually the buffer or file you want will be at the top of
the list.  Alternatively, you can use @key{C-s} and @key{C-r} (or the
right and left arrow keys) to rotate buffer or file names in the list
until the one you want is at the top of the list.  Completion is also
available so that you can see what is common to all of the matching
buffers or files as you type.

@node joc-toggle-buffer, joc-toggle-case, ido, Top
@chapter joc-toggle-buffer - flips back and forth between two buffers

@noindent Author: Joe Casadonte <emacs@@northbound-train.com>

This package provides a way to toggle back and forth between the last
two active buffers, without any extra keystrokes (like accepting the
default argument to @command{switch-to-buffer}).

@noindent Usage:

@noindent Commands:

@table @samp
@item joc-toggle-buffer
   Switched to the previous active buffer (when @command{switch-to-buffer} was
   called).  If there is no previous buffer, or if the buffer no longer
   exists, a message will be displayed in the minibuffer.
@end table

@noindent Nut & Bolts:

This package works by advising @command{switch-to-buffer}, so if your
favorite buffer switching command does not ultimately call
@command{switch-to-buffer}, this won't work.  Packages that alter the
current buffer *before* @command{switch-to-buffer} is called will also not
work properly.  Both of these situations may be salvagable with
the addition of more advice.  In the first case, just write a bit
of advice which essentially duplicates what I'm doing here with
@command{switch-to-buffer}.

I've provided a hack (and a "hook") to help with the second
situation.  The hack is to define a second variable (the "hook")
before the list is altered.  Once @command{switch-to-buffer} is called,
the advice provided in this package will first look for this
hook/hack variable and use its value; if that's not found, it will
use the value returned by @code{buffer-name}.

An example of this is the @code{swbuff} package, which changes the
current buffer before switching to the next one (though I'm not
sure why it does this).  Since I use swbuff, I've included its
hack along with this package.  You can customize whether or not
this hack is loaded (see Customization below).


@noindent Customization:

@command{M-x customize-group joc-toggle-buffer} to customize all
package options.

The following variable can be customized:

@table @samp
@item joc-toggle-buffer-swbuff-advice
   A hack to be compatable with the swbuff package.

   Valid values are:
@itemize @bullet
@item Never Advise - never advise the swbuff functions [nil]
@item Advise if Provided - only advise if swbuff already provided [P]
@item Always Advise - always define & activate the swbuff advise [A]
@end itemize

   If you don't use the swbuff package, you can safely choose
   Never Advise or Advise if Provided.  If you do use swbuff, you
   may use Advise if Provided (in which case swbuff must be
   `provide'd already) or Always Advise."
@end table

@node joc-toggle-case, keydef, joc-toggle-buffer, Top
@chapter joc-toggle-case - toggles case at point like ~ in vi

This packages provides a sophisticated (over-engineered?) set of
functions to toggle the case of the character under point, with which
you can emulate vi's ~ function, which I found useful and miss.
Basically, the vi command (and my version of it) toggles the case of
the current character and then advances to the next character,
allowing successive invocations to progress down the line.

@noindent Commands:

@table @samp
@item joc-toggle-case
Toggles the case of the character under point.  If called with
a prefix argument, it toggles that many characters (see
@code{joc-toggle-case-stop-at-eol}).  If the prefix is negative, the
case of the character before point is toggled, and if called
with a prefix argument, N characters before point will have
their case toggled (see also @code{joc-toggle-case-backwards}).
@item joc-toggle-case-backwards
Convenience function to toggle case of character preceeding
point.  This is the same as calling @command{joc-toggle-case} with a
negative prefix (and is in fact implemented that way).
@item joc-toggle-case-by-word
Similar to @command{joc-toggle-case} except that the count (supplied by
the prefix argument) is of the number of words, not letters, to
be toggled.  It will start from point and move to the end of
the first word at a minimum, and then take whole words from
there.  If called with a negative prefix, then from point to
beginning of current word will have their case toggled, going
backwards for N words (see also
@code{joc-toggle-case-by-word-backwards}).  Note that the
joc-toggle-case-stop-at-eol setting will be honored.
@item joc-toggle-case-by-word-backwards
Convenience function to toggle case by word, backwards.  This
is the same as calling @command{joc-toggle-case-by-word} with a
negative prefix (and is in fact implemented that way).
@item joc-toggle-case-by-region
Toggles the case of all characters in the current region.
@end table

@noindent Customization:

Use @command{M-x customize-group joc-toggle-case} to customize all
package options.

The following variable can be customized:

@table @samp
@item joc-toggle-case-stop-at-eol
       Boolean used to determine whether or not the toggle
       advancement stops at the end of a line.  Set to `t' it will
       stop at the end of the line, set to `nil' it will not (it
       will continue on to the next line).  If direction of toggle
       is reversed, the semantics of this are reveresed as well
       (i.e. does it stop at the beginning of the line).
@end table

@noindent Keybinding examples:

This is what I have -- use it or not as you like.

@verbatim
     (global-set-key [(control \`)] 'joc-toggle-case)
     (global-set-key [(control ~)] 'joc-toggle-case-backwards)

     (global-set-key [(control meta \`)] 'joc-toggle-case-by-word)
     (global-set-key [(control meta ~)] 'joc-toggle-case-by-word-backwards)

     (define-key joc-F3-keymap [(\`)] 'joc-toggle-case-by-region)
@end verbatim

I have a special @key{F3} keymap which this last one is bound to.
Email me if you'd like more details.

@node keydef, keywiz, joc-toggle-case, Top
@chapter keydef - a simpler way to define keys, with kbd syntax

@noindent Author: Michael John Downes <mjd@@ams.org>

The macro keydef provides a simplified interface to define-key that
smoothly handles a number of common complications.

The global-set-key command isn't ideal for novices because of its
relatively complex syntax. And I always found it a little
inconvenient to have to quote the name of the command---that is, I
tend to forget the quote every once in a while and then have to go
back and fix it after getting a load error.

One of the best features is that you can give an Emacs lisp form (or
even a series of forms) as the key definition argument, instead of a
command name, and the keydef macro will automatically add an
interactive lambda wrapper. I use this to get, for example, a more
emphatic kill-buffer command (no confirmation query) by writing

@verbatim
  (keydef "<S-f11>" (kill-buffer nil))
@end verbatim

For keydef the key sequence is expected to be given uniformly in the
form of a string for the 'kbd' macro, with one or two refinements
that are intended to conceal from users certain points of confusion,
such as (for those whose keyboards lack a Meta key) the whole
Meta/ESC/escape muddle.

I have had some trouble in the past regarding the distinction
between ESC and [escape] (in a certain combination of circumstances
using the latter form caused definitions made with the other form to
be masked---most puzzling when I wasn't expecting it). Therefore the
ESC form is actually preprocessed a bit to ensure that the binding
goes into esc-map.

There is one other special feature of the key sequence syntax
expected by the keydef macro: You can designate a key definition for
a particular mode-map by giving the name of the mode together with
the key sequence string in list form, for example

@verbatim
  (keydef (latex "C-c %") comment-region)
@end verbatim

This means that the key will be defined in latex-mode-map. [The
point of using this particular example will be made clear below.] I
arranged for the mode name to be given in symbol form just because I
didn't want to have to type extra quotes if I could get away with
it. For the same reason this kind of first arg is not written in
dotted pair form.

If the given mode-map is not defined, keydef "does the right thing"
using eval-after-load. In order to determine what library the
mode-map will be loaded from, it uses the following algorithm:

First check if foo-mode has autoload information. If not, check
whether "foo-mode" is the name of a library that can be found
somewhere in the load-path (using locate-library); otherwise check
whether "foo" is the name of a locatable library. Failing that, give
up and return nil.

There is a fall-back mechanism, however, to handle exceptional
cases. If foo-mode-map is undefined but the list mode-map-alist
contains an entry of the form (foo-mode-map foo-other-name-map),
then foo-other-name-map is used as the name of the
keymap.

If the mode-map is not loaded yet AND the command being bound to a
key is undefined at the time of the keydef assignment, it presents
further problems. The simplest solution is to assume that after the
package is loaded that defines the mode-map, the given command will
be defined and satisfy commandp. With some extra effort it should be
possible to determine more accurately whether the command will be
defined or not, but I'm not sure I want to go to that extreme, since
as far as I can see it would require opening the package file and
searching through it for a matching defun/defalias/fset statement.

If the mode name matches the mode map name, but foo-mode is not
autoloaded, then some autoload information may need to be provided.
For example, the following line allows definitions to be made for
debugger-mode-map even before debug.el is loaded.

@verbatim
 (autoload 'debugger-mode "debug" "Autoloaded." 'interactive)
@end verbatim

Although there is no easy way provided by keydef for
gnus-summary-limit-map to be accessed directly, because
its name does not include "mode", you can get a binding into
such a map by writing

@verbatim
  (keydef (gnus-summary "/ z") gnus-summary-limit-to-zapped)
@end verbatim

which binds /z in gnus-summary-mode-map, which is equivalent to
binding z in gnus-summary-limit-map.

You might need to add an autoload statement for gnus-summary-mode
in order for this to work, so that keydef knows that it should use
eval-after-load and that the file the mode function will be loaded
from is called "gnus-sum" rather than "gnus-summary-mode". (If it
were the latter, keydef would be able to resolve everything
automatically.)

We COULD HAVE just put the definitions into the mode hook in the
standard way, instead of using eval-after-load, but that would mean
the key definitions get executed repetitiously every time the mode
function gets called, which seems better to avoid, if only for
esthetic reasons (if it can be done without too much trouble).

The following examples show some typical keydef lines followed by the
results of the macro expansion.

@noindent Simplest kind of definition:

@verbatim
(keydef "C-x m" gnus-group-mail)

  -->(define-key global-map (kbd "C-x m") (quote gnus-group-mail))
@end verbatim

@noindent What if the command name is misspelled?

@verbatim
(keydef "C-x m" gnus-gruop-mail)

  -->(message "keydef: gnus-gruop-mail unknown \
               \(perhaps misspelled, or not loaded yet\)")
@end verbatim

@noindent A leading ESC gets special handling to go through esc-map.

@verbatim
(keydef "ESC &" query-replace-regexp)

  -->(define-key esc-map (kbd "&") (quote query-replace-regexp))
@end verbatim

@noindent Undefine a key:

@verbatim
(keydef "ESC `")

  -->(define-key esc-map (kbd "`") nil)
@end verbatim

@noindent If the second arg is a string, keydef defines the given key sequence
as a keyboard macro. The following macro puts in TeX-style double
quotes and then moves the cursor backward to leave it in the middle:

@verbatim
(keydef "\"" "``''\C-b\C-b")

  -->(define-key global-map (kbd "\"") "``''\002\002")
@end verbatim

@noindent Reset a key to self-insert

@verbatim
(keydef "\"" "\"")

  -->(define-key global-map (kbd "\"") (quote self-insert-command))
@end verbatim

@noindent If the second arg is a list, wrap it in an interactive lambda form.

@verbatim
(keydef "C-z"
  (message "Control-Z key disabled---redefine it if desired."))

  -->(define-key global-map
      (kbd "C-z")
      (lambda (arg)
        "anonymous keydef function"
        (interactive "p")
        (message "Control-Z key disabled---redefine it if desired.")))
@end verbatim

Note that the interactive lambda wrapper added by keydef, when the
CMD does not satisfy commandp, always takes a single prefix argument
named "arg", which is read in the usual way with (interactive "p");
so this could be used in the body of the function if need be.

@noindent This shows the notation for F-keys.

@verbatim
(keydef "<C-f17>" (kill-buffer nil))

  -->(define-key global-map
      (kbd "<C-f17>")
      (lambda (arg)
        "*Anonymous function created by keydef."
        (interactive "p")
        (kill-buffer nil)))
@end verbatim

Because of the confusing Meta/Escape complications, I recommend to
the users that I support that they use the ESC notation
consistently if that is what they type from their keyboard, even
for F-key definitions that might normally be written with <M-...>
notation.

@verbatim
(keydef "ESC <f3>" find-file-read-only)

  -->(define-key esc-map (kbd "<f3>") (quote find-file-read-only))
@end verbatim

@noindent The next two definitions go together. The second one shows how to
write a mode-specific definition.

@verbatim
(keydef "<f5>" isearch-forward)

  -->(define-key global-map (kbd "<f5>") (quote isearch-forward))

(keydef (isearch "<f5>") isearch-repeat-forward)

  -->(define-key isearch-mode-map (kbd "<f5>")
                                  (quote isearch-repeat-forward))
@end verbatim

@noindent Making a definition for a mode-map that is not loaded yet.

@verbatim
(keydef (latex "C-c %") comment-region)

  -->(eval-after-load "tex-mode"
       (quote
        (define-key latex-mode-map
          (kbd "C-c %")
          (quote comment-region))))
@end verbatim

@node keywiz, lcomp, keydef, Top
@chapter keywiz - Emacs key sequence quiz

@noindent Author: Jesper Harder <harder@@ifa.au.dk>

keywiz.el drills you about Emacs key-bindings.  You're presented
with the name of a command and the docstring, and then prompted for
the correct key sequence.  You'll earn one point for each correct
answer during the time limit.

Invoke with @command{M-x keywiz}.  A prefix argument will force keywiz
to rescan the key-binding -- this is useful if you want to include
bindings from a different mode.

Are you a true Emacs key-binding wizard or just a poor vi looser?
Get your foot-pedals in position and see how many key-bindings you
can remember in two minutes.

Forget about your Nethack high-score -- surely, knowing how to
wield the powers of the One True Editor at your fingertips will
earn you more bragging rights than ascending bare-footed in some
silly game with vi-keybindings :-)

@node lcomp, maplev, keywiz, Top
@chapter lcomp - list-completion hacks

@noindent Author: Taiki SUGAWARA <taiki.s@@cityfujisawa.ne.jp>

This package adds keybindings to the completions buffer:

@table @kbd
@item \C-i
next-completion
@item \M-\C-i
previous-completion
@item f
next-completion
@item b
previous-completion
@item n
next-line
@item p
previous-line
@item <space>
scroll-up
@item [del]
scroll-down
@item [backspace]
scroll-down
@item q
delete-completion-window
@end table

@noindent It also add and a global keybinding:

@table @kbd
@item \M-v
lcomp-select-completion-window-or-scroll-down
@end table

You may also enable advice to other Emacs functions to make the
completions buffer window disappear after use by putting this line
into your ~/.emacs.

@example
 (lcomp-activate-advices t)
@end example

Or alternatively, customize the group @code{lcomp} and then the
variable @code{lcomp-enable} and save the the setting for future sessions.

@node maplev, map-lines, lcomp, Top
@chapter maplev - Maple major mode

@noindent Authors:    Joseph S. Riel <joer@@k-online.com> and Roland Winkler <Roland.Winkler@@physik.uni-erlangen.de>

To use this Maple major mode, you must customize some of the default
settings to be appropriate for your installation.  You can do this in
several ways.  The most user friendly way is to use `customize'.  You
can do this with:

@example
@kbd{M-x} customize-group @key{RET} maplev @key{RET}
@end example

The important options are in the subgroup @code{maplev-important}.  After
setting and testing these options, save them to your .emacs by
clicking on the @code{Save for Future Sessions} button.

This mode has full documentation in it's own Info manual.
See @inforef{top, MapleV mode info node, maplev}.

@node map-lines, markdown-mode, maplev, Top
@chapter map-lines - Map a command over many lines

@noindent Author: Andreas Fuchs <asf@@void.at>

This module allows you to map a command over a set of lines
matching a regex. The trick: You can then go ahead and insert these
lines in one clean yank.  It's good for kill a bunch of lines in one
go, or collecting a bunch of lines in the kill-ring ready to paste.

@verbatim
<flamebait>Emacs can now be called ED, THE STANDARD TEXT EDITOR
</flamebait>
@end verbatim

Invoke it with @command{M-x map-lines}.

@node markdown-mode, marker-visit, map-lines, Top
@chapter markdown-mode - Major mode for editing Markdown files

@noindent Author: Jason Blevins <jrblevin@@sdf.lonestar.org>

This major mode provides syntax highlighting and basic element insertion
commands for Markdown files.

No extension gets associated with this mode by default since there is no
official extension: .mdml, .text, .md, .mdt, etc.

To use this mode, either invoke it each time with:

@example
 M-X markdown-mode
@end example

or insert the following snippet of code in your @file{.emacs} file.

@example
 (add-to-list 'auto-mode-alist '("\\.mdwn$" . markdown-mode))
@end example

@node marker-visit, matlab, markdown-mode, Top
@chapter marker-visit - navigate through a buffer's marks in order

@noindent Benjamin Rutt <brutt@@bloomington.in.us>

This file provides a simple way to navigate among marks in a
buffer.  @key{C-u C-SPC} is similar, but takes you haphazardly around the
buffer.  Setting bookmarks is a lot of extra work if you just want
to jump around your buffer quickly; plus, you have to come up with
a name for every bookmark.

All the marks you've left while editing a buffer serve as bread
crumb trails of areas in the buffer you've edited.  It is
convenient to navigate back and forth among these marks in order.
This file provides two methods to do just that, @command{marker-visit-prev}
and @command{marker-visit-next}.  These two functions will take you, from
point, to the nearest mark in either direction.  The function
@command{marker-visit-truncate-mark-ring} will truncate the mark ring.

The marks you can visit in a buffer consist of: "the mark" plus the
contents of the mark-ring.

This package is most useful when some easy-to-press keys are bound to
the functions @command{marker-visit-prev} and
@command{marker-visit-next}.  See @key{C-h i m Emacs RET m Key Bindings RET}
for info on emacs key bindings.

@node matlab, minibuf-electric, marker-visit, Top
@chapter matlab - Major mode for MATLAB dot-m files

@noindent Authors: Matt Wette <mwette@@alumni.caltech.edu>, Eric M. Ludlam <eludlam@@mathworks.com>

@noindent http://www.mathworks.com/access/pub/emacs_add_ons.zip

This major mode for GNU Emacs provides support for editing MATLAB dot-m
files.  It automatically indents for block structures, line continuations
(e.g., ...), and comments.

The default mode for files with the extension .m is c-mode, and so
this is not overriden here.  To use this mode, either invoke it each
time with:

@example
 M-x matlab-mode
@end example

or insert the following snippet of code in your @file{.emacs} file.

@example
 (add-to-list 'auto-mode-alist '("\\.m$" . matlab-mode))
@end example

Additional features include auto-fill including auto-additions of
ellipsis for commands, and even strings.  Block/end construct
highlighting as you edit.  Primitive code-verification and
identification.  Templates and other code editing functions.
Advanced symbol completion.  Code highlighting via font-lock.
There are many navigation commands that let you move across blocks
of code at different levels.

Lastly, there is support for running Matlab in an Emacs buffer,
with full shell history and debugger support (when used with the db
commands.)  The shell can be used as an online help while editing
code, providing help on functions, variables, or running arbitrary
blocks of code from the buffer you are editing.

@node minibuf-electric, minibuffer-complete-cycle, matlab, Top
@chapter minibuf-electric.el - Electric minibuffer behavior from XEmacs

This works with GNU Emacs.  It implements the XEmacs minibuffer behavior
for @key{C-x C-f} and other file name reading actions.  When you type
@key{/} twice, it clears the minibuffer back to the start, leaving only
a single @code{/}.  When you type a @key{~}, it does the similar,
leaving only @code{~/}.  This is nicer than having to explicitly erase
the contents of the minibuffer.

In the next GNU Emacs release (V22), the following will achieve this:

@example
  (setq file-name-shadow-tty-properties '(invisible t))
  (file-name-shadow-mode 1)
@end example

@node minibuffer-complete-cycle, mutt-alias, minibuf-electric, Top
@chapter minibuffer-complete-cycle - cycle through the *Completions* buffer

@noindent Author: Kevin Rodgers <ihs_4664@@yahoo.com>

The @command{minibuffer-complete} command, bound by default to TAB in the
minibuffer completion keymaps, displays the list of possible
completions when no additional characters can be completed.
Subsequent invocations of this command cause the window displaying
the *Completions* buffer to scroll, if necessary.

This library advises the @command{minibuffer-complete} command so that
subsequent invocations instead select each of the possible
completions in turn, inserting it into the minibuffer and
highlighting it in the *Completions* buffer.  As before, the window
displaying the possible completions is scrolled if necessary.

This feature is enabled by setting the
@code{minibuffer-complete-cycle} variable to @code{t} with
@command{M-x customize-group minibuffer-complete-cycle} or
@command{M-x set-variable}; it is disabled by unsetting the option (to
nil).  Besides @code{t}, the special value @code{auto} enables the
feature and also causes the first completion to be selected
immediately.

You can also customize the @code{minibuffer-complete-cycle} face, which is
used to highlight the selected completion.

The technique of deleting the minibuffer contents, then (for file
name completion) inserting the directory component of the initial
input, and then inserting the completion string itself is based on
cycle-mini.el (1.03) by Joe Reiss <jreiss@@vt.edu>.

@node mutt-alias, muttrc-mode, minibuffer-complete-cycle, Top
@chapter mutt-alias - Lookup/insert mutt mail aliases.

@noindent Author: Dave Pearson <davep@@davep.org>

mutt-alias allows you to lookup and insert the expansion of mutt mail
aliases. This is only handy if you use mutt @url{http://www.mutt.org/}.

The following commands are available:

@table @samp
@item mutt-alias-insert
Insert the expansion for ALIAS into the current buffer.
@item mutt-alias-lookup
Lookup and display the expansion for ALIAS.
@end table

@node muttrc-mode, newsticker, mutt-alias, Top
@chapter muttrc-mode - Major mode to edit muttrc under Emacs

@noindent Author: Laurent Pelecq <laurent.pelecq@@soleil.org>

This mode first goal is to provide syntax highlighting with
font-lock. The basic fontification appears on strings, comments,
command names and variables. Additional fontification for commands
arguments can be enabled through the customization buffer.

To customize it, execute @command{M-x customize-group RET muttrc RET}

By default, help on command/variable is displayed automatically
while executing a command to modify them. Disable this feature if
you have problems with.

The main commands are:

@table @samp
@item C-x c
muttrc-insert-command
@item C-x s
muttrc-set-variable
@item C-x S
muttrc-unset-variable
@end table

Type @key{C-h m} for all key bindings.

@noindent BUGS:

Multiline commands are not properly handled and can lead to unexpected
result.

@node newsticker, nuke-trailing-whitespace, muttrc-mode, Top
@chapter newsticker - A Newsticker for Emacs.

@noindent Copyright (C) 2003 by Ulf Jasper

This package provides a newsticker for Emacs.  A newsticker is a thing
that asynchronously retrieves a list of headlines (which are contained
in RDF Site Summary (RSS) files) from a list of news sites, displays
these headlines, and allows for loading the corresponding articles in
a web browser.

This package should work with all RSS files that follow the "RDF Rich
Site Summary (RSS) 1.0" specification (see
@url{http://purl.org/rss/1.0/spec}).  It may also work with
other/older/alternative rss formats (like 0.9<something> or such).

This package requires wget for retrieving headlines asynchronously.

Headlines can be displayed in the echo area, but they will show only
if no other program is using the echo area (and minibuffer).
Besides, headlines and their descriptions are collected in a buffer
called *newsticker*.

To use, do @command{M-x newsticker-start}.  This will retrieve
headlines from each url in @code{newsticker-url-list-defaults} and
@code{newsticker-url-list} every @code{newsticker-retrieval-interval}
seconds.  All headlines are placed in the buffer @code{*newsticker*}.
Clicking @key{mouse-button-2} or pressing @key{RET} in that buffer on
a headline will call @command{browse-url} to load the corresponding
news story in your favourite web browser.

Every @code{newsticker-display-interval} a headline is shown in the
echo area (if @code{newsticker-display-interval} is positive).

In order to stop the newsticker say @command{M-x newsticker-stop}.
This will stop all timers.

The function @command{newsticker-show-news} will update the
\*newsticker* buffer, if necessary, and recreate it if you accidentally
deleted it.  The modeline will indicate whether the *newsticker*
buffer is up to date with the newsticker-cache.

Newsticker-mode extends @command{outline-mode} so that you can easily
hide and show descriptions of feeds and news items.

Newsticker-mode supports imenu.  It allows for navigating with the
help of a menu.  In order to use this feature you should add the
following to you .emacs file:

@example
  (add-hook 'newsticker-mode-hook 'imenu-add-menubar-index)
@end example

All newsticker-options are customizable.  Do @command{M-x customize-group
@key{RET} newsticker @key{RET}} in order to customize the newsticker settings.

Enjoy!

PS: This newsticker is designed do its job silently in the
    background without disturbing you.  However, it is probably
    impossible to prevent such a tool from slightly attenuating your
    Editor's responsiveness every once in a while.

@node nuke-trailing-whitespace, obfusurl, newsticker, Top
@chapter nuke-trailing-whitespace - Strip trailing whitespace from buffers

@noindent Author: Noah Friedman <friedman@@splode.com>

This package strips trailing whitespace from buffers.  It can be used
manually on a buffer by calling @code{M-x nuke-trailing-whitespace} when
editing a buffer, or automatically when you save a file.

For automatic stripping of files as you save them (or email messages as
you send them), either add the following in your .emacs:

@verbatim
    (autoload 'nuke-trailing-whitespace "nuke-trailing-whitespace" nil t)
    (add-hook 'mail-send-hook 'nuke-trailing-whitespace)
    (add-hook 'write-file-hooks 'nuke-trailing-whitespace)
@end verbatim

or better yet accomplish the same effect by customizing the variable
@code{nuke-trailing-whitespace-in-hooks} and saving the result for
future sessions.

By default, buffers that have a major-mode listed in the customizable
list @code{nuke-trailing-whitespace-always-major-modes} are stripped, those
listed in the list @code{nuke-trailing-whitespace-never-major-modes} are not,
and others are prompted for.  You can change this default behaviour by
customizing the variable @code{nuke-trailing-whitespace-p}.

@noindent See also: whitespace.el packaged in Emacs-21

@node obfusurl, pack-windows, nuke-trailing-whitespace, Top
@chapter obfusurl - Obfuscate URLs so they aren't spoilers

@noindent Author: Dave Pearson <davep@@davep.org>

obfusurl.el provides @command{obfuscate-url}, a command that will obfuscate an
URL under the cursor. This might be useful if you are writing out an URL
for someone but the URL itself might spoil the surprise.

@noindent For example, this:

@example
<URL:http://www.davep.org/emacs/>
@end example

is turned into this:

@example
<URL:http://www.davep.org/%65%6d%61%63%73/>
@end example

@node pack-windows, perldoc, obfusurl, Top
@chapter pack-windows - resize all windows to display as much info as possible.

@noindent Author: Michel Schinz <Michel.Schinz@@epfl.ch>
          
Resize all windows vertically to display as much information as possible
with the command @command{M-x pack-windows}.

Only windows that are on the left edge of the frame are taken into
account. The vertical space available in the frame is first divided
among all these windows. Then any window requireing less lines than it
got to display its whole buffer is shrinked, and the freed space is
divided equally among all the other windows.

If some vertical space remains afterwards, it is given in totality to
the currently selected window.

Do not shrink any window to less than @code{window-min-height}.

Shrink windows iteratively, performing at most
@code{pack-windows-max-iteration} iterations. The number of iterations
really performed will be displayed in the echo area if
@code{pack-windows-verbose} is non-nil.  These two variables can be
customized with @command{M-x customize-group pack-windows}.

@node perldoc, pod-mode, pack-windows, Top
@chapter perldoc - Show help for Perl functions, builtins, and modules.

@noindent Author: Steve Kemp <skx@@tardis.ed.ac.uk>

This package allows the user to view the Perl help for the word(s) at
the point.

Customize the variable @code{perldoc-define-F1} to @code{on} to bind
the key @key{F1} to show point for the item under point in
@code{cperl-mode} and @code{perl-mode}.

The code handles functions, builtins, and third party modules.

@node pod-mode, projects, perldoc, Top
@chapter pod-mode - major-mode for editing Plain Old Documentation files

@noindent Author: Steffen Schwigon <schwigon@@webit.de>

Provides font-locking for editing POD (Plain Old Documentation) files.

@node projects, protbuf, pod-mode, Top
@chapter projects - Project-based buffer name management

@noindent Author: Erik Naggum <erik@@naggum.no>

Managing a large number of buffers that visit files in many directories
(such as both local and remote copies of sources) can be confusing when
there are files with similar or even identical names and the buffers end
up being named foobar.cl<19> or like unintuitiveness.  This package
introduces the concept of PROJECT ROOTS that allow the programmer to
define what looks suspiciously like logical pathname hosts from Common
Lisp and get abbreviated yet meaningful buffer names in the modeline.

Commands include @code{project-add}, which takes a project name and a directory
(which conveniently defaults to the current directory), @code{project-remove}
(which completes on existing projects), and @code{project-list}, which lists the
current projects in a rudimentary table.  @code{project-update-buffer-names} is
called automatically when either @code{project-add} or @code{roject-remove} changes
the project list, but may also be called by the user as a command.

Variables include @code{project-root-alist}, which contains the list of current
projects and their root directories, and two variables that control the
naming of buffers: @code{project-buffer-name-directory-limit}, the uppper limit
on the number of characters in the last few directory elements in the
pathname that makes up the buffer name and
@code{project-buffer-name-directory-prefix}, the string prepended to buffer
names that would be too long.

Internal functions include @code{project-buffer-name}, which computes the
buffer name from the filename argument, @code{project-root-alist}, which
computes a sorted list of projects on their directories and maintains a
cache because this operation is expensive, and a redefinition of the
function @code{create-file-buffer}, which is called to create new file-visiting
buffers.  Note that the latter may still produce ...<n>, if truly
identical buffer names are requested.  This may happen if you call dired
on a filename and then visit the same file.  Use @key{C-x C-v M-p} instead.

This file is modified on Debian by Peter Galbraith. I like the concept
of prefixing certain buffer names with a project name, but not
renaming all unrelated buffers with the full directory path.  This
breaks MH-E mail folder names for example.  So I'm introducing the
variable @code{project-rename-all-buffers} with a default of nil.  You may
customize this to obtain the old behaviour.

@node protbuf, protocols, projects, Top
@chapter protbuf - Protect buffers from accidental killing

@noindent Author: Noah Friedman <friedman@@splode.com>

This package allows you to make it harder to kill buffers accidentally,
e.g. by being too trigger happy selecting items in the buffer menu.

@noindent The commands are:

@table @samp
@item protect-buffer-from-kill-mode
Toggle @code{kill-buffer} protection on current buffer.
@item protect-process-buffer-from-kill-mode
Toggle @code{kill-buffer} protection on current buffer with active process.
@end table

@command{protect-process-buffer-from-kill-mode} is perhaps the more
useful of the two, making it harder to accidentally kill shell buffers
without terminating the process in them first.

@node protocols, quack, protbuf, Top
@chapter protocols - Protocol database access functions.

@noindent Author: Dave Pearson <davep@@davep.org>

This package (protocols.el) provides a set of functions for accessing
the protocol details list.

@noindent Commands:

@table @samp
@item protocols-lookup
Find a protocol and display its details.
@item protocols-clear-cache
Clear the protocols \"cache\".
@end table

@node quack, rfcview, protocols, Top
@chapter quack - Enhanced support for editing and running Scheme code

@noindent Author: Neil W. Van Dyke <neil@@neilvandyke.org>

Quack enhances Emacs support for Scheme programming.  Quack is layered
atop the standard packages `cmuscheme.el', by Olin Shivers, and
`scheme.el', by Bill Rozas and Dave Love.  Added features include:

To use it, customize the variable @code{quack-install}.

@itemize @bullet
@item Menu and commands for viewing popular Scheme-related manuals or
books.  Uses local copies of PLT manuals when available, and remote
Web copies when necessary.  Command for keyword lookup in PLT
manual, with keyword defaulting to symbol at point.

@item Menus and command for viewing SRFIs.  SRFI index information is
automatically downloaded from SRFI Web site.  Prompt defaults to
SRFI number referenced at point.

@item A `find-file' alternative that defaults to the file corresponding to
the PLT `require' form at point.  (Other module systems will be
supported in future versions of Quack.)

@item Two new sets of font-lock rules for Scheme: "PLT Style," which is
similar to that used by DrScheme 200 Check Syntax; and "Extended GNU
Emacs Style," which is an extended version of the standard Scheme
font-lock rules under GNU Emacs.

@item Pretty-lambda fontification.  (GNU Emacs 21 only.)

@item Enhanced `run-scheme' behavior.

@item Enhanced `switch-to-scheme' behavior.

@item Scheme Mode indentation rules for extensions of PLT, Guile, and
other dialects.

@item Command to toggle a `define' form between `(define (<name> <args>)
<body>)' and `(define <name> (lambda (<args>) <body>))' syntax.

@item Command for tidying the formatting in a Scheme Mode buffer.

@item The `)' and `]' keys insert the character that agrees with the
s-expression's opening character.

@item Automatic indenting options for Return key.

@item Mode for inspecting contents of PLT `.plt' package files, before
releasing or installing the packages, or if one does not have PLT
available.

@item Command to open a Dired on a specified PLT collection.

@item `compile' mode can navigate from PLT `setup-plt' errors.
@end itemize

@noindent The name "Quack" was a play on "DrScheme".

@noindent Quack is dedicated to Yosh, naturally.

@noindent Commands:

@key{C-c C-q m}   View a manual in your Web browser.

@key{C-c C-q k}   View the manual documentation for a keyword

@key{C-c C-q s}   View an SRFI.

@key{C-c C-q r}   Run an inferior Scheme process.

@key{C-c C-q f}   Find a file using context of point for default.

@key{C-c C-q l}   Toggle `lambda' syntax of `define'-like form.

@key{C-c C-q t}   Tidy the formatting of the buffer.

One additional command that does not currently have a standard binding
is `quack-dired-pltcollect', which prompts for a PLT collection name and
creates a Dired buffer on the collection's directory.  (A future version
of Quack may integrate this functionality into a more generalized
documentation navigation interface.)

@node rfcview, services, quack, Top
@chapter rfcview - view IETF RFCs with readability-improved formatting

@noindent Author: Neil W. Van Dyke <neil@@neilvandyke.org>

For historical reasons, IETF Internet RFCs are required to be in a plain
ASCII text format that's best-suited for sending directly to a 6-lpi
US-letter-size printer.  This makes them suboptimal for viewing on-screen,
as you will be doing for countless hours if you're ever doing network
programming to one of them.  Fortunately, the ASCII format is usually
close to what you, the Emacs zealot, *truly* want -- which is a format
suited to more pleasurably viewing the RFC in Emacs.

The `rfcview' package uses Emacs overlays to add some fontification and
hide the page headers and footers (which it replaces with one-line page
number references that look like "(p.1)", right-justified).  The file is
never modified, and you can see the raw ASCII text by pressing `t'.

You may customize some aspects of this package using @command{M-x
customize-group rfcview}.

The emacs-goodies-el package sets up Emacs to enter
@command{rfcview-mode} automatically when reading such a file (as
recognised by the filename).

@node services, session, rfcview, Top
@chapter services - Services database access functions.

@noindent Author: Dave Pearson <davep@@davep.org>

This package (services.el) provides a set of functions for accessing
the services details list.

@node session, setnu, services, Top
@chapter session - Session Management for Emacs

When you start Emacs, package Session restores various variables (e.g.,
input histories) from your last session. It also provides a menu containing
recently changed/visited files and restores the places (e.g., point) of
such a file when you revisit it.

To enable this package, customize the group @code{session} and within
it the variable @code{session-initialize} and save the settings.

To restore the variables, this package writes a session file (~/.session)
when you exit Emacs. The file includes the values of variables which are
automatically updated by Emacs during some editing operations:

@itemize @bullet
@item Histories of user input. For example, strings used in a find/replace
command, names of files you have visited, etc.

@item Contents of registers, whether they are texts or buffer/file
positions. Buffer positions are automatically converted to file positions.

@item List of recently copied/cut text blocks to paste, global markers to
jump to, and other so-called rings.

@item List of recently changed files with their places and some buffer-local
variables.
@end itemize

To restore the places of a recently changed/visited file when you revisit
it, this packages stores the places of a buffer in a special variable (the
list mentioned above) when you kill that buffer (this includes exiting
Emacs). Places are:

@itemize @bullet
@item Point (the cursor position) and mark (e.g., the opposite position
when a region is highlighted). These places will be restored, but a region
won't be made active.

@item The position of the last change. A new command (bound to @key{C-x
C-/}) can be used to jump to that position.

@item The boundaries if only a part of a buffer was visible. Reopening the
file will again restrict/narrow the editing operations to that region.

@item Values of buffer-local variables. Useful for variables which control some
temporary editing behavior, e.g., overwrite-mode.
@end itemize

As opposed to desktop.el and other packages, Session does not automatically
revisits all files from your last session, most of which are not
interesting anymore.


Details of Package Session

@menu
* Session Menus and Key-Bindings::  
* Saving Session Variables::    
* Storing Buffer Places::       
@end menu

@node Session Menus and Key-Bindings, Saving Session Variables, session, session
@section Session - Menus and Key-Bindings

For Emacs-21.1+ and XEmacs, this package defines the following menu entries
and key-bindings:

@itemize @bullet
@item
At the beginning of menu File, there are two new submenus:
@code{Open...recently changed} and @code{Open...recently visited}.

@item
In menu Edit, there is a new submenu: @code{Select and Paste}, it already
exists in Emacs-21+. With XEmacs, using the right mouse button @key{C-button3}
also pops up this submenu.

@item
Enter @key{C-x C-/} or @key{C-x Undo} to jump to the position of the last
change (use repeatedly or with prefix argument for earlier positions).

@item
In the minibuffer, enter @key{M-?} to display a completion list with all
strings in the history for the current minibuffer input. From that list,
you can use @key{button2} to select an entry.

@end itemize

@node Saving Session Variables, Storing Buffer Places, Session Menus and Key-Bindings, session
@section Session - Saving Session Variables

There are various ways to control which lists/variables are saved in the
session file and which elements in a list are included in the saved value:

@itemize @bullet
@item The variables to store can be specified by a regular expression
matching their names, and by an include/exclude list.

@item
Variables containing empty lists are not stored. You do not want to clutter
up your session file...

@item
Long lists can be truncated. A maximum length can be specified globally and
individually for single variables.

@item
If there are equal elements in the list, only the first is saved. Long
strings in a list can be excluded by specifying a maximal string length.

@item
Elements in a list which have no readable representation (e.g., events in
the command history) are automatically dropped.

@item
To exit Emacs without writing a session file, use prefix argument 0: enter
@key{C-u 0 C-x C-c}.

@end itemize

Technical detail: documentation of command session-save-session.

Note: you cannot share the same session file between Emacs and XEmacs
(different coding systems, different types for the same variables, ?).

@node Storing Buffer Places,  , Saving Session Variables, session
@section Session - Storing Buffer Places

Since not all buffers/files are of permanent interest, there are various
conditions and means to control for which buffers to store some places:

@itemize @bullet
@item
The buffer must visit a readable file. There are variables to exclude or
include buffers due to their major mode or buffer file name.

@item
By default, the contents must have been changed. You still have the places
from previous Emacs sessions, but that information is older and thus more
likely to be truncated from the list of saved buffer places (see above).

@item
Individual control by providing a prefix argument to command @command{M-x
kill-this-buffer} (@key{C-u 2} or higher: store places, @key{C-u 0} or
lower: don't store places).

@item
A file/buffer can be marked as permanent, i.e., its places will always be
stored. Use @command{M-x session-toggle-permanent-flag} or select the
corresponding menu item in the new submenu @code{Open...recently changed}.

@end itemize

@node setnu, shell-command, session, Top
@chapter setnu - vi-style line number mode for Emacs

@noindent Author: Kyle E. Jones <kyle@@wonderworks.com>

This package adds line numbers on the left margin of a buffer.
The numbers disappear when the mode is exited.

@noindent Use @command{M-x setnu-mode} to toggle the line number mode
on and off.

@noindent @command{turn-on-setnu-mode} is useful for adding to a
major-mode hook variable (not that you really want to do this).

@example
Example:
    (add-hook 'text-mode-hook 'turn-on-setnu-mode)
@end example
to automatically turn on line numbering when enterting text-mode."

You may customize the group @code{setnu} and customize the face
@code{setnu-line-number-face} to change the appearance of the line numbers.

@node shell-command, show-wspace, setnu, Top
@chapter shell-command - enables tab-completion for `shell-command'

@noindent Author: TSUCHIYA Masatoshi <tsuchiya@@namazu.org>

This is an enhancement of shell-command, shell-command-on-region,
grep, grep-find, and compile, that enables tab-completion of
commands and dir/filenames within their input contexts.

The latest version of this program can be downloaded from
http://namazu.org/~tsuchiya/elisp/shell-command.el.

@noindent Install:

Install this file to an appropriate directory, and put these lines
into your ~/.emacs.

@example
    (shell-command-completion-mode)
@end example

Or alternatively, customize the group @code{shell-command} and then
the variable @code{shell-command-completion-mode} and save the setting
for future sessions.

Note that setup has changed since Debian sarge for which the function
to call was @code{shell-command-activate-advices} and the variable to
customize was @code{shell-command-enable-completions}.

@node show-wspace, slang-mode, shell-command, Top
@chapter show-wspace - highlight whitespaces of various kinds.

You can use commands `show-ws-toggle-*' (see below) to turn the
various kinds of whitespace highlighting on and off in Font-Lock mode.

If you want to always use a particular kind of whitespace
highlighting, by default, then add the corresponding `highlight-*'
command (see below) to the hook `font-lock-mode-hook'.  Then, whenever
Font-Lock mode is turned on, so will the whitespace highlighting.

For example, you can turn on tab highlighting by default by adding
command `show-ws-highlight-tabs' to `font-lock-mode-hook' in your
.emacs file, as follows:

@example
    (require 'show-wspace)
    (add-hook 'font-lock-mode-hook 'show-ws-highlight-tabs)
@end example

@noindent Faces:
@itemize
@item show-ws-hard-space
@item show-ws-tab
@item show-ws-trailing-whitespace
@end itemize

@noindent Commands:
@itemize
@item show-ws-toggle-show-hard-spaces
@item show-ws-toggle-show-tabs
@item show-ws-toggle-show-trailing-whitespace
@item toggle-show-hard-spaces-show-ws (alias)
@item toggle-show-tabs-show-ws (alias)
@item toggle-show-trailing-whitespace-show-ws (alias)
@end itemize

@noindent Non-interactive functions:
@itemize
@item show-ws-highlight-hard-spaces
@item show-ws-highlight-tabs
@item show-ws-highlight-trailing-whitespace
@end itemize

@noindent Internal variables:
@itemize
@item show-ws-highlight-hard-spaces-p
@item show-ws-highlight-tabs-p
@item show-ws-highlight-trailing-whitespace-p
@end itemize

@node slang-mode, silly-mail, show-wspace, Top
@chapter slang-mode - a major-mode for editing slang scripts.

@noindent Authors: Gregor Schmid <schmid@@fb3-s7.math.tu-berlin.de>, Joe Robertson <jmrobert@@sbcs.com>

Slang-mode supports c-mode style formatting and sending of
lines/regions/files to a slang interpreter. An interpreter (see
variable @code{slang-default-application}) will be started if you try to
send some code and none is running. You can use the process-buffer
(named after the application you chose) as if it were an
interactive shell. See the documentation for @file{comint.el} for
details.

To see all the keybindings for folding mode, look at
@code{slang-setup-keymap} or start @command{slang-mode} and type
@key{\C-h m}.  The keybindings may seem strange, since I prefer to use
them with slang-prefix-key set to nil, but since those keybindings are
already used the default for @code{slang-prefix-key} is @key{\C-c},
which is the conventional prefix for major-mode commands.

You can customise the keybindings by setting @code{slang-prefix-key}.

@node silly-mail, sys-apropos, slang-mode, Top
@chapter silly-mail - generate bozotic mail headers

@noindent Maintainer: Noah Friedman <friedman@@splode.com>

This package generates bozotic mail headers.

To use this, invoke @command{M-x sm-add-random-header} from a mail composition
buffer to insert a random header.  You may call the command again to
substitute the inserted header by another.

Use @command{M-x sm-delete-last-header} to remove it.

If you wish all mail messages to have a randomly chosen header, put the
following in your @file{.emacs}:
@verbatim
   (autoload 'sm-add-random-header "silly-mail" nil t)
   (add-hook 'mail-setup-hook 'sm-add-random-header)
   (add-hook 'mh-letter-mode-hook 'sm-add-random-header)
@end verbatim

 or alternatively customize the variable @command{sm-add-ramdom-header-to-mail}.

@noindent To setup menu-bar entries in sendmail and MH-E menus, customize the
variable @code{sm-add-menu-bar-entries}.  This has the disadvantage of
loading this library at Emacs startup, so might not be a good choice
if you rarely use silly-mail.

You may customize silly-mail using @command{M-x customize-group [RET]
silly-mail}.  The following are customizable:

@itemize @bullet
@item
The list of header types used in the random selection by
@command{sm-add-random-header}
@item
Individual quotes may be disabled from the pool if some are offensive
to you.
@item
Whether all headers use an "X-" prefix or not
@end itemize

@node sys-apropos, tabbar, silly-mail, Top
@chapter sys-apropos - Interface for the *nix apropos command.

@noindent Author: Henrik Enberg <henrik@@enberg.org>

@noindent Commands:

@table @samp
@item sys-apropos
Ask the system apropos command for man-pages matching QUERY.
@end table

Do @command{M-x sys-apropos} and you're off.  In the *System Apropos*
buffer, @key{RET} shows the manual page for the program on that line and
@key{q} or @key{C-c C-c} quits the whole shebang.

@node tabbar, table, sys-apropos, Top
@chapter tabbar - Display a tab bar in the header line

@noindent Author: David Ponce <david@@dponce.com>

This library provides the Tabbar global minor mode to display a tab
bar in the header line of Emacs 21 and later versions.  You can use
the mouse to click on a tab and select it.  Also, three buttons are
displayed on the left side of the tab bar in this order: the
"home", "scroll left", and "scroll right" buttons.  The "home"
button is a general purpose button used to change something on the
tab bar.  The scroll left and scroll right buttons are used to
scroll tabs horizontally.  Tabs can be divided up into groups to
maintain several sets of tabs at the same time (see also the
chapter "Core" below for more details on tab grouping).  Only one
group is displayed on the tab bar, and the "home" button, for
example, can be used to navigate through the different groups, to
show different tab bars.

In a graphic environment, using the mouse is probably the preferred
way to work with the tab bar.  However, you can also use the tab
bar when Emacs is running on a terminal, so it is possible to use
commands to press special buttons, or to navigate cyclically
through tabs.

These commands, and default keyboard shortcuts, are provided:

@command{tabbar-mode} Toggle the Tabbar global minor mode.  When
enabled a tab bar is displayed in the header line.

@command{tabbar-local-mode} @key{C-c C-f10} Toggle the Tabbar-Local
minor mode.  Provided the global minor mode is turned on, the tab bar
becomes local in the current buffer when the local minor mode is
enabled.  This permits to see the tab bar in a buffer where the header
line is already used by another mode (like `Info-mode' for example).

@command{tabbar-mwheel-mode} Toggle the Tabbar-Mwheel global minor
mode.  When enabled you can use the mouse wheel to navigate through
tabs of groups.

@command{tabbar-press-home} @key{C-c C-home}

@command{tabbar-press-scroll-left} @key{C-c C-prior}

@command{tabbar-press-scroll-right} @key{C-c C-next} Simulate a
mouse-1 click on respectively the "home", "scroll left", and "scroll
right" buttons.  A numeric prefix argument value of 2, or 3,
respectively simulates a mouse-2, or mouse-3 click.

@command{tabbar-backward} @key{C-c C-left}

@command{tabbar-forward} @key{C-c C-right} are the basic commands to
navigate cyclically through tabs or groups of tabs.  The cycle is
controlled by the `tabbar-cycle-scope' option.  The default is to
navigate through all tabs across all existing groups of tabs.  You can
change the default behavior to navigate only through the tabs visible
on the tab bar, or through groups of tabs only.  Or use the more
specialized commands below.

@command{tabbar-backward-tab} @command{tabbar-forward-tab} Navigate
through the tabs visible on the tab bar.

@command{tabbar-backward-group}     @key{C-c C-up}

@command{tabbar-forward-group}      @key{C-c C-down}
    Navigate through existing groups of tabs.

@node table, tail, tabbar, Top
@chapter table - Create and edit WYSIWYG text based embedded tables

@noindent Author: Takaaki Ota <Takaaki.Ota@@am.sony.com>


This package provides text based table creation and editing
feature.  With this package Emacs is capable of editing tables that
are embedded inside a text document, the feature similar to the
ones seen in modern WYSIWYG word processors.

@menu
* table introduction::          
* table background::            
* table getting started::       
* table keymap::                
* table menu::                  
* table function advising::     
* Definition of tables and cells::  
* Cell contents formatting::    
* Cell Justification::          
* Acknowledgments::             
@end menu

@node table introduction, table background, table, table
@section introduction

A table is a
rectangular text area consisting from a surrounding frame and
content inside the frame.  The content is usually subdivided into
multiple rectangular cells, see the actual tables used below in
this document.  Once a table is recognized, editing operation
inside a table cell is confined into that specific cell's
rectangular area.  This means that typing and deleting characters
inside a cell do not affect any outside text but introduces
appropriate formatting only to the cell contents.  If necessary for
accommodating added text in the cell, the cell automatically grows
vertically and/or horizontally.  The package uses no major mode nor
minor mode for its implementation because the subject text is
localized within a buffer.  Therefore the special behaviors inside
a table cells are implemented by using local-map text property
instead of buffer wide mode-map.  Also some commonly used functions
are advised so that they act specially inside a table cell.


@node table background, table getting started, table introduction, table
@section background

Paul Georgief is one of my best friends.  He became an Emacs
convert after I recommended him trying it several years ago.  Now
we both are devoted disciples of Emacsism and elisp cult.  One day
in his Emacs exploration he asked me "Tak, what is a command to
edit tables in Emacs?".  This question started my journey of this
table package development.  May the code be with me!  In the
software world Emacs is probably one of the longest lifetime record
holders.  Amazingly there have been no direct support for WYSIWYG
table editing tasks in Emacs.  Many people must have experienced
manipulating existing overwrite-mode and picture-mode for this task
and only dreamed of having such a lisp package which supports this
specific task directly.  Certainly, I have been one of them.  The
most difficult part of dealing with table editing in Emacs probably
is how to realize localized rectangular editing effect.  Emacs has
no rectangular narrowing mechanism.  Existing rect package provides
basically kill, delete and yank operations of a rectangle, which
internally is a mere list of strings.  A simple approach for
realizing the localized virtual rectangular operation is combining
rect package capability with a temporary buffer.  Insertion and
deletion of a character to a table cell can be trapped by a
function that copies the cell rectangle to a temporary buffer then
apply the insertion/deletion to the temporary contents.  Then it
formats the contents by filling the paragraphs in order to fit it
into the original rectangular area and finally copy it back to the
original buffer.  This simplistic approach has to bear with
significant performance hit.  As cell grows larger the copying
rectangle back and forth between the original buffer and the
temporary buffer becomes expensive and unbearably slow.  It was
completely impractical and an obvious failure.  An idea has been
borrowed from the original Emacs design to overcome this
shortcoming.  When the terminal screen update was slow and
expensive Emacs employed a clever algorithm to reduce actual screen
update by removing redundant redrawing operations.  Also the actual
redrawing was done only when there was enough idling time.  This
technique significantly improved the previously mentioned
undesirable situation.  Now the original buffer's rectangle is
copied into a cache buffer only once.  Any cell editing operation
is done only to the cache contents.  When there is enough idling
time the original buffer's rectangle is updated with the current
cache contents.  This delayed operation is implemented by using
Emacs's timer function.  To reduce the visual awkwardness
introduced by the delayed effect the cursor location is updated in
real-time as a user types while the cell contents remains the same
until the next idling time.  A key to the success of this approach
is how to maintain cache coherency.  As a user moves point in and
out of a cell the table buffer contents and the cache buffer
contents must be synchronized without a mistake.  By observing user
action carefully this is possible however not easy.  Once this
mechanism is firmly implemented the rest of table features grew in
relatively painless progression.  Those users who are familiar with
Emacs internals appreciate this table package more.  Because it
demonstrates how extensible Emacs is by showing something that
appears like a magic.  It lets you re-discover the potential of
Emacs.

@node table getting started, table keymap, table background, table
@section Getting started

If this is the first time for you to try this package,
switch to a new test buffer and issue the
command @command{M-x table-insert}.  It'll ask you number of columns,
number of rows, cell width and cell height.  Give some small
numbers for each of them.  Play with the resulted table for a
while.  If you have menu system find the item @code{Table} under @code{Tools}
and @code{Table} in the menu bar when the point is in a table cell.
Some of them are pretty intuitive and you can easily guess what
they do.  @command{M-x describe-function} and get the documentation of
@command{table-insert}.  The document includes a short tutorial.  When you
are tired of guessing how it works come back to this document
again.

@c To use the package regularly place this file in the site library
@c directory and add the next expression in your .emacs file.  Make
@c sure that directory is included in the `load-path'.
@c
@c   (require 'table)
@c
@c Have the next expression also, if you want always be ready to edit
You may want to detect existing tables in visited files in order to use
this package to edit them. This mechanism is analogous to
fontification in a sense that tables are recognized at editing time
without having table information saved along with the text itself.
Use the following hook (set in your .emacs file):

@example
  (add-hook 'text-mode-hook 'table-recognize)
@end example

Following is a table of entry points and brief description of each
of them.  The tables below are of course generated and edited by
using this package.  Not all the commands are bound to keys.  Many
of them must be invoked by @key{M-x} (@command{execute-extended-command})
command.  Refer to the section "Keymap" below for the commands
available from keys.

@verbatim
+------------------------------------------------------------------+
|                    User Visible Entry Points                     |
+-------------------------------+----------------------------------+
|           Function            |           Description            |
+-------------------------------+----------------------------------+
|`table-insert'                 |Insert a table consisting of grid |
|                               |of cells by specifying the number |
|                               |of COLUMNS, number of ROWS, cell  |
|                               |WIDTH and cell HEIGHT.            |
+-------------------------------+----------------------------------+
|`table-insert-row'             |Insert row(s) of cells before the |
|                               |current row that matches the      |
|                               |current row structure.            |
+-------------------------------+----------------------------------+
|`table-insert-column'          |Insert column(s) of cells before  |
|                               |the current column that matches   |
|                               |the current column structure.     |
+-------------------------------+----------------------------------+
|`table-delete-row'             |Delete row(s) of cells.  The row  |
|                               |must consist from cells of the    |
|                               |same height.                      |
+-------------------------------+----------------------------------+
|`table-delete-column'          |Delete column(s) of cells.  The   |
|                               |column must consist from cells of |
|                               |the same width.                   |
+-------------------------------+----------------------------------+
|`table-recognize'              |Recognize all tables in the       |
|`table-unrecognize'            |current buffer and                |
|                               |activate/inactivate them.         |
+-------------------------------+----------------------------------+
|`table-recognize-region'       |Recognize all the cells in a      |
|`table-unrecognize-region'     |region and activate/inactivate    |
|                               |them.                             |
+-------------------------------+----------------------------------+
|`table-recognize-table'        |Recognize all the cells in a      |
|`table-unrecognize-table'      |single table and                  |
|                               |activate/inactivate them.         |
+-------------------------------+----------------------------------+
|`table-recognize-cell'         |Recognize a cell.  Find a cell    |
|`table-unrecognize-cell'       |which contains the current point  |
|                               |and activate/inactivate that cell.|
+-------------------------------+----------------------------------+
|`table-forward-cell'           |Move point to the next Nth cell in|
|                               |a table.                          |
+-------------------------------+----------------------------------+
|`table-backward-cell'          |Move point to the previous Nth    |
|                               |cell in a table.                  |
+-------------------------------+----------------------------------+
|`table-span-cell'              |Span the current cell toward the  |
|                               |specified direction and merge it  |
|                               |with the adjacent cell.  The      |
|                               |direction is right, left, above or|
|                               |below.                            |
+-------------------------------+----------------------------------+
|`table-split-cell-vertically'  |Split the current cell vertically |
|                               |and create a cell above and a cell|
|                               |below the point location.         |
+-------------------------------+----------------------------------+
|`table-split-cell-horizontally'|Split the current cell            |
|                               |horizontally and create a cell on |
|                               |the left and a cell on the right  |
|                               |of the point location.            |
+-------------------------------+----------------------------------+
|`table-split-cell'             |Split the current cell vertically |
|                               |or horizontally.  This is a       |
|                               |wrapper command to the other two  |
|                               |orientation specific commands.    |
+-------------------------------+----------------------------------+
|`table-heighten-cell'          |Heighten the current cell.        |
+-------------------------------+----------------------------------+
|`table-shorten-cell'           |Shorten the current cell.         |
+-------------------------------+----------------------------------+
|`table-widen-cell'             |Widen the current cell.           |
+-------------------------------+----------------------------------+
|`table-narrow-cell'            |Narrow the current cell.          |
+-------------------------------+----------------------------------+
|`table-fixed-width-mode'       |Toggle fixed width mode.  In the  |
|                               |fixed width mode, typing inside a |
|                               |cell never changes the cell width,|
|                               |while in the normal mode the cell |
|                               |width expands automatically in    |
|                               |order to prevent a word being     |
|                               |folded into multiple lines.  Fixed|
|                               |width mode reverses video or      |
|                               |underline the cell contents for   |
|                               |its indication.                   |
+-------------------------------+----------------------------------+
|`table-query-dimension'        |Compute and report the current    |
|                               |cell dimension, current table     |
|                               |dimension and the number of       |
|                               |columns and rows in the table.    |
+-------------------------------+----------------------------------+
|`table-generate-source'        |Generate the source of the current|
|                               |table in the specified language   |
|                               |and insert it into a specified    |
|                               |buffer.                           |
+-------------------------------+----------------------------------+
|`table-insert-sequence'        |Travel cells forward while        |
|                               |inserting a specified sequence    |
|                               |string into each cell.            |
+-------------------------------+----------------------------------+
|`table-capture'                |Convert plain text into a table by|
|                               |capturing the text in the region. |
+-------------------------------+----------------------------------+
|`table-release'                |Convert a table into plain text by|
|                               |removing the frame from a table.  |
+-------------------------------+----------------------------------+
|`table-justify'                |Justify the contents of cell(s).  |
+-------------------------------+----------------------------------+
|`table-disable-advice'         |Disable all table advice by       |
|                               |removing them.                    |
+-------------------------------+----------------------------------+
|`table-enable-advice'          |Enable table advice.              |
+-------------------------------+----------------------------------+
|`table-version'                |Show the current table package    |
|                               |version.                          |
+-------------------------------+----------------------------------+
@end verbatim


@emph{Note}

You may find that some of commonly expected table commands are
missing such as copying a row/column and yanking it.  Those
functions can be obtained through existing Emacs text editing
commands.  Rows are easily manipulated with region commands and
columns can be copied and pasted through rectangle commands.  After
all a table is still a part of text in the buffer.  Only the
special behaviors exist inside each cell through text properties.

@command{table-generate-html} which appeared in earlier releases is
deprecated in favor of @command{table-generate-source}.  Now HTML is
treated as one of the languages used for describing the table's
logical structure.


@node table keymap, table menu, table getting started, table
@section Keymap

Although this package does not use a mode it does use its own
keymap inside a table cell by way of keymap text property.  Some of
the standard basic editing commands bound to certain keys are
replaced with the table specific version of corresponding commands.
This replacement combination is listed in the constant alist
@code{table-command-replacement-alist} declared below.  This alist is
not meant to be user configurable but mentioned here for your
better understanding of using this package.  In addition, table
cells have some table specific bindings for cell navigation and
cell reformation.  You can find these additional bindings in the
constant @code{table-cell-bindings}.  Those key bound functions are
considered as internal functions instead of normal commands,
therefore they have special prefix, *table--- instead of table-, for
symbols.  The purpose of this is to make it easier for a user to
use command name completion.  There is a "normal hooks" variable
@code{table-cell-map-hook} prepared for users to override the default
table cell bindings.  Following is the table of predefined default
key bound commands inside a table cell.  Remember these bindings
exist only inside a table cell.  When your terminal is a tty, the
control modifier may not be available or applicable for those
special characters.  In this case use @key{C-cC-c}, which is
customizable via @code{table-command-prefix}, as the prefix key
sequence.  This should preceding the following special character
without the control modifier.  For example, use @key{C-cC-c|} instead
of @key{C-|}.

@verbatim
+------------------------------------------------------------------+
|                Default Bindings in a Table Cell                  |
+-------+----------------------------------------------------------+
|  Key  |                      Function                            |
+-------+----------------------------------------------------------+
|  TAB  |Move point forward to the beginning of the next cell.     |
+-------+----------------------------------------------------------+
| "C->" |Widen the current cell.                                   |
+-------+----------------------------------------------------------+
| "C-<" |Narrow the current cell.                                  |
+-------+----------------------------------------------------------+
| "C-}" |Heighten the current cell.                                |
+-------+----------------------------------------------------------+
| "C-{" |Shorten the current cell.                                 |
+-------+----------------------------------------------------------+
| "C--" |Split current cell vertically. (one above and one below)  |
+-------+----------------------------------------------------------+
| "C-|" |Split current cell horizontally. (one left and one right) |
+-------+----------------------------------------------------------+
| "C-*" |Span current cell into adjacent one.                      |
+-------+----------------------------------------------------------+
| "C-+" |Insert row(s)/column(s).                                  |
+-------+----------------------------------------------------------+
| "C-!" |Toggle between normal mode and fixed width mode.          |
+-------+----------------------------------------------------------+
| "C-#" |Report cell and table dimension.                          |
+-------+----------------------------------------------------------+
| "C-^" |Generate the source in a language from the current table. |
+-------+----------------------------------------------------------+
| "C-:" |Justify the contents of cell(s).                          |
+-------+----------------------------------------------------------+
@end verbatim

@emph{Note:}

When using @command{table-cell-map-hook} do not use @command{local-set-key}:

@example
  (add-hook 'table-cell-map-hook
    (function (lambda ()
      (local-set-key [<key sequence>] '<function>))))
@end example

Above code is well known @file{~/.emacs} idiom for customizing a mode
specific keymap however it does not work for this package.  This is
because there is no table mode in effect.  This package does not
use a local map therefor you must modify @code{table-cell-map}
explicitly.  The correct way of achieving above task is:

@example
  (add-hook 'table-cell-map-hook
    (function (lambda ()
      (define-key table-cell-map [<key sequence>] '<function>))))
@end example

@node table menu, table function advising, table keymap, table
@section Menu

If a menu system is available a group of table specific menu items,
@code{Table} under @code{Tools} section of the menu bar, is globally added
after this package is loaded.  The commands in this group are
limited to the ones that are related to creation and initialization
of tables, such as to insert a table, to insert rows and columns,
or recognize and unrecognize tables.  Once tables are created and
point is placed inside of a table cell a table specific menu item
@code{Table} appears directly on the menu bar.  The commands in this
menu give full control on table manipulation that include cell
navigation, insertion, splitting, spanning, shrinking, expansion
and unrecognizing.  In addition to above two types of menu there is
a pop-up menu available within a table cell.  The content of pop-up
menu is identical to the full table menu.  @key{[mouse-3]} is the default
button, defined in @code{table-cell-bindings}, to bring up the pop-up
menu.  It can be reconfigured via @command{table-cell-map-hook}.  The
benefit of a pop-up menu is that it combines selection of the
location (which cell, where in the cell) and selection of the
desired operation into a single clicking action.


@node table function advising, Definition of tables and cells, table menu, table
@section Function Advising (Modification):

Some functions that are desired to run specially inside a table
cell are modified by way of function advice mechanism instead of
using key binding replacement.  The reason for this is that they
are such primitive that they may often be used as a building blocks
of other commands which are not known to this package, i.e. user
defined commands in a .emacs file.  To make sure the correct
behavior of them in a table cell, those functions are slightly
modified.  When the function executes, it checks if the point is
located in a table cell.  If so, the function behaves in a slightly
modified fashion otherwise executes normally.  The drawback of this
mechanism is there is a small overhead added to these functions for
testing if the location is within a table cell or not.  Due to the
limitation of advice mechanism those built-in subr functions in a
byte compiled package are out of reach from this package.

In general, redefining (or advising) an Emacs primitive is
discouraged.  If you think those advising in this package are not
safe enough or you simply do not feel comfortable with having them
you can set the variable `table-disable-advising' to non-nil before
loading this package for the first time.  This will disable the
advising all together.

The next table lists the functions that are advised to act
specially when used in a table cell.

@verbatim
+------------------------------------------------------------------+
|                        Advised Functions                         |
+---------------------+--------------------------------------------+
|      Function       |             Advice Description             |
+---------------------+--------------------------------------------+
|`kill-region'        |Kill between point and mark.  When both     |
|                     |point and mark reside in a same table cell  |
|                     |the text in the region within the cell is   |
|                     |deleted and saved in the kill ring.         |
|                     |Otherwise it retains the original behavior. |
+---------------------+--------------------------------------------+
|`delete-region'      |Delete the text between point and mark.     |
|                     |When both point and mark reside in a same   |
|                     |table cell the text in the region within the|
|                     |cell is deleted.  Otherwise it retains the  |
|                     |original behavior.                          |
+---------------------+--------------------------------------------+
|`copy-region-as-kill'|Save the region as if killed, but don't kill|
|                     |it.  When both point and mark reside in a   |
|                     |same table cell the text in the region      |
|                     |within the cell is saved.  Otherwise it     |
|                     |retains the original behavior.              |
+---------------------+--------------------------------------------+
|`kill-line'          |Kill the rest of the current line within a  |
|                     |table cell when point is in an active table |
|                     |cell.  Otherwise it retains the original    |
|                     |behavior.                                   |
+---------------------+--------------------------------------------+
|`yank'               |Reinsert the last stretch of killed text    |
|                     |within a cell when point resides in a       |
|                     |cell.  Otherwise it retains the original    |
|                     |behavior.                                   |
+---------------------+--------------------------------------------+
|`beginning-of-line'  |Move point to beginning of current line     |
|                     |within a cell when current point resides in |
|                     |a cell.  Otherwise it retains the original  |
|                     |behavior.                                   |
+---------------------+--------------------------------------------+
|`end-of-line'        |Move point to end of current line within a  |
|                     |cell when current point resides in a cell.  |
|                     |Otherwise it retains the original behavior. |
+---------------------+--------------------------------------------+
|`forward-word'       |Move point forward word(s) within a cell    |
|                     |when current point resides in a cell.       |
|                     |Otherwise it retains the original behavior. |
+---------------------+--------------------------------------------+
|`backward-word'      |Move point backward word(s) within a cell   |
|                     |when current point resides in a cell.       |
|                     |Otherwise it retains the original behavior. |
+---------------------+--------------------------------------------+
|`forward-paragraph'  |Move point forward paragraph(s) within a    |
|                     |cell when current point resides in a cell.  |
|                     |Otherwise it retains the original behavior. |
+---------------------+--------------------------------------------+
|`backward-paragraph' |Move point backward paragraph(s) within a   |
|                     |cell when current point resides in a cell.  |
|                     |Otherwise it retains the original behavior. |
+---------------------+--------------------------------------------+
|`center-line'        |Center the line point is on within a cell   |
|                     |when current point resides in a             |
|                     |cell. Otherwise it retains the original     |
|                     |behavior.                                   |
+---------------------+--------------------------------------------+
|`center-region'      |Center each non-blank line between point and|
|                     |mark.  When both point and mark reside in a |
|                     |same table cell the text in the region      |
|                     |within the cell is centered.  Otherwise it  |
|                     |retains the original behavior.              |
+---------------------+--------------------------------------------+
@end verbatim


@node Definition of tables and cells, Cell contents formatting, table function advising, table
@section Definition of tables and cells

There is no artificial-intelligence magic in this package.  The
definition of a table and the cells inside the table is reasonably
limited in order to achieve acceptable performance in the
interactive operation under Emacs lisp implementation.  A valid
table is a rectangular text area completely filled with valid
cells.  A valid cell is a rectangle text area, which four borders
consist of valid border characters.  Cells can not be nested one to
another or overlapped to each other except sharing the border
lines.  A valid character of a cell's vertical border is either
table-cell-vertical-char @code{|} or table-cell-intersection-char @code{+}.
A valid character of a cell's horizontal border is either
table-cell-horizontal-char @code{-} or table-cell-intersection-char @code{+}.
A valid character of the four corners of a cell must be
table-cell-intersection-char @code{+}.  A cell must contain at least one
character space inside.  There is no restriction about the contents
of a table cell, however it is advised if possible to avoid using
any of the border characters inside a table cell.  Normally a few
boarder characters inside a table cell are harmless.  But it is
possible that they accidentally align up to emulate a bogus cell
corner on which software relies on for cell recognition.  When this
happens the software may be fooled by it and fail to determine
correct cell dimension.

Following are the examples of valid tables.

@verbatim
+--+----+---+     +-+     +--+-----+
|  |    |   |     | |     |  |     |
+--+----+---+     +-+     |  +--+--+
|  |    |   |             |  |  |  |
+--+----+---+             +--+--+  |
                          |     |  |
                          +-----+--+
@end verbatim

The next five tables are the examples of invalid tables.  (From
left to right, 1. nested cells 2. overlapped cells and a
non-rectangle cell 3. non-rectangle table 4. zero width/height
cells 5. zero sized cell)

@verbatim
+-----+    +-----+       +--+    +-++--+    ++
|     |    |     |       |  |    | ||  |    ++
| +-+ |    |     |       |  |    | ||  |
| | | |    +--+  |    +--+--+    +-++--+
| +-+ |    |  |  |    |  |  |    +-++--+
|     |    |  |  |    |  |  |    | ||  |
+-----+    +--+--+    +--+--+    +-++--+
@end verbatim

Although the program may recognizes some of these invalid tables,
results from the subsequent editing operations inside those cells
are not predictable and will most likely start destroying the table
structures.

It is strongly recommended to have at least one blank line above
and below a table.  For a table to coexist peacefully with
surrounding environment table needs to be separated from unrelated
text.  This is necessary for the left table to grow or shrink
horizontally without breaking the right table in the following
example.

@verbatim
                         +-----+-----+-----+
 +-----+-----+           |     |     |     |
 |     |     |           +-----+-----+-----+
 +-----+-----+           |     |     |     |
                         +-----+-----+-----+
@end verbatim


@node Cell contents formatting, Cell Justification, Definition of tables and cells, table
@section Cell contents formatting

The cell contents are formatted by filling a paragraph immediately
after characters are inserted into or deleted from a cell.  Because
of this, cell contents always remain fit inside a cell neatly.  One
drawback of this is that users do not have full control over
spacing between words and line breaking.  Only one space can be
entered between words and up to two spaces between sentences.  For
a newline to be effective the new line must form a beginning of
paragraph, otherwise it'll automatically be merged with the
previous line in a same paragraph.  To form a new paragraph the
line must start with some space characters or immediately follow a
blank line.  Here is a typical example of how to list items within
a cell.  Without a space at the beginning of each line the items
can not stand on their own.

@verbatim
+---------------------------------+
|Each one of the following three  |
|items starts with a space        |
|character thus forms a paragraph |
|of its own.  Limitations in cell |
|contents formatting are:         |
|                                 |
| 1. Only one space between words.|
| 2. Up to two spaces between     |
|sentences.                       |
| 3. A paragraph must start with  |
|spaces or follow a blank line.   |
|                                 |
|This paragraph stays away from   |
|the item 3 because there is a    |
|blank line between them.         |
+---------------------------------+
@end verbatim

In the normal operation table cell width grows automatically when
certain word has to be folded into the next line if the width had
not been increased.  This normal operation is useful and
appropriate for most of the time, however, it is sometimes useful
or necessary to fix the width of table and width of table cells.
For this purpose the package provides fixed width mode.  You can
toggle between fixed width mode and normal mode by "C-!".

Here is a simple example of the fixed width mode.  Suppose we have
a table like this one.

@verbatim
+-----+
|     |
+-----+
@end verbatim

In normal mode if you type a word "antidisestablishmentarianism" it
grows the cell horizontally like this.

@verbatim
+----------------------------+
|antidisestablishmentarianism|
+----------------------------+
@end verbatim

 In the fixed width mode the same action produces the following
 result.  The folded locations are indicated by a continuation
 character (@code{\} is the default).  The continuation character is
 treated specially so it is recommended to choose a character that
 does not appear elsewhere in table cells.  This character is
 configurable via customization and is kept in the variable
 `table-word-continuation-char'.  The continuation character is
 treated specially only in the fixed width mode and has no special
 meaning in the normal mode however.

@verbatim
+-----+
|anti\|
|dise\|
|stab\|
|lish\|
|ment\|
|aria\|
|nism |
+-----+
@end verbatim


@node Cell Justification, Acknowledgments, Cell contents formatting, table
@section Cell Justification

By default the cell contents are filled with left justification and
no vertical justification.  A paragraph can be justified
individually but only horizontally.  Paragraph justification is for
appearance only and does not change any structural information
while cell justification affects table's structural information.
For cell justification a user can select horizontal justification
and vertical justification independently.  Horizontal justification
must be one of the three 'left, 'center or 'right.  Vertical
justification can be 'top, 'middle, 'bottom or 'none.  When a cell
is justified, that information is recorded as a part of text
property therefore the information is persistent as long as the
cell remains within the Emacs world.  Even copying tables by region
and rectangle manipulation commands preserve this information.
However, once the table text is saved as a file and the buffer is
killed the justification information vanishes permanently.  To
alleviate this shortcoming without forcing users to save and
maintain a separate attribute file, the table code detects
justification of each cell when recognizing a table.  This
detection is done by guessing the justification by looking at the
appearance of the cell contents.  Since it is a guessing work it
does not guarantee the perfectness but it is designed to be
practically good enough.  The guessing algorithm is implemented in
the function @command{table--detect-cell-alignment}.  If you have better
algorithm or idea any suggestion is welcome.


@node Acknowledgments,  , Cell Justification, table
@section Acknowledgments

Table would not have been possible without the help and
encouragement of the following spirited contributors.

Paul Georgief <pgeorgie@@doctordesign.com> has been the best tester
of the code as well as the constructive criticizer.

Gerd Moellmann <gerd@@gnu.org> gave me useful suggestions from Emacs
21 point of view.

Richard Stallman <rms@@gnu.org> showed the initial interest in this
attempt of implementing the table feature to Emacs.  This greatly
motivated me to follow through to its completion.

Kenichi Handa <handa@@etl.go.jp> kindly guided me through to
overcome many technical issues while I was struggling with quail
related internationalization problems.

Christoph Conrad <christoph.conrad@@gmx.de> suggested making symbol
names consistent as well as fixing several bugs.

Paul Lew <paullew@@cisco.com> suggested implementing fixed width
mode as well as multi column width (row height) input interface.

Michael Smith <smith@@xml-doc.org> a well-informed DocBook user
asked for CALS table source generation and helped me following
through the work by offering valuable suggestions and testing out
the code.  Jorge Godoy <godoy@@conectiva.com> has also suggested
supporting for DocBook tables.

Sebastian Rahtz <sebastian.rahtz@@computing-services.oxford.ac.uk>
contributed by implementing TEI (Text Encoding Initiative XML/SGML
DTD) table source generation into @code{table-generate-source} group
functions.

And many other individuals who reported bugs and suggestions.

@node tail, tc, table, Top
@chapter tail - Tail files within Emacs

@noindent Author: Benjamin Drieu <bdrieu@@april.org>

This program displays @emph{tailed} contents of files inside transients
windows of Emacs.  It is primarily meant to keep an eye on logs within
Emacs instead of using additional terminals.

@noindent Commands:

@table @samp
@item tail-file
Tails FILE specified with argument FILE inside a new buffer.
@item tail-command
Tails COMMAND with arguments ARGS inside a new buffer.
@end table

@node tc, tlc, tail, Top
@chapter tc - trivial-cite -- cite text with proper filling in mail

@noindent Author: Lars R. Clausen <lrclause@@cs.uiuc.edu>

Trivial-Cite has the same purpose as Supercite: Cite text for mail and
posting, but with different objectives.  Trivial-Cite tries hard to do
the following correctly:

@enumerate
@item
   Fill paragraphs of previously cited text correctly, even when encountering strange citing marks.
@item
   Parse the cited headers to allow attribution in a configurable way.
@item
   Allow the user to undo formatting.
@item
   Remove the signature as the last undoable action.
@item
   Allow the user to cite and fill cited text in other contexts.
@item
   Fix odd-looking citemarks to look nice (optional with @code{tc-normalize-cite-marks}). 
@end enumerate

Furthermore, it follows the suggestions of Son-of-RFC1036 and cites
with a >, and sensibly so.

No, I will not make it quote with name abbreviations like SuperCite does.
That style is annoying and unreadable, goes against the RFC's (or rather,
the sons of them:), and have generally been the most problematic thing to
deal with.  Trivial-cite can handle them, but is better at 'normal'
citation marking.

@noindent To use, add the following to your .emacs:

@verbatim
;; For Gnus:
(setq message-cite-function 'trivial-cite)

;; For MH-E
(add-hook 'mail-citation-hook 'trivial-cite)
(setq mh-yank-from-start-of-msg t)
;; -> then use `C-cC-y' in your draft.
@end verbatim

@node tlc, thinks, tc, Top
@chapter tlc - Major mode for editing tlc files

@noindent  Author: Eric M. Ludlam <eludlam@@mathworks.com>

This is a major mode for editing Target Language Compiler scripts.  It
automatically indents the programming constructs.

@node thinks, tld, tlc, Top
@chapter thinks - Insert text in a think bubble.

@noindent Author Dave Pearson <davep@@davep.org>

thinks.el is a little bit of silliness inspired by the think bubbles you
see in cartoons. It allows you to

@verbatim
. o O ( insert text that looks like this )
@end verbatim

into a buffer. This could possibly be handy for use in email and usenet
postings.

@noindent The commands are:

@table @samp
@item thinks
Insert TEXT wrapped in a think bubble.
@item thinks-region
Bubble wrap region bounding START and END.
@item thinks-yank
Do a `yank' and bubble wrap the yanked text.
@item thinks-maybe-region
If region is active, bubble wrap region bounding START and END.
@end table

@noindent Note that the code can handle multiple lines

@verbatim
. o O ( like this. That is, a body of text where the number of characters )
      ( exceeds the bounds of what you might consider to be a acceptable  )
      ( line length (he says, waffling on to fill a couple of lines).     )
@end verbatim

@noindent You can also control how the bubble looks with
@code{thinks-from}. The above had it set to @code{top}. You can have
@code{middle}:

@verbatim
      ( like this. That is, a body of text where the number of characters )
. o O ( exceeds the bounds of what you might consider to be a acceptable  )
      ( line length (he says, waffling on to fill a couple of lines).     )
@end verbatim

@noindent @code{bottom}:

@verbatim
      ( like this. That is, a body of text where the number of characters )
      ( exceeds the bounds of what you might consider to be a acceptable  )
. o O ( line length (he says, waffling on to fill a couple of lines).     )
@end verbatim

@noindent and @code{bottom-diagonal}:

@verbatim
      ( like this. That is, a body of text where the number of characters )
      ( exceeds the bounds of what you might consider to be a acceptable  )
      ( line length (he says, waffling on to fill a couple of lines).     )
    O
  o
.
@end verbatim

By default all of the thinking functions will fill (word wrap) the text
taking into account the value of @code{fill-column} minus the space required
for the bubble. Prefix a call to any of the functions with @key{C-u} to turn
off this behaviour.

@node tld, todoo, thinks, Top
@chapter tld - TLD (Top Level Domain) lookup tool.

@noindent Author: Dave Pearson <davep@@davep.org>

tld.el provides a command for looking up TLDs (Top Level Domain),
either by searching for a specific TLD or by searching country
names.

@noindent One command is provided:

@table @samp
@item tld
Search the TLD list.
@end table

@node todoo, toggle-option, tld, Top
@chapter todoo - Major mode for editing TODO files

@noindent Author: Daniel Lundin <daniel@@codefactory.se>

@noindent todoo does not work under XEmacs.

todoo.el is a mode for editing @emph{TODO} files in an outline-mode fashion. 
It has similarities to Oliver Seidel's todo-mode.el , but todoo.el
has  been significantly simplified to better adhere to mine and
other users' needs at the time. 

@noindent To show your personal todo-list:
@example
@command{M-x todoo}
@end example

@noindent To be prompted a filename, supply any prefix to 'todoo':
@example
@command{C-u M-x todoo}
@end example

@noindent For information on keybindings:
@example
@command{C-h f todoo-mode RET}
@end example

Customize your todoo with:
@example
@command{M-x customize-group RET todoo RET}
@end example

@node toggle-option, twiddle, todoo, Top
@chapter toggle-option - Easily toggle frequently toggled options

@noindent Author: Cyprian Laskowski <swagbelly@@yahoo.com>

I find myself toggling the same Emacs features very often, and I
always set up key bindings for these features.  The problem is that
the list is getting rather big, and it's a nuisance to sacrifice
individual bindings to such a simple operation as the toggling of a
variable.  So the idea here is: set up a customizable list of
options and how they are to be toggled (whether the buffer-local or
global value is toggled, or whether a function is called), and
assign ONE command (@command{toggle-option}) to @emph{ONE} key, from which all
those options can be easily toggled (using completion).  For
individual variables, you can set values to toggle to override the
default of nil and t.

To enable it, customize the group @code{toggle-option} and then the
variable @code{toggle-option-list}. 
See the documentation for @code{toggle-option-list} for details.

I also highly recommend that you bind @command{toggle-option} to a
key, by putting something like the following in your .emacs file as
well:

@example
(global-set-key "\M-o" 'toggle-option)
@end example

Now you can toggle options by typing @key{M-o} (remember that
completion can be used on your list) and supplying the first few
characters of an option.

@node twiddle, under, toggle-option, Top
@chapter twiddle - Cute mode-line display hack.

@noindent Author: Noah Friedman <friedman@@splode.com>

Inspired by a similar hack by Jim Blandy <jimb@@cyclic.com>.

There are two user commands of interest: @command{twiddle-start} and
@command{twiddle-compile}:

@table @samp
@item twiddle-start
Start a mode line display hack.
If called interactively with a prefix argument, prompt for the name of
a hack to run.
@item twiddle-compile
Like \\[compile], but run a twiddle hack during compilation.
@end table

If you write new twiddles, try to minimize or avoid consing, since those
functions are called constantly.

@node under, wdired, twiddle, Top
@chapter under - Underline with the ^ character

@noindent Author: Benjamin Drieu <bdrieu@@april.org>

This provide the command @command{underhat-region} to underline part
of a line with the @code{^} character.

Suggested key-binding to put in ~/.emacs:
@example
  (global-set-key "\C-c\C-u" 'underhat-region)
@end example

@emph{Bugs:} currently only works on a single line.  The region can't
span multiple lines.

@node wdired, xrdb-mode, under, Top
@chapter wdired - Rename files editing their names in dired buffers

@noindent Author: Juan Le@'on Lahoz Garc@'ia <juan-leon.lahoz@@tecsidel.es>

wdired.el (the "w" is for writable) provides an alternative way of
renaming files.

Have you ever wished to use @key{C-x r t} (string-rectangle), @key{M-%}
(query-replace), @key{M-c} (capitalize-word), etc. to change the name of
the files in a @code{dired} buffer? Now you can do this. All the power
of emacs commands are available to renaming files!

This package provides a function that makes the filenames of a a
dired buffer editable, by changing the buffer mode (which inhibits
all of the commands of dired mode). Here you can edit the names of
one or more files and directories, and when you press @key{C-c C-c}, the
renaming takes effect and you are back to dired mode.

@noindent Other things you can do with wdired:

@itemize @bullet
@item
To move files to another directory (by typing their path,
absolute or relative, as a part of the new filename).

@item
To change the target of symbolic links.

@item
To change the permission bits of the filenames (in systems with a
  working unix-alike @code{dired-chmod-program}). See and customize the
  variable @code{wdired-allow-to-change-permissions}. To change a single
  char (toggling between its two more usual values) you can press
  the space bar over it or left-click the mouse. To set any char to
  an specific value (this includes the SUID, SGID and STI bits) you
  can use the key labeled as the letter you want. Please note that
  permissions of the links cannot be changed in that way, because
  the change would affect to their targets, and this would not be
  WYSIWYG :-).

@item
To mark files for deletion, by deleting their whole filename.
@end itemize

Use @command{M-x customize-group RET wdired} if you want make changes to
the default behavior.

@noindent Usage:

The key @key{r} in dired-mode is defined to
@command{wdired-change-to-wdired-mode}.

You can start editing the names of the files by typing @key{r} (or
@command{M-x wdired-change-to-wdired-mode}) in dired-mode.  Use
@key{C-c C-c} when finished or @key{C-c C-k} to abort. You can use
also the menu options: in dired mode, @code{Edit File Names} under
@code{Immediate}.  While editing the names, a new submenu
@code{WDired} is available at top level. You can customize the
behavior of this package from this menu.

@node xrdb-mode,  , wdired, Top
@chapter xrdb-mode - Mode for editing X resource database files

@noindent Author: Barry A. Warsaw <barry@@python.org>

This file provides a major mode for editing X resource database files
(e.g. .Xdefaults, .Xenvironment, .Xresources).  It includes font-lock
definitions and commands for controlling indentation, re-indenting by
subdivisions, and loading and merging into the the resource database.

The mode should load automatically for appropriate files after having
customized @code{xrdb-mode-setup-auto-mode-alist}, or invoke it
using @command{xrdb-mode}.