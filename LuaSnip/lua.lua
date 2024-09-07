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

return {

s({trig="snip", dscr="A generic snippet environmennt", snippetType="autosnippet"},
  fmta(
    [=[
      s({trig="new", dscr="A generic new environmennt", snippetType="autosnippet"},
        fmta(
          [[
            snippet<>
          ]],
          {
            i(1),
          }
        ),
        {condition = line_begin}
      ),
    ]=],
    {
      i(1),
    }
  ),
  {condition = line_begin}
),
}
