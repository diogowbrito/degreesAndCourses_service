xml.record(:title => "Cadeira") do
  xml.text(@course.name, :title => "Nome")
  xml.text(@course.period, :title => "Semestre")
  xml.text(@course.sigla, :title => "Sigla")
  xml.entity(@course.regent, :title => "Regente", :kind => "person")
end