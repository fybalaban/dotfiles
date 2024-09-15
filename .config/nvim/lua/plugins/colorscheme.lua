return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,

    config = function()
      local function get_mode_from_file()
        local mode_file = io.open(os.getenv("HOME") .. "/.config/reve/desktop_mode", "r")
        if mode_file then
          local mode = mode_file:read("*all"):gsub("%s+", "")
          mode_file:close()
          return mode
        end
        return "dark"
      end

      local function reload_theme()
        local mode = get_mode_from_file()
        local colorscheme = (mode == "light") and "kanagawa-lotus" or "kanagawa-wave"
        vim.cmd("colorscheme " .. colorscheme)
      end

      local function handle_signal()
        vim.schedule(reload_theme)
      end

      vim.loop.new_signal():start(vim.loop.constants.SIGUSR1, vim.schedule_wrap(handle_signal))

      reload_theme()
    end,

    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
