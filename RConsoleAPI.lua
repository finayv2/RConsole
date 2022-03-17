local CustomRConsole = {
    Colors = {
        ["black"] =	"@@BLACK@@";
        ["blue"] = "@@BLUE@@";
        ["green"] = "@@GREEN@@";
        ["cyan"] = "@@CYAN@@";
        ["red"] = "@@RED@@";
        ["magenta"] = "@@MAGENTA@@";
        ["brown"] =	"@@BROWN@@";
        ["light gray"] = "@@LIGHT_GRAY@@";
        ["dark gray	"] = "@@DARK_GRAY@@";
        ["light blue"] = "@@LIGHT_BLUE@@";
        ["light green"] = "@@LIGHT_GREEN@@";
        ["light cyan"] = "@@LIGHT_CYAN@@";
        ["light red"] = "@@LIGHT_RED@@";
        ["light magenta"] =	"@@LIGHT_MAGENTA@@";
        ["yellow"] = "@@YELLOW@@";
        ["white"] =	"@@WHITE@@";
    };

}

local SpecFunctions = {
    ['Debug'] = function()
        rconsoleprint("@@RED@@")
        rconsoleprint('[Debug] ')
    end;

    ["Time"] = function()
        local date = os.date("!*t")
        local timestamp = string.format("%02i:%02i %s", (((date.hour + 1) % 24 - 1) % 12) + 1, date.min, (date.hour + 1) % 24 < 12 and "AM" or "PM")

        rconsoleprint("@@WHITE@@")
        rconsoleprint(tostring(timestamp)..": ")
    end;
}


function CustomRConsole.PrintText(str, Color, Specs)
    str = tostring(str)

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
