return {
  'romgrk/barbar.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'nvim-tree/nvim-web-devicons' },
  opts = {
    animation = false,
    insert_at_start = false,
    auto_hide = true,

    sidebar_filetypes = {
        Outline = {
                event = 'BufWinLeave',
                text = 'symbols-outline',
                align = 'center'
        },
    },
    icons = {
      separator = {left = '', right = ''},
      separator_at_end = true,
      modified = {button = '●'},
      pinned = {button = '', filename = true},
    },
  },
  keys = {
    -- Move to previous/next
    { '<A-,>', '<Cmd> silent BufferPrevious<CR>' },
    { '<A-.>', '<Cmd> silent BufferNext<CR>' },

    -- Re-order to previous/next
    { '<A-<>', '<Cmd> silent BufferMovePrevious<CR>' },
    { '<A->>', '<Cmd> silent BufferMoveNext<CR>' },

    -- Goto buffer in position...
    { '<A-1>', '<Cmd> silent BufferGoto 1<CR>' },
    { '<A-2>', '<Cmd> silent BufferGoto 2<CR>' },
    { '<A-3>', '<Cmd> silent BufferGoto 3<CR>' },
    { '<A-4>', '<Cmd> silent BufferGoto 4<CR>' },
    { '<A-5>', '<Cmd> silent BufferGoto 5<CR>' },
    { '<A-6>', '<Cmd> silent BufferGoto 6<CR>' },
    { '<A-7>', '<Cmd> silent BufferGoto 7<CR>' },
    { '<A-8>', '<Cmd> silent BufferGoto 8<CR>' },
    { '<A-9>', '<Cmd> silent BufferGoto 9<CR>' },
    { '<A-0>', '<Cmd> silent BufferLast<CR>' },

    -- Pin/unpin buffer
    { '<A-p>', '<Cmd> silent BufferPin<CR>' },

    -- Goto pinned/unpinned buffer
    --                 :BufferGotoPinned,
    --                 :BufferGotoUnpinned,

    -- Close buffer
    { '<A-c>', '<Cmd> silent BufferClose<CR>' },

    -- Wipeout buffer
    --                 :BufferWipeout

    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight

    -- Magic buffer-picking mode
    { '<C-p>',   '<Cmd> silent BufferPick<CR>' },
    { '<C-s-p>', '<Cmd> silent BufferPickDelete<CR>' },

    -- Sort automatically by...
    { '<Space>bb', '<Cmd> silent BufferOrderByBufferNumber<CR>' },
    { '<Space>bn', '<Cmd> silent BufferOrderByName<CR>' },
    { '<Space>bd', '<Cmd> silent BufferOrderByDirectory<CR>' },
    { '<Space>bl', '<Cmd> silent BufferOrderByLanguage<CR>' },
    { '<Space>bw', '<Cmd> silent BufferOrderByWindowNumber<CR>' },

    -- Other:
    -- :BarbarEnable - enables barbar (enabled by default)
    -- :BarbarDisable - very bad command, should never be used
  }
}
