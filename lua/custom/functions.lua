local function run_command(cmd)
  local f = io.popen(cmd, 'r')
  if f then
    local output = f:read("*l")
    f:close()
    return output
  else
    print("Error running command", cmd)
    return nil
  end
end

function print_date()
  local today = run_command("date +%Y-%m-%d")
  vim.api.nvim_put({ today .. " " }, "", false, true)
end
