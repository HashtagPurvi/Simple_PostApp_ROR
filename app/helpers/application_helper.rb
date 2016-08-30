module ApplicationHelper

	#Fucntion to check if the View provides a Title or not. If not, return a base title
	def full_title(pageTitle = '')
		baseTitle = "Ruby on Rails Tutorial Sample App"
		if(pageTitle.empty?)
			baseTitle
		else
			pageTitle + "|" + baseTitle
		end
	end
end
