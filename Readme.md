# urahara.nvim

A dark Neovim colorscheme inspired by forest undergrowth — deep blacks with earthy greens and warm creams. Built as a spiritual successor to [vampire-void](https://github.com/SouthKioto/vampire-void.nvim), sharing the same structure but swapping blood reds for moss and parchment.

## Palette

| Role | Hex | |
|---|---|---|
| Background | `#0e100c` | ![](https://www.colorhexa.com/0e100c.png) |
| Foreground | `#eeede8` | ![](https://www.colorhexa.com/eeede8.png) |
| Keyword | `#586d4a` | ![](https://www.colorhexa.com/586d4a.png) |
| Operator | `#92bf7a` | ![](https://www.colorhexa.com/92bf7a.png) |
| String | `#dddbd6` | ![](https://www.colorhexa.com/dddbd6.png) |
| Type | `#b5a97a` | ![](https://www.colorhexa.com/b5a97a.png) |
| Comment | `#c8c5be` | ![](https://www.colorhexa.com/c8c5be.png) |

## Requirements

- Neovim 0.9+
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (recommended)

## Installation

**lazy.nvim**
```lua
{
  "SouthKioto/urahara.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("urahara").setup()
    vim.g.colors_name = "urahara"
  end,
}
```

**packer.nvim**
```lua
use {
  "SouthKioto/urahara.nvim",
  config = function()
    require("urahara").setup()
  end
}
```

## Plugin Support

- **lualine.nvim** — theme adapts automatically via highlight group API
- **alpha-nvim** — dashboard header and buttons styled in palette
- **neo-tree.nvim** — file tree colors
- **telescope.nvim** — borders, selection, matches
- **gitsigns.nvim** — add / change / delete indicators
- **lazy.nvim** — float UI
- **colorful-winsep.nvim** — window separators

## Lualine

The theme reads colors dynamically from active highlight groups, so it works with any colorscheme — not just urahara.

```lua
local function hl_color(group, attr)
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
  if not ok or not hl then return nil end
  local val = hl[attr]
  if not val then return nil end
  return string.format("#%06x", val)
end
```

See `ui.lua` for the full lualine + alpha configuration.

## License

MIT
