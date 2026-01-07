return {
  'romgrk/barbar.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    animation = false,
    insert_at_start = true,
    auto_hide = true,
    
    sidebar_filetypes = {
      NvimTree = true,
    },
  },
  keys = {  
    -- Move to previous/next
    { '<A-,>', '<Cmd>BufferPrevious<CR>' },
    { '<A-.>', '<Cmd>BufferNext<CR>' },
    
    -- Re-order to previous/next
    { '<A-<>', '<Cmd>BufferMovePrevious<CR>' },
    { '<A->>', '<Cmd>BufferMoveNext<CR>' },
    
    -- Goto buffer in position...
    { '<A-1>', '<Cmd>BufferGoto 1<CR>' },
    { '<A-2>', '<Cmd>BufferGoto 2<CR>' },
    { '<A-3>', '<Cmd>BufferGoto 3<CR>' },
    { '<A-4>', '<Cmd>BufferGoto 4<CR>' },
    { '<A-5>', '<Cmd>BufferGoto 5<CR>' },
    { '<A-6>', '<Cmd>BufferGoto 6<CR>' },
    { '<A-7>', '<Cmd>BufferGoto 7<CR>' },
    { '<A-8>', '<Cmd>BufferGoto 8<CR>' },
    { '<A-9>', '<Cmd>BufferGoto 9<CR>' },
    { '<A-0>', '<Cmd>BufferLast<CR>' },

    -- Pin/unpin buffer
    { '<A-p>', '<Cmd>BufferPin<CR>' },

    -- Goto pinned/unpinned buffer
    --                 :BufferGotoPinned,
    --                 :BufferGotoUnpinned,

    -- Close buffer
    { '<A-c>', '<Cmd>BufferClose<CR>' },

    -- Wipeout buffer
    --                 :BufferWipeout

    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight

    -- Magic buffer-picking mode
    { '<C-p>',   '<Cmd>BufferPick<CR>' },
    { '<C-s-p>', '<Cmd>BufferPickDelete<CR>' },

    -- Sort automatically by...
    { '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>' },
    { '<Space>bn', '<Cmd>BufferOrderByName<CR>' },
    { '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>' },
    { '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>' },
    { '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>' },
    
    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used
  }
}
