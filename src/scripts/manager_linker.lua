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

function formatURL(bFile, sFilePath, sURL)
	if bFile then
		sURL = sFilePath .. sURL
		sURL = string.gsub(sURL, " ", "%%20")
		if string.sub(sURL, 1, 1) == "/" then
			sURL = "file://" .. sURL
		else
			sURL = "file:///" .. sURL
		end
	end
	return sURL
end
