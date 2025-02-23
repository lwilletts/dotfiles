" test colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdd      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffDelete   "\"__DiffDelete.*"
syn match Folded       "\"__Folded.*"
syn match Function     "\"__Function.*"
syn match Identifier   "\"__Identifier.*"
syn match IncSearch    "\"__IncSearch.*"
syn match NonText      "\"__NonText.*"
syn match Normal       "\"__Normal.*"
syn match Pmenu        "\"__Pmenu.*"
syn match PreProc      "\"__PreProc.*"
syn match Search       "\"__Search.*"
syn match Special      "\"__Special.*"
syn match SpecialKey   "\"__SpecialKey.*"
syn match Statement    "\"__Statement.*"
syn match StatusLine   "\"__StatusLine.*"
syn match StatusLineNC "\"__StatusLineNC.*"
syn match String       "\"__String.*"
syn match Todo         "\"__Todo.*"
syn match Type         "\"__Type.*"
syn match Underlined   "\"__Underlined.*"
syn match VertSplit    "\"__VertSplit.*"
syn match Visual       "\"__Visual.*"
syn match SpellBad     "\"__SpellBad.*"

"__Cursor               char under the cursor?
"__CursorLine           Line where the cursor is
"__Normal               Typical text goes like this
"__Comment              /* this is a comment */
"__Folded               +--- 1 line : Folded line ---
"__Search               This is what you're searching for
"__IncSearch            Next search term
"__Visual               Selected text looks like this
"__SpellBad             wrongspelling
"__Function             function sblah()
"__Identifier           Never ran into that actually...
"__Constant             var = SHBLAH
"__String               "Hello, World!"
"__Special              true false NULL SIGTERM
"__Statement            if else return for switch
"__DiffAdd              +line added from file.orig
"__DiffChange           line changed from file.orig
"__DiffText             actual changes on this line
"__DiffDelete           -line removed from file.orig
"__NonText              This is not a text, move on
"__Pmenu                Currently selected menu item
"__PreProc              #define SHBLAH true
"__SpecialKey           Never ran into that either
"__StatusLine           Statusline of current windows
"__StatusLineNC         Statusline of other windows
"__Todo                 TODO: remove todos from source
"__Type                 int float char void unsigned uint32_t
"__Underlined           Anything underlined
"__VertSplit            :vsplit will only show ' | '
