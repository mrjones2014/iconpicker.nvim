# iconpicker.nvim

Just a simple plugin to provide a `vim.ui.select` picker to pick a nerdfont icon.

## Usage

```lua
-- Give the `pick` function a callback to call with the selected icon
require('iconpicker').pick(function(icon)
  if not icon then
    return
  end

  vim.fn.jobstart(string.format('echo -n %q | pbcopy', icon), { detach = true })
  vim.notify('Icon copied to clipboard.')
end)
```
