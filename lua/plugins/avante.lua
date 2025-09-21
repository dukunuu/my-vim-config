return {
  "yetone/avante.nvim",
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  -- ⚠️ must add this setting! ! !
  build = vim.fn.has("win32") ~= 0
      and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
  event = "VeryLazy",
  version = false, -- Never set this value to "*"! Never!
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    instructions_file = "CLAUDE.md",
    provider = "claude",
    providers = {
      claude = {
        __inherited_from = 'openai',
        endpoint = "https://openrouter.ai/api/v1",
        api_key_name="OPENROUTER_API_KEY",
        model = "anthropic/claude-sonnet-4",
        timeout = 30000, -- Timeout in milliseconds
          extra_request_body = {
            temperature = 0.75,
            max_tokens = 20480,
          },
      },
      moonshot = {
        __inherited_from = 'openai',
        endpoint = "https://openrouter.ai/api/v1",
        model = "moonshotai/kimi-k2-0905",
        api_key_name="OPENROUTER_API_KEY",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 32768,
        },
      },
      grok_code_fast = {
        __inherited_from = 'openai',
        endpoint = "https://openrouter.ai/api/v1",
        model = "x-ai/grok-code-fast-1",
        api_key_name="OPENROUTER_API_KEY",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 32768,
        },
      },
      qwen_code = {
        __inherited_from = 'openai',
        endpoint = "https://openrouter.ai/api/v1",
        model = "qwen/qwen3-coder",
        api_key_name="OPENROUTER_API_KEY",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 32768,
        },
      },
      gpt5mini = {
        __inherited_from = 'openai',
        endpoint = "https://openrouter.ai/api/v1",
        model = "openai/gpt-5-mini",
        api_key_name="openrouter_api_key",
        timeout = 30000, -- timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 32768,
        },
      },
      glm45 = {
        __inherited_from = 'openai',
        endpoint = "https://openrouter.ai/api/v1",
        model = "z-ai/glm-4.5",
        api_key_name="openrouter_api_key",
        timeout = 30000, -- timeout in milliseconds
        extra_request_body = {
          temperature = 0.75,
          max_tokens = 32768,
        },
      },

    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
