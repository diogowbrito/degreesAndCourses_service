xml.list(:title => @keyword, :start => @start, :end => @end, :next => @next) do
  @degreelist.each do |item|
    xml.item(item.name, :title => "Curso", :href => @address + '/degrees/' +item.id.to_s)
  end
  @courselist.each do |item|
    xml.item(item.name, :title => "Cadeira", :href => @address + '/courses/'+item.id.to_s)
  end
end