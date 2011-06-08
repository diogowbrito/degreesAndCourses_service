xml.list(:title => @keyword) do
  @degrees.each do |degree|
    xml.item(degree.name, :title => "Curso", :href => degree.id)
  end
  @courses.each do |course|
    xml.item(course.name, :title => "Cadeira", :href => course.id)
  end

    xml.start(@start)
    xml.end(@end)
end