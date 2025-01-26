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

function formatURL(bFile, tURL)
	if bFile then
		tURL = string.gsub(tURL, " ", "%%20")
		if string.sub(tURL, 1, 1) == "/" then
			tURL = "file://" .. tURL
		else
			tURL = "file:///" .. tURL
		end
	end
	return tURL
end
