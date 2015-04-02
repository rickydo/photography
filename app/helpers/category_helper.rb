module CategoryHelper
	def create_img_thumbnail_and_preview(low_high_res_imgs)

		html = ""
		low_high_res_imgs.each do |low_img_url, high_img_url|

			html << create_thumbnail(low_img_url, high_img_url)

			html << create_modal_for_high_resolution_img(high_img_url)
	
		end
		html.html_safe

	end

	def create_thumbnail(thumbnail, link_high_url)

		link_to(image_tag(thumbnail, class: "category_show"), 
						category_path(@category) + "/#",
						:'data-reveal-id'=>print_jquery_id(link_high_url))

	end

	def create_modal_for_high_resolution_img(high_res_url)

		content_tag :div, id: print_jquery_id(high_res_url), 
						  class: "reveal-modal", 
						  :'data-reveal'=>print_jquery_id(high_res_url) do

							 	concat(image_tag(high_res_url)) 
								
								concat(content_tag(:a, '&#215'.html_safe, 
											class: "close-reveal-modal", :"aria-label"=>"Close"))

		end

	end

	def print_jquery_id(img_url)

		/\w{2,}\W\d{3,}/.match(img_url).to_s

	end

end