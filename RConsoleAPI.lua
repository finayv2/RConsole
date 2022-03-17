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

local function getTime()
    local date = os.date("*t")
    
    local currentHour = os.date("*t")["hour"]
	if currentHour < 12 or currentHour == 24 then
        return ("%02d:%02d"):format(((date.hour % 24) - 1) % 12 + 1, date.min).. ":" .. date.sec .. " AM"
	else
        return ("%02d:%02d"):format(((date.hour % 24) - 1) % 12 + 1, date.min).. ":" .. date.sec .. " PM"
	end
end


local SpecFunctions = {
    ['Debug'] = function()
        rconsoleprint("@@RED@@")
        rconsoleprint('[Debug] ')
    end;

    ["Time"] = function()
        rconsoleprint("@@WHITE@@")
        rconsoleprint("["..tostring(getTime()).."]: ")
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
