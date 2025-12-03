return {
  'numTostr/Comment.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config = function()
    local comment = require 'Comment'

    local ts_context_commentstring = require 'ts_context_commentstring.integrations.comment_nvim'

    comment.setup {
      pre_hook = ts_context_commentstring.create_pre_hook(),
    }

    -- Add mnemonic keymaps
    local keymap = vim.keymap
    keymap.set('n', '<leader>cc', 'gcc', { remap = true, desc = 'Comment toggle line' })
    keymap.set('v', '<leader>cb', 'gb', { remap = true, desc = 'Comment toggle block' })
  end,
}
