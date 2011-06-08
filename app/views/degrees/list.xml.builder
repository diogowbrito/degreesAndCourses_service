xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => "Cursos", :start => @start, :end => @end) do
  @degrees.each do |degree|
    xml.item(degree.name, :href => @address+"/degrees/" + degree.id.to_s)
  end
end