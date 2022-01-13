local aCoreDesktopStack = {
	["linker"] = 
	{
		{
			icon="linker_button_up",
			icon_down="linker_button_down",
			tooltipres="linker_tooltip_stack_button",
			class="LinkerWindow",
		}
	}
};


function onInit()
	if User.isHost() then
		if MenuManager then
			MenuManager.addMenuItem("LinkerWindow", "", "linker_button_convert", "Linker");
		else
			DesktopManager.registerStackShortcuts(aCoreDesktopStack["linker"]);
		end
		DB.setValue("Linker.linkText", "string", "Enter URI");
	end
end


function CreateLink(sLink)
Debug.chat(sLink)
	local msg = {
		text="(LINK)",
		shortcuts={
			{ description="testShortcut", class="url", recordname=DB.getValue("Linker.linkText") }
		}
	}	
	Comm.addChatMessage(msg);
end