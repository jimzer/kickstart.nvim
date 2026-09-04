-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local plugins = {
  { -- Full-repo diff review: file panel + side-by-side diffs, plus file history
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory', 'DiffviewToggleFiles' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<CR>', desc = '[G]it [D]iff (working tree)' },
      { '<leader>gD', '<cmd>DiffviewOpen origin/HEAD...HEAD<CR>', desc = '[G]it [D]iff vs branch base' },
      { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>', desc = '[G]it file [H]istory (current file)' },
      { '<leader>gH', '<cmd>DiffviewFileHistory<CR>', desc = '[G]it repo [H]istory' },
      { '<leader>gq', '<cmd>DiffviewClose<CR>', desc = '[G]it diff [Q]uit' },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        merge_tool = { layout = 'diff3_mixed' },
      },
    },
  },
}

-- Local work-in-progress plugin: only load it on machines where it is checked out,
-- so this config stays usable on other hosts.
local nvimai_dir = vim.fn.expand '~/Projects/bitswired/nvimai.vim/nvimai'
if vim.fn.isdirectory(nvimai_dir) == 1 then
  table.insert(plugins, { dir = nvimai_dir })
end

return plugins
