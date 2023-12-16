local tButton = 
{
    icon = "linker_button_icon_up",
    icon_down = "linker_button_icon_down",
    tooltipres = "linker_title_LabelCaption",
    class = "linker",
};


function onInit()
	if User.isHost() then
		DesktopManager.registerSidebarStackButton(tButton, false);
    end
end




