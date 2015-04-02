module CategoryHelper
	def create_img_thumbnail_and_preview(low_high_res_imgs)
		html = ""
		low_high_res_imgs.each do |low_img_url, high_img_url|

			html << link_to(image_tag(low_img_url, class: "category_show"), 
									  category_path(@category) + "/#",
							 		  :'data-reveal-id'=>print_jquery_id(high_img_url))
			html << content_tag(:div, image_tag(high_img_url), 
								id: print_jquery_id(high_img_url), 
								class: "reveal-modal", :'data-reveal aria-labelledby'=>print_jquery_id(high_img_url), 
								:'aria-hidden'=>"true",
								:'role'=>"dialog" + 
									content_tag(:a, '&#215'.html_safe, 
										class: "close-reveal-modal", :"aria-label"=>"Close"))
	
		end
		html.html_safe
	end

	def print_jquery_id(img_url)
		/\w{2,}\W\d{3,}/.match(img_url).to_s
	end

end