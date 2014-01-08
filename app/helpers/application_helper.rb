module ApplicationHelper

	#Default title.
	def full_title(page_title)
		base_title = "This is the Default Title"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
