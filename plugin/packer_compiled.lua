-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/omar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/omar/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/omar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/omar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/omar/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["aerial.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  bogster = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/bogster",
    url = "https://github.com/vv9k/bogster"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/goyo.vim",
    url = "https://github.com/junegunn/goyo.vim"
  },
  ["gruvbox-baby"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/gruvbox-baby",
    url = "https://github.com/luisiacc/gruvbox-baby"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["neo-tree.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nova.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/nova.nvim",
    url = "https://github.com/zanglg/nova.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/papercolor-theme",
    url = "https://github.com/NLKNguyen/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rest.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  ["simba.vim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/simba.vim",
    url = "https://github.com/kartik1998/simba.vim"
  },
  tabular = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-atomic"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-atomic",
    url = "https://github.com/gerardbm/vim-atomic"
  },
  ["vim-deus"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-deus",
    url = "https://github.com/ajmwagar/vim-deus"
  },
  ["vim-firewatch"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-firewatch",
    url = "https://github.com/erizocosmico/vim-firewatch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-humanoid-colorscheme"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-humanoid-colorscheme",
    url = "https://github.com/humanoid-colors/vim-humanoid-colorscheme"
  },
  ["vim-json"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-json",
    url = "https://github.com/elzr/vim-json"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/omar/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  }
}

time([[Defining packer_plugins]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
