local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
  -- try/catch block
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
  })),

  -- React server component
  s("rsc", fmt([[
interface {}Props {{
  children?: React.ReactNode;
}}

export const {} = ({{ children }}: {}Props) => {{
  return (
    <div>
      {{children}}
      {}
    </div>
  );
}};
]], {
    i(1, "MyComponent"), -- The source (Type once)
    rep(1),              -- Mirrors i(1) for the variable name
    rep(1),              -- Mirrors i(1) for the Props type
    i(0),                -- Final jump point
  })),

  -- React client component with useState
  s("rcc", fmt([[
"use client";

import {{ useState }} from "react";

interface {}Props {{
  {}
}}

export function {}({{ {} }}: {}Props) {{
  const [{}, set{}] = useState({});

  return (
    <div>
      {}
    </div>
  );
}}
]], { {
    i(1, "MyComponent"),
    i(2, ""),
    rep(1),
    i(4, ""),
    rep(1),
    i(6, "value"),
    rep(6),
    i(8, "null"),
    i(9, ""),
  } })),

  --Next.js page
  s("nxpage", fmt([[
import {{ Metadata }} from "next";

interface PageProps {{
  searchParams: Promise<SearchParams>;
}}

export default async function {}Page({{ searchParams }}: PageProps) {{
  const {{ {} }} = await searchParams;
  {}
  return (
    <main>
      {}
    </main>
  );
}}
]], { {
    i(1, "My"),
    i(2, "q"),
    i(3, "// fetch data"),
    i(4, ""),
  } })),

  --Next.js Layout
  s("nxlay", fmt([[
export default function {}Layout({{
  children,
}}: {{
  children: React.ReactNode;
}}) {{
  return (
    <div className="{}">
      {{children}}
    </div>
  );
}}
]], { {
    i(1, "My"),
    i(2, ""),
  } })),

}
