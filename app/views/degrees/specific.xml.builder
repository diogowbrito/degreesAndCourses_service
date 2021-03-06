xml.record(:title => "Curso: " + @degree.name) do
  xml.text(@degree.name, :title => "Nome")
  xml.text(@degree.sigla, :title => "Sigla")
  xml.entity(@degree.department, :title => "Departamento", :kind => "organizational unit")
  xml.text(@degree.degreetype, :title => "Tipo")
  if @courses.count != 0 then
    xml.text(:title => "Cadeiras")  do
        @courses.each do |course|
            xml.link(course.name, :href => @address+"/courses/"+course.id.to_s)
        end
    end
  end
end