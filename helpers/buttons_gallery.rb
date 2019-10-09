class ButtonsGallery
  @buttons_hash = {
    :"gallery" => {etiqueta:'a[href="/apps/gallery/"]',metodo:'find'},
    :"order by" => {etiqueta:'a.button.order-by',metodo:'find'},
    :"new file" => {etiqueta:'a.button.new',metodo:'find'},
    :"Todo" => {etiqueta:'div.tab.tab-all',metodo:'find'},
    :"Albums" => {etiqueta:'div.tab.tab-albums.selected',metodo:'find'},
    :"Compartidos" => {etiqueta:'div.tab.tab-shared',metodo:'find'},
    :"Mas recientes primero" => {etiqueta:'li.order.selected',metodo:'find'},
    :"Mas antiguas primero" => {etiqueta:'li.order',metodo:'find'},
    #Carpetas existentes en sección albumes
    :"Album Imagenes compartidas" => {etiqueta:'app-album.drop-zone.draggable-album.addCursor.ui-droppable.ui-draggable', position: 0, metodo:'all'},
    :"Album Otras Imagenes" => {etiqueta:'app-album.drop-zone.draggable-album.addCursor.ui-droppable.ui-draggable', position: 1, metodo:'all'},
    :"Album Inicio" => {etiqueta:'app-album.drop-zone.draggable-album.addCursor.ui-droppable.ui-draggable', position: 2, metodo:'all'},
    #dentro de las carpetas, photo 1 corresponde a la posicion 21
    :"photo 1" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:0,metodo:'all'},
    :"photo 2" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:1,metodo:'all'},
    :"photo 3" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:2,metodo:'all'},
    :"photo 4" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:3,metodo:'all'},
    :"photo 5" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:4,metodo:'all'},
    :"photo 6" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:5,metodo:'all'},
    :"photo 7" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:6,metodo:'all'},
    :"photo 8" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:7,metodo:'all'},
    :"photo 9" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:8,metodo:'all'},
    :"photo 10" => {etiqueta:'a.draggable-image.loaded-preview.ui-draggable.jg-entry.entry-visible',position:9,metodo:'all'},
    #cerrar la vista completa en galeria
    :"close full view" => {etiqueta:'input.svg.exit.icon-close.icon-shadow.icon-white.icon-32',metodo:'find'},
    #go back dentro de la carpeta
    :"go back" => {etiqueta:'img',position:20,metodo:'all'},
  }

  class << self
    def buton_selector(button)
      @button_properties = @buttons_hash[button]
      @button_properties
    end
  end
end