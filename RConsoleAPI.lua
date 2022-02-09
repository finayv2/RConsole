local CustomRConsole = {
    Colors = {
        ["Black"] =	"@@BLACK@@";
        ["Blue"] = "@@BLUE@@";
        ["Green"] = "@@GREEN@@";
        ["Cyan"] = "@@CYAN@@";
        ["Red"] = "@@RED@@";
        ["Magenta"] = "@@MAGENTA@@";
        ["Brown"] =	"@@BROWN@@";
        ["Light Gray"] = "@@LIGHT_GRAY@@";
        ["Dark Gray	"] = "@@DARK_GRAY@@";
        ["Light Blue"] = "@@LIGHT_BLUE@@";
        ["Light Green"] = "@@LIGHT_GREEN@@";
        ["Light Cyan"] = "@@LIGHT_CYAN@@";
        ["Light Red"] = "@@LIGHT_RED@@";
        ["Light Magenta"] =	"@@LIGHT_MAGENTA@@";
        ["Yellow"] = "@@YELLOW@@";
        ["White"] =	"@@WHITE@@";
    };

}

local SpecFunctions = {
    ['Debug'] = function()
        rconsoleprint("@@RED@@")
        rconsoleprint('[Debug]')
    end;

    ["Time"] = function()
        local timestamp = string.format("%02i:%02i %s", ((hour - 1) % 12) + 1, os.date("!*t").min, (os.date("!*t").hour + 1) % 24 < 12 and "AM" or "PM")

        rconsoleprint("@@WHITE@@")
        rconsoleprint(tostring(timestamp)..":")
    end;
}

for i,v in pairs(CustomRConsole.Colors) do i = string.lower(i) end

function CustomRConsole.PrintText(str, Color, Specs)
    if type(str) ~= 'string' then str = tostring(str) end;

    if Specs ~= nil then
        SpecFunctions[Specs]()
    end

    if Color ~= nil then rconsoleprint(CustomRConsole.Colors[string.lower(Color)]) end;

    if Specs == "Space" then
        rconsoleprint(str, "\n")
    else
        rconsoleprint(str)
    end

end

function CustomRConsole.ChangeColor(Color)
    if Color ~= nil then rconsoleprint(CustomRConsole.Colors[string.lower(Color)]) end;
end

function CustomRConsole.Name(str)
    rconsolename(str)
end

function CustomRConsole.AddSpace()
    rconsoleprint("\n")
end

return CustomRConsole
