class ValidateDeepLinks
  @hash_elements = {
    :"home" => {
      :icon_home => {etiqueta:'a.icon-home',metodo:'find'},
      :div_options => {etiqueta:'ul.with-icon',metodo:'find'},
      :todos_archivos => {etiqueta:'nav-icon-files svg',metodo:'find'},
      :expand_configuraciones => {etiqueta:'id.expand',metodo:'find'}
    },
    :"settings" => {

    },
    :"family" => {

    },
    :"obten" => {

    },
    :"favoritos" => {

    }
  }
  class << self
    def validate_elements(deeplink)
      @element_to_valid = @hash_elements[deeplink]
      @element_to_valid
    end
  end
end
