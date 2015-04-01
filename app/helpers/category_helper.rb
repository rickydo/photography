module CategoryHelper
	def create_img_thumbnail_and_preview(low_high_res_imgs)
		html = ""
		low_high_res_imgs.each do |low_img_url, high_img_url|
			# html << "<%= image_tag '#{low_img_url}', class: 'category_show' %>"
			# html << content_tag(:li, low_img_url)
			html << image_tag(low_img_url, class: "category_show")

		end
		html.html_safe
	end

end

# "<%= image_tag '#{low_img_url}', class: 'category_show' %>".html_safe
# <% @category.each do |img_url| %>
# 	<%= image_tag img_url, class: "category_show" %>
# <% end %>	