local ls = require('luasnip')
local snippet = ls.snippet
local autosnippet = ls.extend_decorator.apply(snippet, {snippetType = 'autosnippet'})
local fmt = require('luasnip.extras.fmt').fmt
local i = ls.insert_node
local ts_utils = require('nvim-treesitter.ts_utils')

-- Condition functions
local function is_node_math(node)
  local type = node:type()
  return type == 'math_environment' or type == 'inline_formula' or type == 'displayed_equation'
end

local function is_math_env()
  local curr_node = ts_utils.get_node_at_cursor()
  while curr_node do
    if is_node_math(curr_node) then
      return true
    end
    curr_node = curr_node:parent()
  end
  return false
end

local function not_math()
  return not is_math_env()
end

-- Snippet definitions
return {
  autosnippet(
    {trig = 'mm', name = 'Math mode', hidden = true},
    fmt([[\(<>\)]], {i(1)}, {delimiters = '<>'}),
    {condition = not_math, show_condition = not_math}
  ),
  -- Add more snippets here
}
