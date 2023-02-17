local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "buffers", -- tabs | buffers
    separator_style = 'padded_slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        padding = 1
      }
    },
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    separator_visible = {
      fg = '#073642',
      bg = '#002b36'
    },
    background = {
      fg = '#9B9B9B',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true,
      italic = false,
    },
    buffer_visible = {
      fg = '#07DD8A',
      bg = '#002b36'
    },
    fill = {
      bg = '#073642'
    },
    modified = {
      fg = '#07DDC3',
      bg = '#002b36'
    },
    modified_selected = {
      fg = '#07DDC3',
    },
    modified_visible = {
      fg = '#07DDC3',
      bg = '#002b36'
    },
  }
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
