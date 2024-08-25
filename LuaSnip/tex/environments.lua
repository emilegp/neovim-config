local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local line_begin = require("luasnip.extras.expand_conditions").line_begin

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

local not_in_mathzone = function()
  return not in_mathzone
end

local in_itemize = function()
  local is_inside = vim.fn['vimtex#env#is_inside']('itemize')
  return (is_inside[1] > 0 and is_inside[2] > 0)
end

local in_enumerate = function()
  local is_inside = vim.fn['vimtex#env#is_inside']('enumerate')
  return (is_inside[1] > 0 and is_inside[2] > 0)
end

local can_item = function()
  return (in_itemize() or in_enumerate())
end

return {
s({trig = "sec", dscr="Top-level section", snippetType="autosnippet"},
  fmta(
    [[
      \section{<>}

      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig = "sub", dscr="subsection header", snippetType="autosnippet"},
  fmta(
    [[
      \subsection{<>}

      <>
    ]],

    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="ssub", dscr="subsubsection header", snippetType="autosnippet"},
  fmta(
    [[
      \subsubsection{<>}

      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="it", dscr="itemize environment", snippetType="autosnippet"},
  fmta(
    [[
      \begin{itemize}
      \item <>
      \end{itemize}
      
      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="en", dscr="enumerate environment", snippetType="autosnippet"},
  fmta(
    [[
      \begin{enumerate}
      \item <>
      \end{enumerate}
      
      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="-", dscr="item in itemize or enumerate", snippetType="autosnippet"},
  fmta(
    [[
    \item <>
    ]],
    {
      i(1)
    }
  ),
  {condition = can_item}
),

s({trig="fi", dscr="figure environmennt", snippetType="autosnippet"},
  fmta(
    [[
      \begin{figure}[H]
        \centering
        \includegraphics[scale=0.5]{<>}
        \caption{<>}
        \label{<>}
      \end{figure}

      <>
    ]],
    {
      i(1),
      i(2),
      i(3),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="mm", dscr="inline math mode", snippetType="autosnippet"},
  fmta(
    [[
      $<>$ <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = not_in_mathzone}
),

s({trig="mu", dscr="math equation but unnumbered", snippetType="autosnippet"},
  fmta(
    [[
      \[<>\] <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = not_in_mathzone}
),

s({trig="eq", dscr="equation environment", snippetType="autosnippet"},
  fmta(
    [[
      \begin{equation}
        <>
      \end{equation}
      
      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig="al", dscr="align environment", snippetType="autosnippet"},
  fmta(
    [[
      \begin{align}
        <>
      \end{align}
      
      <>
    ]],
    {
      i(1),
      i(0)
    }
  ),
  {condition = line_begin}
),

s({trig = "ct", dscr="code text", snippetType="autosnippet"},
  fmta(
    [[
      \texttt{<>} <>
    ]],

    {
      i(1),
      i(0)
    }
  ),
  {condition = not_in_mathzone}
),

s({trig = "tt", dscr="normal text for math mode", snippetType="autosnippet"},
  fmta(
    [[
      \text{<>} <>
    ]],

    {
      i(1),
      i(0)
    }
  ),
  {condition = in_mathzone}
),

s({trig = "tit", dscr="italics text", snippetType="autosnippet"},
  fmta(
    [[
      \textit{<>} <>
    ]],

    {
      i(1),
      i(0)
    }
  ),
  {}
),

}
