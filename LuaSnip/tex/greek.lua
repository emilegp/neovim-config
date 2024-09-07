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

local in_mathzone = function()
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return{
-- greek letters
s({trig=";a", dscr="alpha greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \alpha<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";A", dscr="Alpha greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Alpha<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";b", dscr="beta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \beta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";B", dscr="Beta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Beta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";g", dscr="gamma greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \gamma<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";G", dscr="Gamma greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Gamma<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";d", dscr="delta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \delta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";D", dscr="Delta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Delta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";ep", dscr="epsilon greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \epsilon<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Ep", dscr="Epsilon greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Epsilon<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";z", dscr="zeta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \zeta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Z", dscr="Zeta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Zeta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";et", dscr="eta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \eta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Et", dscr="Eta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Eta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";th", dscr="theta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \theta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Th", dscr="Theta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Theta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";i", dscr="iota greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \iota<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";I", dscr="Iota greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Iota<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";k", dscr="kappa greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \kappa<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";K", dscr="Kappa greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Kappa<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";l", dscr="lambda greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \lambda<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";L", dscr="Lambda greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Lambda<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";m", dscr="mu greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \mu<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";M", dscr="Mu greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Mu<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";n", dscr="nu greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \nu<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";N", dscr="Nu greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Nu<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";x", dscr="xi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \xi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";X", dscr="Xi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Xi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";om", dscr="omicron greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \omicron<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Om", dscr="Omicron greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Omicron<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";pi", dscr="pi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \pi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Pi", dscr="Pi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Pi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";r", dscr="rho greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \rho<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";R", dscr="Rho greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Rho<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";s", dscr="sigma greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \sigma<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";S", dscr="Sigma greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Sigma<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";ta", dscr="tau greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \tau<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Ta", dscr="Tau greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Tau<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";u", dscr="upsilon greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \upsilon<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";U", dscr="Upsilon greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Upsilon<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";ph", dscr="phi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \phi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Ph", dscr="Phi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Phi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";ch", dscr="chi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \chi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Ch", dscr="Chi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Chi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";ps", dscr="psi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \psi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Ps", dscr="Psi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Psi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";oh", dscr="omega greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \omega<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";Oh", dscr="Omega greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \Omega<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";;e", dscr="variant epsilon greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \varepsilon<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";;k", dscr="variant kappa greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \varkappa<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";;p", dscr="variant phi greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \varphi<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";;r", dscr="variant rho greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \varrho<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";;s", dscr="variant sigma greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \varsigma<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),

s({trig=";;t", dscr="variant theta greek letter", snippetType="autosnippet", wordTrig = false},
  fmta(
    [[
      \vartheta<>
    ]],
    {
      i(1),
    }
  ),
  {condition = in_mathzone}
),
}
