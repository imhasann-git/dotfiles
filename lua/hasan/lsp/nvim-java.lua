return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  config = function()
    local jdtls = require('jdtls')
    local home = os.getenv('HOME')

    local root_dir = jdtls.setup.find_root({ '.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle' }) or vim.loop.cwd()
    local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")  -- get the last folder name of root_dir's parent
    local workspace_dir = home .. '/.cache/jdtls/workspace/' .. project_name

    local config = {
      cmd = {
        home .. '/.local/share/nvim/mason/bin/jdtls',
        '-configuration', home .. '/.cache/jdtls/config',
        '-data', workspace_dir,
      },
      root_dir = root_dir,
    }

    jdtls.start_or_attach(config)
  end,
}
