local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s("tc", fmt([[
try {{
    {}
}} catch (err) {{
    if (isRedirectError(err)) throw err;
    console.error("[{}]", err);
    throw err;
}}
]], {
    -- Dynamic Node: allows the content to be editable
    d(1, function(_, snip)
      local selection = snip.env.TM_SELECTED_TEXT

      if selection and selection[1] and #selection[1] > 0 then
        return sn(nil, { i(1, selection) })
      end
      return sn(nil, { i(1, "// operators here") })
    end), i(2, "context_name"), -- This is now the second jump point
  }))
}
