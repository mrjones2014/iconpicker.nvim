local M = {}

function M.pick(on_done)
  vim.ui.select(require('iconpicker.icons'), {
    prompt = 'Copy Icon ',
    format_item = function(item)
      return string.format('%s %s', item[2], item[1])
    end,
  }, function(selected)
    if not selected then
      return
    end
    local icon = selected[2]
    icon = icon:gsub('\n', '')
    if type(on_done) == 'function' then
      on_done(icon)
    end
  end)
end

return M
