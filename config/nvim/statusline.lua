local gl = require('galaxyline')
local colors = require('galaxyline.theme').default
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packer'}

gls.left[1] = {
  RainbowRed = {
    provider = function() return '♦︎' end,
    highlight = {colors.blue,colors.bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '♦︎ '
    end,
    highlight = {colors.red,colors.bg,'bold'},
  },
}

gls.left[3] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta,colors.bg,'bold'},
    separator = '★',
    separator_highlight = {colors.yellow,colors.bg},
  }
}

gls.left[4] = {
  PerCent = {
    provider = 'LinePercent',
    separator = '★',
    separator_highlight = {colors.yellow,colors.bg},
    highlight = {colors.fg,colors.bg,'bold'},
  }
}

gls.left[5] = {
  LineInfo = {
    provider = 'LineColumn',
    highlight = {colors.orange,colors.bg},
  },
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[2] = {
  GitBranch = {
    provider = 'GitBranch',
    separator = ' ★ ',
    separator_highlight = {colors.yellow,colors.bg},
    condition = condition.check_git_workspace,
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ★ ',
    separator_highlight = {colors.yellow,colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'}
  }
}
