-- [nfnl] Compiled from fnl/lib/nvim.fnl by https://github.com/Olical/nfnl, do not edit.
local function autocmd(events, opts)
  return vim.api.nvim_create_autocmd(events, opts)
end
local function clear_autocmds(opts)
  return vim.api.nvim_clear_autocmds(opts)
end
local function augroup(name, _3fopts)
  return vim.api.nvim_create_augroup(name, (opts or {}))
end
local function keymap(mode, lhs, rhs, _3fopts)
  local string_mode = table.concat(mode)
  return vim.api.nvim_set_keymap(string_mode, lhs, rhs, (opts or {}))
end
local function opt(key, value)
  vim.opt[key] = value
  return nil
end
local function g(key, value)
  vim.g[key] = value
  return nil
end
local function colorscheme(name)
  return vim.cmd(("colorscheme " .. name))
end
return {autocmd = autocmd, ["clear-autocmds"] = clear_autocmds, augroup = augroup, keymap = keymap, opt = opt, g = g, colorscheme = colorscheme}
