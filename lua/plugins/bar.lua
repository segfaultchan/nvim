return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = {
    { '<A-n>', '<Cmd>BufferLineCycleNext<CR>' },
    { '<A-p>', '<Cmd>BufferLineCyclePrev<CR>' },
    { '<A-d>', '<Cmd>BufferLinePickClose<CR>' },
    { '<A-f>', '<Cmd>BufferLinePick<CR>' },

    { '0', '<Cmd>BufferLineGoToBuffer 0<CR>' },
    { '1', '<Cmd>BufferLineGoToBuffer 1<CR>' },
    { '2', '<Cmd>BufferLineGoToBuffer 2<CR>' },
    { '3', '<Cmd>BufferLineGoToBuffer 3<CR>' },
    { '4', '<Cmd>BufferLineGoToBuffer 4<CR>' },
    { '5', '<Cmd>BufferLineGoToBuffer 5<CR>' },
    { '6', '<Cmd>BufferLineGoToBuffer 6<CR>' },
    { '7', '<Cmd>BufferLineGoToBuffer 7<CR>' },
    { '8', '<Cmd>BufferLineGoToBuffer 8<CR>' },
    { '9', '<Cmd>BufferLineGoToBuffer 9<CR>' },
  },
  config = function ()
    local bufferline = require('bufferline')
    bufferline.setup {

    }
  end
}
