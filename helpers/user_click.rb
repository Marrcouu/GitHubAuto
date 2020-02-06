class HelperUser

  @hash_user = {
      :click => {
          :'need more space?' => {metodo:'find',tag: :css, etiqueta:'button',wait:50,text:'OBTÉN MÁS ESPACIO'},
          :'25gb' => {boton1:{metodo:'first', tag: :css, etiqueta:'div.plan',wait:10}},
          :'75gb' => {boton1:{metodo:'all', tag: :css, etiqueta:'div.plan',wait:10,index:1}},
          :'150gb' => {boton1:{metodo:'all',tag: :css, etiqueta:'div.plan',wait:10,index:2}},
          :'1024gb' => {boton1:{metodo:'all',tag: :css, etiqueta:'div.plan',wait:10,index:3}},
          :confirm => {boton1:{metodo:'find',tag: :css, etiqueta:'input.button.confirm',wait:20}},
          :plus => {boton1:{metodo:'find',tag: :css,etiqueta:'a.button.new.cd-tooltip-header',wait:25}},
          :'sharing confirm' => {boton1:{metodo:'find',tag: :css, etiqueta:'button.amx-btn.amx-btn-success', wait:40}},
          :'config link' => {boton1:{metodo:'find',tag: :css, etiqueta:'label.switch', wait:10},
                             boton2:{metodo:'find',tag: :css, etiqueta:'button.btn.copy', wait:10}},
                             #boton3:{metodo:'find',tag: :css, etiqueta:'span.icon.icon-close', wait:10}},
          :help => {#boton1:{metodo:'find',tag: :id,etiqueta:'expand',wait:60},
                    boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/apps/external/2"]',wait:50}},
          :'family space' => {boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/settings/user/family_plan"]',wait:60}},
          :activity => {boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/settings/user/activity"]',wait:60}},
          :information => {boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/settings/user"]',wait:60}},
          :security => {boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/settings/user/security"]',wait:60}},
          :'additional config' => {boton1:{metodo:'find',tag: :css,etiqueta:'a[href="/settings/user/additional"]',wait:60},
                                   boton2:{metodo:'find',tag: :id,etiqueta:'files-setting-showhidden',wait:60},
                                    boton3:{metodo:'find',tag: :id,etiqueta:'files-setting-showhidden',wait:60}},
          #:restore => {#boton1:{metodo:'first',tag: :css,etiqueta:'a.action.action-restore', wait:10, hover:'si'},
          #             boton2:{metodo:'first',tag: :css,etiqueta:'a.action.action-restore', wait:50},
          #             boton3:{metodo:'find',tag: :css,etiqueta:'a.nav-icon-files.svg', wait:14}},
          :'edit plan' => {boton1:{metodo:'first',tag: :css,etiqueta:'button.confirm',text: :'edit plan',wait:40}},
          :'home' => {boton1:{metodo:'find',tag: :id,etiqueta:'nextcloud',wait:60}},
          :'te compartieron' => {boton1:{metodo:'find',tag: :css,etiqueta:'a.nav-icon-sharingin.svg',wait:60}},
          :'compartiste' => {boton1:{metodo:'find',tag: :css,etiqueta:'div.thumbnail',wait:60}},
          :'cerrar modal compartir' => {boton1:{metodo:'find',tag: :css, etiqueta:'span.icon.icon-close', wait:30}},
          :'start to enjoy' => {boton1:{metodo:'find',tag: :css, etiqueta:'a.button', wait:30}},
          :'close file' => {boton1:{metodo:'find',tag: :css,etiqueta:'a.close.icon-close',wait:60}},
          :'close upload' => {boton1:{metodo:'find',tag: :css,etiqueta:'a.up-close',wait:60}},
      },
      :'find element' => {
          :folder => {elem1:{metodo:'find',tag: :css,etiqueta:'div.file-name', text: :'name folder', wait:10}},
          :editor => {elem1:{metodo:'find',tag: :id,etiqueta:'editor_controls', wait:40}},
          :file => {elem1:{metodo:'find',tag: :css,etiqueta:'div.file-name.list-view', text: :'name file', wait:10}},
          :image => {elem1:{metodo:'find',tag: :css,etiqueta:'div.file-name.list-view', text: :'name image', wait:10}},
          :audio => {elem1:{metodo:'find',tag: :css,etiqueta:'div.file-name.list-view', text: :'name audio', wait:10}},
          :video => {elem1:{metodo:'find',tag: :css,etiqueta:'div.file-name.list-view', text: :'name video', wait:10}},
          :text => {elem1:{metodo:'find',tag: :css,etiqueta:'div.file-name.list-view', text: :'name text', wait:10}},
          :'file shared for link' => {boton1:{metodo:'find',tag: :css,etiqueta:'a.nav-icon-shareoverview.svg',wait:10,click:'si'},
                                      boton2:{metodo:'find',tag: :css,etiqueta:'a.nav-icon-sharingout.svg',wait:10,click:'si'},
                                      elem2:{metodo:'find',tag: :css,etiqueta:'div.file-name.list-view', text: :'name file', wait:10}},
          :'terms and conditios' => {elem1:{metodo:'find',tag: :css,etiqueta:'div.static-content', wait:10}},
          :'invitations' => {elem1:{metodo:'all',tag: :css,etiqueta:'div.FPG_User.F_Full.invitation', maximum:5,wait:10}},
          :'user whitin family space'=>{elem1:{metodo:'all',tag: :css,etiqueta:'div.FPG_User.F_Full.active',maximum:2,wait:10}},
          :'read only' => {elem1:{metodo:'find',tag: :css,etiqueta:'div.row.type-error.closeable', wait:50}},
          :'window of uploads'=>{elem1:{metodo:'find',tag: :id,etiqueta:'progress-list', wait:10}},
          :'video uploaded'=>{elem1:{metodo:'find',tag: :css,etiqueta:'tr[data-file="carga mp4.mp4"]', wait:30}},
          :'te compartieron'=>{elem1:{metodo:'find',tag: :css,etiqueta:'tr[data-file="Archivo compartido.txt"]', wait:30}},
          :'compartiste'=>{elem1:{metodo:'find',tag: :css,etiqueta:'div.thumbnail', wait:30}},
          :'invitation canceled'=>{elem1:{metodo:'find',tag: :xpath,etiqueta:'//*[@id="FP_GuestList"]/app-member[2]/div/div[3]', wait:30}},
          :'TSA'=>{elem1:{metodo:'find',tag: :css,etiqueta:'div.modal-wrapper', wait:30}}
      },
      :'forms home' => {
          :'name folder' => {send:{metodo:'find',tag: :css,etiqueta:'input[type="text"]',wait:10,creden: :name},
                             sleep:{sleep:1},
                            #click:{metodo:'find',tag: :css,etiqueta:'button.buttonNewFolder',wait:10}
                              },
          :'name file' => {send:{metodo:'find',tag: :css,etiqueta:'input[type="text"]',wait:10,creden: :name},
                           sleep:{sleep:1},
                           #click:{metodo:'find',tag: :css,etiqueta:'button.buttonNewFolder', wait:10}
                           },
          :'name contact' =>{send:{metodo:'find',tag: :css,etiqueta:'input[type="text"]',wait:10,creden: :name},
                            sleep:{sleep:1}},

          :'testing text' => {sleep:{sleep:3},
                              click:{metodo:'find',tag: :id,etiqueta:'editor_close',wait:10}},
          :'new name' => {clear:{metodo:'find',tag: :id,etiqueta:'displayname', wait:10},
                          send:{metodo:'find',tag: :id,etiqueta:'displayname', wait:10, creden:'name_random("new")'},
                          click:{metodo:'find',tag: :id,etiqueta:'saveBtn', wait:10},
                          sleep:{sleep:5}},
          :'more space' => {clear:{metodo:'find',tag: :css,etiqueta:'input[name="space"]', wait:15},
                            send:{metodo:'find',tag: :css,etiqueta:'input[name="space"]', wait:10, creden: :space},
                            click:{metodo:'find',tag: :css,etiqueta:'button.confirm', text: :save, wait:10},
                            sleep:{sleep:10}},
          :'less space' => {clear:{metodo:'find',tag: :css,etiqueta:'input[name="space"]', wait:15},
                            send:{metodo:'find',tag: :css,etiqueta:'input[name="space"]', wait:10, creden: :space},
                            click:{metodo:'find',tag: :css,etiqueta:'button.confirm', text: :save, wait:10},
                            sleep:{sleep:10}},
      },
  }
  class << self
    def button_selector(button)
      @button_properties = @hash_user[:click][button.to_sym]
      @button_properties
    end
    def find_elem(elemento)
      @button_properties = @hash_user[:'find element'][elemento.to_sym]
      @button_properties
      end
    def forms_home(elemento)
      @button_properties = @hash_user[:'forms home'][elemento.to_sym]
      @button_properties
    end
  end
end