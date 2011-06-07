xml.list(:title => @keyword, :start => @start, :end => @end, :next => @next) do
  @degreelist.each do |item|
    xml.item(item.name, :title => "Degree", :href => @address + '/courses/' +item.id.to_s)
  end
  @courselist.each do |item|
    xml.item(item.name, :title => "Course", :href => @address + '/courses/'+item.id.to_s)
  end
end