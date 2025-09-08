-- Luacheck configuration for Neovim LazyVim setup
-- https://luacheck.readthedocs.io/en/stable/config.html

-- Neovim globals
globals = {
    "vim",
    -- LazyVim globals
    "LazyVim",
    "Snacks",
    -- Lua globals that might be missing in some contexts
    "unpack",
    -- Test framework globals
    "describe", "it", "before_each", "after_each", "pending", "setup", "teardown",
}

-- Standard library
std = "lua54"

-- Exclude files/directories
exclude_files = {
    ".git/**",
    "*.tmp",
    "lazy-lock.json",
}

-- Allow unused self parameter
self = false

-- Ignore warnings about:
-- 211: unused variable
-- 212: unused argument  
-- 213: unused loop variable
-- 311: value assigned to variable is unused
-- 314: value of field is unused
-- 431: shadowing upvalue
ignore = {
    "212/_.*",  -- unused arguments starting with _
    "213",      -- unused loop variables (common in Lua)
}

-- Maximum line length (optional)
max_line_length = false

-- Maximum comment line length (optional)
max_comment_line_length = false

-- Enable colored output
color = true