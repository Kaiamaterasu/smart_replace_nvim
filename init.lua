local M = {}

-- Utility function to split input
local function split_input(input)
    local parts = {}
    for part in input:gmatch("[^/]+") do
        table.insert(parts, part)
    end
    return parts
end

-- Global Replace Function (Normal Mode)
function M.global_replace()
    local input = vim.fn.input("Global Replace (mistake/correction): ")
    local parts = split_input(input)
    
    if #parts == 2 then
        local mistake, correction = parts[1]:gsub("%s+", ""), parts[2]:gsub("%s+", "")
        vim.cmd(string.format("%%s/%s/%s/g", mistake, correction))
        vim.notify(string.format("Replaced '%s' with '%s' globally", mistake, correction), vim.log.levels.INFO)
    else
        vim.notify("Invalid input. Use format: mistake/correction", vim.log.levels.ERROR)
    end
end

-- Visual Mode Replace Function
function M.visual_replace()
    -- Save the current mode
    local mode = vim.fn.mode()
    
    -- Exit visual mode to get the selected text
    if mode:find("[vV\22]") then
        vim.cmd('normal! "vy')
    end
    
    local input = vim.fn.input("Visual Replace (mistake/correction): ")
    local parts = split_input(input)
    
    if #parts == 2 then
        local mistake, correction = parts[1]:gsub("%s+", ""), parts[2]:gsub("%s+", "")
        local selected_text = vim.fn.getreg('v')
        
        -- Replace in the selected text
        local replaced_text = selected_text:gsub(mistake, correction)
        
        -- Put the replaced text back
        vim.fn.setreg('v', replaced_text)
        vim.cmd('normal! gv"vp')
        
        vim.notify(string.format("Replaced '%s' with '%s' in selection", mistake, correction), vim.log.levels.INFO)
    else
        vim.notify("Invalid input. Use format: mistake/correction", vim.log.levels.ERROR)
    end
end

-- Line Replace Function
function M.line_replace()
    local input = vim.fn.input("Line Replace (mistake/correction): ")
    local parts = split_input(input)
    
    if #parts == 2 then
        local mistake, correction = parts[1]:gsub("%s+", ""), parts[2]:gsub("%s+", "")
        vim.cmd(string.format(":s/%s/%s/g", mistake, correction))
        vim.notify(string.format("Replaced '%s' with '%s' in current line", mistake, correction), vim.log.levels.INFO)
    else
        vim.notify("Invalid input. Use format: mistake/correction", vim.log.levels.ERROR)
    end
end

-- Multi-Cursor Replacement Function
function M.multi_cursor_replace()
    local input = vim.fn.input("Multi Replace: ")
    
    -- Split input by ':'
    local replacements = {}
    for pair in input:gmatch("[^:]+") do
        local parts = split_input(pair:gsub("%s+", ""))
        if #parts == 2 then
            table.insert(replacements, {parts[1], parts[2]})
        end
    end
    
    if #replacements > 0 then
        for _, replacement in ipairs(replacements) do
            local mistake, correction = replacement[1], replacement[2]
            
            -- Check if in visual mode
            local mode = vim.fn.mode()
            if mode:find("[vV\22]") then
                -- Visual mode multi-replace
                vim.cmd('normal! "vy')
                local selected_text = vim.fn.getreg('v')
                local replaced_text = selected_text:gsub(mistake, correction)
                vim.fn.setreg('v', replaced_text)
                vim.cmd('normal! gv"vp')
            else
                -- Normal mode global replace
                vim.cmd(string.format("%%s/%s/%s/g", mistake, correction))
            end
            
            vim.notify(string.format("Replaced '%s' with '%s'", mistake, correction), vim.log.levels.INFO)
        end
    else
        vim.notify("No valid replacements found", vim.log.levels.ERROR)
    end
end

-- Setup function for keymappings
function M.setup()
    -- Global Replace Mapping (Normal Mode)
    vim.keymap.set('n', '<leader>rp', M.global_replace, { 
        noremap = true, 
        silent = true, 
        desc = "Global Smart Replace" 
    })
    
    -- Visual Mode Replace Mapping
    vim.keymap.set('v', '<leader>rp', M.visual_replace, { 
        noremap = true, 
        silent = true, 
        desc = "Visual Smart Replace" 
    })
    
    -- Line Replace Mapping
    vim.keymap.set('n', '<leader>lp', M.line_replace, { 
        noremap = true, 
        silent = true, 
        desc = "Line Smart Replace" 
    })
    
    -- Multi-Cursor Replace Mapping (Normal Mode)
    vim.keymap.set('n', '<leader>mc', M.multi_cursor_replace, { 
        noremap = true, 
        silent = true, 
        desc = "Multi-Cursor Smart Replace" 
    })
    
    -- Multi-Cursor Replace Mapping (Visual Mode)
    vim.keymap.set('v', '<leader>mc', M.multi_cursor_replace, { 
        noremap = true, 
        silent = true, 
        desc = "Visual Multi-Cursor Smart Replace" 
    })
end

return M
