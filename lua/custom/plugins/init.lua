-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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

  { -- In-buffer markdown rendering: headings, tables, callouts, code blocks
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    ft = { 'markdown' },
    -- Stock defaults. Worth knowing what they give you:
    --   render_modes = { 'n', 'c', 't' } -- insert and visual show raw source
    --   anti_conceal.enabled = true      -- the cursor line always shows raw
    opts = {},
    keys = {
      { '<leader>tm', '<cmd>RenderMarkdown buf_toggle<CR>', desc = '[T]oggle [M]arkdown render' },
    },
  },
}
