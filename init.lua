require("smart-enter"):setup {
  open_multi = true
}

require("full-border"):setup {
  type = ui.Border.ROUNDED
}

-- Show symlinks in status bar
Status:children_add(function(self)
  local h = self._current.hovered
  if h and h.link_to then
    return " -> " .. tostring(h.link_to)
  else
    return ""
  end
end, 3300, Status.LEFT)
