#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "ProjectSubmit"
    xml.author "Grupo de Trabalho MEI"
    xml.description "Portal de Projetos IPT"
    xml.link "http://localhost:3000"
    xml.language "en"

    for project in @projects
      xml.item do
        if project.title
          xml.title project.title
        else
          xml.title ""
        end
        xml.resume project.resume
        xml.pubDate project.created_at.to_s(:rfc822)
        #xml.link "http://localhost:3000/project/" + project.id.to_s + "-" + project.alias
        xml.guid project.id

        
        xml.description "<p>" + "</p>"

      end
    end
  end
end