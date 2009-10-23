# MephistoIslamicDate
require 'open-uri'
require 'hpricot'
class MephistoIslamicDate < Liquid::Tag
  
  def initialize(tag_name, max, tokens)
       super 
    end
  
  def islamic_date
    doc = open_file
    element = (doc/"html/body/table/tr/td.IslamicDataSmall/a/")
  end
  
  def render(context)
    islamic_date
  end
    
  def open_file
    open(ISLAMIC_DATE_FILE) do |f|
      doc = Hpricot(f)
    end
  end
end