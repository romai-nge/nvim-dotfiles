return {
  -- DAP (Debug Adapter Protocol)
  -- Adapts debuggers "engines" to be all understood
  -- the same way by nvim
  -- dap-ui adds a convenient UI to DAP
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap-python", -- !!! Needs debugpy installed via pip !
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup()

    require("dap-python").setup(".\\.venv\\Scripts\\python.exe")

    -- Configure DAP for C++ using gdb
    dap.adapters.cppdbg = {
      id = 'cppdbg',
      type = 'executable',
      command = 'C:\\msys64\\mingw64\\bin',
      args = {'--interpreter=mi'}
    }

    dap.configurations.cpp = {
      {
        name = "Launch",
        type = "cppdbg",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        setupCommands = {
          {
            text = '-enable-pretty-printing',
            description =  'enable pretty printing',
            ignoreFailures = false
          },
        },
      },
    }

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
  end,
}
