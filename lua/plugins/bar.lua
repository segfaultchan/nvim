return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = {
    { '<A-n>', '<Cmd>BufferLineCycleNext<CR>' },
    { '<A-p>', '<Cmd>BufferLineCyclePrev<CR>' },
    { '<A-d>', '<Cmd>BufferLinePickClose<CR>' },
    { '<A-f>', '<Cmd>BufferLinePick<CR>' },

    { '<A-0>', '<Cmd>BufferLineGoToBuffer 0<CR>' },
    { '<A-1>', '<Cmd>BufferLineGoToBuffer 1<CR>' },
    { '<A-2>', '<Cmd>BufferLineGoToBuffer 2<CR>' },
    { '<A-3>', '<Cmd>BufferLineGoToBuffer 3<CR>' },
    { '<A-4>', '<Cmd>BufferLineGoToBuffer 4<CR>' },
    { '<A-5>', '<Cmd>BufferLineGoToBuffer 5<CR>' },
    { '<A-6>', '<Cmd>BufferLineGoToBuffer 6<CR>' },
    { '<A-7>', '<Cmd>BufferLineGoToBuffer 7<CR>' },
    { '<A-8>', '<Cmd>BufferLineGoToBuffer 8<CR>' },
    { '<A-9>', '<Cmd>BufferLineGoToBuffer 9<CR>' },
  },
  config = function ()
    local bufferline = require('bufferline')
    bufferline.setup {

    }
  end
}
