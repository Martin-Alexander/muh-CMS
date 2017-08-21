module PostsHelper
  def read_more(text_html, post, options = {})
    output = ""
    counter = 0
    text_html.chars.each do |char|
      output << char
      counter = counter + 1 if char == '~'
      if counter == 3
        break
      end
    end
    output.slice!(-3..-1)
    if options[:class]
      output << "<a href=\"/#{post.slug}\" class=\"#{options[:class]}\">Continue Reading...</a>"
    else
      output << "<a href=\"/#{post.slug}\">Continue Reading...</a>"
    end
    return output
  end

  def clean(text_html) 
    text_html.gsub!("<p>~~~</p>", '')
    text_html.gsub!("~~~", '')
    return text_html
  end
end
