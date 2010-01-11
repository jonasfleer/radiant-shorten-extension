module ShortenTag
  include Radiant::Taggable
  
  desc "Shortens text content"
  tag "shorten" do |tag|
    fullContents = tag.expand.strip
    max = tag.attr['max'].to_i
    if fullContents.size <= max then
      fullContents
    else
      sentences = fullContents.split
      contents = ""
      index = 0
      while contents.size < max do
        contents = contents + sentences[index] + " "
        index = index + 1
      end
      contents
    end
  end
end
