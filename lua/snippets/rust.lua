local ls  = require("luasnip")
local s   = ls.snippet
local i   = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  -- main function boiler plate
  s("rum", fmt([[
fn main() {
    <body presentations>
}
<exit>
]], {
    i(1, "// body"),
    i(0),
  }, {
    delimiter = "<>"
  })),
}
