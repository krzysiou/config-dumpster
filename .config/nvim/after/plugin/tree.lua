local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

tree.setup({
  ignore_buffer_on_setup = true,
  hijack_cursor = true,
  sort_by = "case_sensitive",
  hijack_unnamed_buffer_when_opening = true,
  view = {
    width = 30,
    hide_root_folder = true,
    relativenumber = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_opened_files = "",
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set("n", ";e", ":NvimTreeToggle<CR>");

vim.o.confirm = true
vim.api.nvim_create_autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
        and layout[3] == nil then vim.cmd("quit") end
  end
})
