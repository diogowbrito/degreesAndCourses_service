xml.instruct!(:xml, :version=>"1.0")

xml.list(:title => "Cadeiras", :start => @start, :end => @end, :next => @next) do
  @courses.each do |course|
    xml.item(course.name, :href => @address+"/courses/"+course.id.to_s)
  end
end