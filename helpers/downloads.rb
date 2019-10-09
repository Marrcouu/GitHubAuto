
class Downloads
  extend Capybara::DSL

  class << self
    def download(element,name)
      begin
        find(:css, 'div.file-name.list-view', text: element, wait:5)
        puts "Se encontro el contacto '#{element}'"
        within(find(:css, 'div.file.app-droppable.list-view', text: element, wait:10))do
          all(:css, 'div.action-icon', wait:5)[3].click
          sleep 5
        end
      end
    end

  end
end