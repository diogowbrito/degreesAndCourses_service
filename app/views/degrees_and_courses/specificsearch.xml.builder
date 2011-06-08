xml.list(:title => @keyword, :start => @start, :end => @end, :next => @next) do
  @degreelist.each do |item|
    xml.item(item.name, :title => "Curso", :href => "http://localhost:3002/degrees/"+item.id.to_s)
  end
  @courselist.each do |item|
    xml.item(item.name, :title => "Cadeira", :href => "http://localhost:3002/courses/"+item.id.to_s)
  end
end