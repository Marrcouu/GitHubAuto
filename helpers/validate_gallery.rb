class ValidateGalery
  @validate_gallery = {
    :"gallery" => {
      :button_order => {etiqueta: 'a.button.order-by', metodo:'find'},
      :button_new => {etiqueta: 'a.button.new', metodo: 'find'},
      :button_todos => {etiqueta: 'div.tab.tab-all' , metodo: 'find'},
      :button_compartidos => {etiqueta: 'div.tab.tab-shared', metodo:'find'},
      :button_shared => {etiqueta:'div.tab.tab-albums.selected', metodo:'find'}
    },
    :"order by" => {
      :div => {etiqueta:'div.order-options',metodo:'find'},
      :list1 => {etiqueta:'li.order.selected',metodo:'find'},
      :list2 => {etiqueta:'li.order',metodo:'first'}
    },
    :"Todo" => {
      #:div_photos => {etiqueta:'div.justified-gallery',metodo:'find'},
      :div_photo1 => {etiqueta:'div.caption.caption-custom',texto:'compartida_2.png',indice:0,metodo:'all'},
      :div_photo2 => {etiqueta:'div.caption.caption-custom',texto:'compartida_1.jpg',indice:1,metodo:'all'},
      :div_photo3 => {etiqueta:'div.caption.caption-custom',texto:'otras_3.jpg',indice:2,metodo:'all'},
      :div_photo4 => {etiqueta:'div.caption.caption-custom',texto:'otras_1.jpg',indice:3,metodo:'all'}
    },
    :"Albums" => {
      :div_album => {etiqueta:'div.albums',metodo:'find'},
      :div_carpeta1 => {etiqueta:'div.title',texto:'Imagenes compartidas',indice:1,metodo:'all'},
      :div_carpeta2 => {etiqueta:'div.title',texto:'Inicio',indice:1,metodo:'all'},
      :div_carpeta3 => {etiqueta:'div.title',texto:'Otras imagenes',indice:2,metodo:'all'}
    },
    :"Compartidos" => {
      :div_compartidos => {etiqueta:'div.justified-gallery',metodo:'find'},
      :div_compartido1 => {etiqueta:'div.caption.caption-custom',texto:'compartida_2.png',indice:0,metodo:'all'},
      :div_compartido2 => {etiqueta:'div.caption.caption-custom',texto:'compartida_1.png',indice:1,metodo:'all'}
    },
    :"photo" => {
      :favoritear => {etiqueta:'input.menuItem.svg.favoriteImage.icon-shadow.icon-32.icon-white.icon-star',metodo:'find'},
      :compartir => {etiqueta:'input.menuItem.svg.shareImage.icon-share.icon-shadow.icon-white.icon-32',metodo:'find'},
      :delete => {etiqueta: 'input.menuItem.svg.deleteImage.icon-delete.icon-shadow.icon-white.icon-32',metodo:'find'},
      :descargar => {etiqueta: 'input.menuItem.svg.downloadImage.icon-download.icon-shadow.icon-white.icon-32',metodo: 'find'},
      :close => {etiqueta: 'input.svg.exit.icon-close.icon-shadow.icon-white.icon-32',metodo: 'find'}
    }
  }
  class << self
    def validate_function(button)
      @elements_to_valid = @validate_gallery[button]
      @elements_to_valid
    end
  end
end