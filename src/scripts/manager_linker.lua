function onTabletopInit()
	local tButton = {
		sIcon = "linker_button",
		tooltipres = "linker_title_LabelCaption",
		class = "linker",
	}
	if Session.IsHost then
		DesktopManager.registerSidebarToolButton(tButton, false)
	end
end
