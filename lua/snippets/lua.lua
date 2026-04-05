local ls  = require("luasnip")
local s   = ls.snippet
local i   = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s("lsnip", fmt([[
local ls = require("luasnip")
local s  = ls.snippet
local i  = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {{
  s("{}", fmt([==[
    {}
  ]==], {{
    i(1, ""),
  }})),
}}
]], {
    i(1, "trigger"),
    i(2, "-- body"),
  })),
}
