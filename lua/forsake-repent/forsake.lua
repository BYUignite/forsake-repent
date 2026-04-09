
local M = {}

--=============================================================================

function M.setup()

    --=============================================================================
    -- Setup

    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name   = "forsake"

    local hl = vim.api.nvim_set_hl

    --=============================================================================
    -- Palette

    local c = {

        blk = "#000000", --hsl(200, 00,  0),
        c00 = "#05131A", --hsl(200, 70,  6),
        c01 = "#0E2B39", --hsl(200, 60, 14),
        c02 = "#1C4154", --hsl(200, 50, 22),
        c03 = "#2E576B", --hsl(200, 40, 30),
        c04 = "#446B7E", --hsl(200, 30, 38),
        c05 = "#5E7D8D", --hsl(200, 20, 46),
        c06 = "#7292A1", --hsl(200, 20, 54),
        c07 = "#8BA5B1", --hsl(200, 20, 62),
        c08 = "#A3B8C2", --hsl(200, 20, 70),
        c09 = "#BCCBD2", --hsl(200, 20, 78),
        c10 = "#D4DEE2", --hsl(200, 20, 86),
        c11 = "#EDF1F3", --hsl(200, 20, 94),
        wht = "#ffffff", --hsl(200, 00,100),

        red = "#CC8866", --hsl(350, 50, 60)
        org = "#CCBB66", --hsl( 20, 50, 60)
        yel = "#AACC66", --hsl( 50, 50, 60)
        ylg = "#77CC66", --hsl( 80, 50, 60)
        grn = "#66CC88", --hsl(110, 50, 60)
        grb = "#66CCBB", --hsl(140, 50, 60)
        blg = "#66AACC", --hsl(170, 50, 60)
        blu = "#6677CC", --hsl(200, 50, 60)
        blp = "#8866CC", --hsl(230, 50, 60)
        prb = "#BB66CC", --hsl(260, 50, 60)
        pnk = "#CC66AA", --hsl(290, 50, 60)
        prp = "#CC6677", --hsl(320, 50, 60)
    }

    --=============================================================================
    ------------------- Terminal colors

    vim.g.terminal_color_0  = c.c07
    vim.g.terminal_color_1  = c.red
    vim.g.terminal_color_2  = c.grb
    vim.g.terminal_color_3  = c.yel
    vim.g.terminal_color_4  = c.blg
    vim.g.terminal_color_5  = c.org
    vim.g.terminal_color_6  = c.blg
    vim.g.terminal_color_7  = c.blk
    vim.g.terminal_color_8  = c.c07
    vim.g.terminal_color_9  = c.red
    vim.g.terminal_color_10 = c.grb
    vim.g.terminal_color_11 = c.yel
    vim.g.terminal_color_12 = c.blg
    vim.g.terminal_color_13 = c.org
    vim.g.terminal_color_14 = c.blk
    vim.g.terminal_color_15 = c.c07

    --=============================================================================
    -- highlight group colors
    -- variables used multiple times

    local Normal     = { fg = c.c07, bg = c.c01 }
    local Cursor     = { fg = c.c11, bg = c.blk }
    local FoldColumn = { fg = c.c06 } 
    local Visual     = { fg = c.c08, bg = c.c02 } 
    local Search     = { fg = c.c10, bg = c.c05 } 
    local VertSplit  = { fg = c.c04 } 
    local TabLine    = { fg = c.c05, bg = c.c01 } 
    local Comment    = { fg = c.c04, italic = true }
    local String     = { fg = c.blu }
    local Number     = { fg = c.blu }
    local Error      = { fg = c.wht, bg=c.ppr }
    local Warning    = { bg = c.yel, bold = true }

    ------------------- status line 

    hl(0, "SLine1",  { fg=c.c05, bg=c.c01, bold=true })
    hl(0, "Trans1",  { fg=c.c07, bg=c.c03})
    hl(0, "SLine2",  { fg=c.c07, bg=c.c03, bold=true })
    hl(0, "Trans2",  { fg=c.c03, bg=c.c01})
    hl(0, "SLine3",  { fg=c.c05, bg=c.c01 })
    hl(0, "Trans3",  { fg=c.c07, bg=c.c01})

    ------------------- general editor

    hl(0, "Normal",       Normal)
    hl(0, "NormalNC",     Normal)
    hl(0, "EndOfBuffer",  Normal)
    hl(0, "Cursor",       Cursor)
    hl(0, "CursorLine",   { bold = true })
    hl(0, "CursorColumn", { bg = c.c01 })
    hl(0, "ColorColumn",  Normal)
    hl(0, "LineNr",       { fg = c.c03 })
    hl(0, "CursorLineNr", { fg = c.c06, bold = true })
    hl(0, "FoldColumn",   FoldColumn)
    hl(0, "SignColumn",   FoldColumn)
    hl(0, "Folded",       { fg = c.c08, italic = true })

    ------------------- search, selection

    hl(0, "Visual",       Visual)
    hl(0, "VisualNOS",    Visual)
    hl(0, "Search",       Search)
    hl(0, "IncSearch",    Search)
    hl(0, "Substitute",   Search)

    ------------------- messages, etc.

    hl(0, "Question",     Normal)
    hl(0, "MoreMsg",      Normal)
    hl(0, "ErrorMsg",     Error)
    hl(0, "WarningMsg",   Warning)
    hl(0, "Conceal",      Normal)
    hl(0, "Whitespace",   Normal)
    hl(0, "ModeMsg",      Normal)
    hl(0, "Title",        { fg = c.red, bold = true })
    hl(0, "SpecialKey",   { fg = c.red })

    ------------------- split windows

    hl(0, "VertSplit",     VertSplit)
    hl(0, "WinSeparator",  VertSplit)
    hl(0, "TabLine",       TabLine)
    hl(0, "TabLineFill",   TabLine)
    hl(0, "StatusLine",    { fg = c.c01, bg = c.c08, bold = true })
    hl(0, "StatusLineNC",  { fg = c.c01, bg = c.c11 })
    hl(0, "TabLineSel",    { fg = c.c01, bg = c.c07, bold = true })

    ------------------- floating windows

    hl(0, "NormalFloat",   Normal)
    hl(0, "Pmenu",         { bg = c01 })
    hl(0, "PmenuSel",      { bg = c.c02, bold = true })
    hl(0, "PmenuSbar",     { fg = c.c11, bg = c.c01 })
    hl(0, "PmenuThumb",    { fg = c.wht, bg = c.c02 })

    ------------------- syntax

    hl(0, "Comment",   Comment)
    hl(0, "String",    String)
    hl(0, "Constant",  String)
    hl(0, "Character", String)
    hl(0, "Number",    Number)
    hl(0, "Boolean",   Number)
    hl(0, "Float",     Number)

    hl(0, "Identifier", Normal)
    hl(0, "Function",   { fg = c.org })
    hl(0, "Statement",  { fg = c.red })
    hl(0, "Conditional",{ fg = c.red })
    hl(0, "Repeat",     { fg = c.red })
    hl(0, "Label",      { fg = c.red })
    hl(0, "Operator",   { fg = c.blue })
    hl(0, "Keyword",    { fg = c.red, bold = true })
    hl(0, "Exception",  { fg = c.red })

    hl(0, "PreProc",    { fg = c.pnk })
    hl(0, "Include",    { fg = c.pnk })
    hl(0, "Define",     { fg = c.pnk })
    hl(0, "Macro",      { fg = c.pnk })
    hl(0, "PreCondit",  { fg = c.pnk })

    hl(0, "Type",        { fg = c.grb })
    hl(0, "StorageClass",{ fg = c.grb })
    hl(0, "Structure",   { fg = c.grb })
    hl(0, "Typedef",     { fg = c.grb })

    hl(0, "Special",      { fg = c.prp })
    hl(0, "SpecialChar",  { fg = c.prp })
    hl(0, "Tag",          { fg = c.prp })
    hl(0, "Delimiter",    { fg = c.prp })
    hl(0, "Debug",        { fg = c.prp })

    hl(0, "Underlined",  { underline = true })
    hl(0, "Bold",        { bold = true })
    hl(0, "Italic",      { italic = true })
    hl(0, "Ignore",      {  })
    hl(0, "Error",       Error)
    hl(0, "Todo",        Warning)

    ------------------- treesitter

    hl(0, "@variable",        { fg = c.c09 })
    hl(0, "@variable.builtin",{ fg = c.red })
    hl(0, "@property",        { fg = c.blp })
    hl(0, "@field",           { fg = c.blu })
    hl(0, "@parameter",       { fg = c.org })

    hl(0, "@function",        { fg = c.org })
    hl(0, "@function.builtin",{ fg = c.blu, italic = true })
    hl(0, "@function.macro",  { fg = c.blg })

    hl(0, "@method",          { fg = c.blu })
    hl(0, "@constructor",     { fg = c.yel })

    hl(0, "@keyword",         { fg = c.org, bold = true })
    hl(0, "@keyword.function",{ fg = c.org, bold = true })
    hl(0, "@keyword.return",  { fg = c.red, bold = true })
    hl(0, "@conditional",     { fg = c.red })
    hl(0, "@repeat",          { fg = c.prp })
    hl(0, "@operator",        { fg = c.blu })

    hl(0, "@string",          { fg = c.blu })
    hl(0, "@string.escape",   { fg = c.blu })
    hl(0, "@string.regex",    { fg = c.blu })
    hl(0, "@string.special",  { fg = c.blu })

    hl(0, "@comment",         { fg = c.c04, italic = true })
    hl(0, "@comment.warning", { fg = c.yel, bold = true })
    hl(0, "@comment.error",   { fg = c.wht, bg = c.red })

    hl(0, "@constant.builtin",{ fg = c.blu, italic = true })
    hl(0, "@constant",        Number)
    hl(0, "@number",          Number)
    hl(0, "@boolean",         Number)

    hl(0, "@type",            { fg = c.grb })
    hl(0, "@type.builtin",    { fg = c.yel })
    hl(0, "@attribute",       { fg = c.blu })
    hl(0, "@namespace",       { fg = c.c07 })
    hl(0, "@punctuation",     { fg = c.c07 })
    hl(0, "@tag",             { fg = c.red })
    hl(0, "@tag.attribute",   { fg = c.blu })
    hl(0, "@tag.delimiter",   { fg = c.c07 })

    hl(0, "@text",            { fg = c.c10 })
    hl(0, "@text.title",      { fg = c.blu, bold = true })
    hl(0, "@text.literal",    { fg = c.grb })
    hl(0, "@text.uri",        { fg = c.blu, underline = true })
    hl(0, "@text.reference",  { fg = c.prp })

    ------------------- diagnostics, LSP

    hl(0, "DiagnosticError",  { fg = c.red })
    hl(0, "DiagnosticWarn",   { fg = c.yel })
    hl(0, "DiagnosticInfo",   { fg = c.blg })
    hl(0, "DiagnosticHint",   { fg = c.blu })

    hl(0, "DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_high })
    hl(0, "DiagnosticVirtualTextWarn",  { fg = c.yel, bg = c.bg_high })
    hl(0, "DiagnosticVirtualTextInfo",  { fg = c.blg, bg = c.bg_high })
    hl(0, "DiagnosticVirtualTextHint",  { fg = c.blu, bg = c.bg_high })

    hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.red })
    hl(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yel })
    hl(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = c.blg })
    hl(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = c.blu })

    hl(0, "LspReferenceText",  { bg = c.blk })
    hl(0, "LspReferenceRead",  { bg = c.blk })
    hl(0, "LspReferenceWrite", { bg = c.blk })
    hl(0, "LspInlayHint",      { fg = c.blk, bg = c.blk, italic = true })

    ------------------- diff

    hl(0, "DiffAdd",    { fg = c.c10, bg = c.grb })
    hl(0, "DiffChange", { fg = c.blk, bg = c.org })
    hl(0, "DiffText",   { fg = c.c10, bg = c.org })
    hl(0, "DiffDelete", { fg = c.c10, bg = c.ppr })

    ------------------- git

    hl(0, "GitSignsAdd",    { fg = c.grb })
    hl(0, "GitSignsChange", { fg = c.yel })
    hl(0, "GitSignsDelete", { fg = c.red })

    ------------------- markdown

    hl(0, "MarkdownHeadingDelimiter", { fg = c.blg })
    hl(0, "MarkdownCode",             { fg = c.grb })
    hl(0, "MarkdownCodeBlock",        { fg = c.grb })
    hl(0, "MarkdownLinkText",         { fg = c.blu, underline = true })
    hl(0, "MarkdownUrl",              { fg = c.blu, underline = true })

    ------------------- plugins

    hl(0, "TelescopeNormal",      { bg = c.c01 })
    hl(0, "TelescopeSelection",   { bg = c.c02, bold = true })
    hl(0, "TelescopeBorder",      VertSplit)
    hl(0, "TelescopePromptBorder",VertSplit)
    hl(0, "TelescopePromptNormal",{ fg = c.c09, bg = c.wht })
    hl(0, "TelescopePromptPrefix",{ fg = c.c09, bg = c.wht })
    hl(0, "TelescopeMatching",    { fg = c.c07, bold = true })

    hl(0, "NvimTreeNormal",       { fg = c.c09, bg = c.bg })
    hl(0, "NvimTreeEndOfBuffer",  { fg = c.wht, bg = c.wht })
    hl(0, "NvimTreeFolderName",   { fg = c.blg })
    hl(0, "NvimTreeRootFolder",   { fg = c.red, bold = true })
    hl(0, "NvimTreeGitDirty",     { fg = c.yel })
    hl(0, "NvimTreeGitNew",       { fg = c.grb })
    hl(0, "NvimTreeGitDeleted",   { fg = c.red })

    hl(0, "CmpItemAbbr",          { fg = c.c09 })
    hl(0, "CmpItemAbbrMatch",     { fg = c.yel, bold = true })
    hl(0, "CmpItemAbbrMatchFuzzy",{ fg = c.yel, bold = true })
    hl(0, "CmpItemMenu",          { fg = c.c07 })
    hl(0, "CmpItemKindFunction",  { fg = c.blg })
    hl(0, "CmpItemKindMethod",    { fg = c.blg })
    hl(0, "CmpItemKindVariable",  { fg = c.c09 })
    hl(0, "CmpItemKindKeyword",   { fg = c.red })
    hl(0, "CmpItemKindText",      { fg = c.grb })
    hl(0, "CmpItemKindSnippet",   { fg = c.prp })

    hl(0, "DashboardHeader",      { fg = c.blg, bold = true })
    hl(0, "DashboardCenter",      { fg = c.c09 })
    hl(0, "DashboardShortcut",    { fg = c.blu })
    hl(0, "DashboardFooter",      { fg = c.c04, italic = true })

    hl(0, "WhichKey",             { fg = c.blg })
    hl(0, "WhichKeyGroup",        { fg = c.prp })
    hl(0, "WhichKeyDesc",         { fg = c.c09 })
    hl(0, "WhichKeySeparator",    { fg = c.c07 })
    hl(0, "WhichKeyFloat",        { bg = c.c01 })

    --=============================================================================
    -- link groups

    vim.cmd([[
      hi! link TSComment  Comment
      hi! link TSString   String
      hi! link TSKeyword  Keyword
      hi! link TSFunction Function
      hi! link TSVariable Identifier
      hi! link TSConstant Constant
    ]])

end

--=============================================================================

return M
