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

for i,v in pairs(CustomRConsole.Colors) do i = string.lower(i) end

function CustomRConsole.PrintText(str, Color)
    if type(str) ~= 'string' then str = tostring(str) end;
    if Color ~= nil then rconsoleprint(CustomRConsole.Colors[string.lower(Color)]) end;

    rconsoleprint(str)
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
