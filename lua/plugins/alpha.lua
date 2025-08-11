return {
  'goolord/alpha-nvim',
  config = function()
    local dashboard = require 'alpha.themes.dashboard'
    dashboard.section.header.val = {
      'Less distraction. More action.',
    }
    require('alpha').setup(dashboard.config)
  end,
}
