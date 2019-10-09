require 'fileutils'
require 'yaml'
require_relative 'Info'
require_relative 'utils'

#Método para seleccionar las labels y asserts dependiendo el pais.
case $country.to_s.downcase.strip
  when 'mx' then
    data = YAML.load(File.read("../global/config/data/#{Utils.country}/data_labels.yml"))
  when 'br' then
    data = YAML.load(File.read("../global/config/data/#{Utils.country}/data_labels.yml"))
  else
    data = YAML.load(File.read("../global/config/data/#{Utils.country}/data_labels.yml"))
end


$menu_labels = {
  Ingresar: data['menu_ingresar'],
  Inicio: data['menu_inicio'],
  Básico: data['menu_basico'],
  Catálogo: data['menu_catalogo'],
  Pago_por_Evento: data['menu_ppe'],
  Niños: data['menu_ninios'],
  Claro_sports: data['menu_claro_tv'], # Utilizada en el ambiente de tienda.
  TV: data['menu_tv'], # Agregado para el ambiente de demo.
  Registrate: data['menu_registro'],
  Salir: data['menu_salir'],
  Películas: data['menu_peliculas'],
  Infantil_y_Familia: data['menu_infantil_y_familia'],
  Documentales: data['menu_documentales'],
  Historia: data['menu_historia'],
  Play_and_Go: data['menu_fox']
}

$success_message = {
  rent: data['txt_renta_exitosa'],
  subscription: data['txt_suscripcion_exitosa'],
  fox_subscription: data['txt_suscripcion_fox_exitosa']
}

$error_message = {
  spent: data['txt_spent_promotional_code'],
  rent_in_subscription: data['txt_rent_in_subscription'],
  subscription_in_rent: data['txt_subscription_in_rent'],
  random: data['txt_random_promotional_code'],
  invalid: data['txt_invalid_promotional_code'],
  incomplete: data['txt_invalid_promotional_code'],
  expired: data['txt_expired_promotional_code'],
  foreign: data['txt_foreign_promotional_code']
}

$subscription_profile_texts = {
  :'fox subscription' => data['txt_suscripcion_fox_vigente'],
  :'claro tarjeta' => data['txt_suscripcion_claro_tarjeta'],
  :'claro codigo promocional' => data['txt_suscripcion_claro_codigo_promocional'],
  :'claro cancelado' => data['txt_suscripcion_claro_cancelado']
}

$profile_texts = {
  :'fox subscription' => data['txt_encabezado_perfil_suscripcion_fox'],
  :'claro tarjeta' => data['txt_encabezado_perfil_suscripcion_claro'],
  :'claro codigo promocional' => data['txt_encabezado_perfil_suscripcion_claro'],
  :'claro cancelado' => data['txt_encabezado_perfil_suscripcion_claro']
}

$menu_inicio = data['menu_inicio']
$menu_basico = data['menu_basico']
$menu_catalogo = data['menu_catalogo']
$menu_ppe = data['menu_ppe']
$menu_ninios = data['menu_ninios']
$menu_claro_tv = data['menu_claro_tv'] # Utilizada en el ambiente de tienda.
$menu_tv = data['menu_tv'] # Agregado para el ambiente de demo.
$menu_registro = data['menu_registro']
$lbl_recomendacion_home = data['lbl_recomendacion_home']
$menu_salir = data['menu_salir']

$txt_active_telmex = data['txt_active_telmex'] # :label que valida el texto de Activar tu cuenta cuando existe una ip telmex
# Labels para los asserts de la page de login
$lbl_inicia_ses_login = data['lbl_inicia_ses_login']
$lbl_email_login = data['lbl_email_login']
$lbl_pass_login = data['lbl_pass_login']
$lbl_nuevo_login = data['lbl_nuevo_login']

# Labels para los asserts de la page de metodos de pago, despues de hacer login con usuario registrado
$lbl_select_plan = data['lbl_select_plan']
$lbl_select_payment = data['lbl_select_payment']
$lbl_telmex_payment = data['lbl_telmex_payment']
$lbl_telcel_payment = data['lbl_telcel_payment']
$lbl_tdc_payment = data['lbl_tdc_payment']
$lbl_cp = data['lbl_cp']
$lbl_skip_step = data['lbl_skip_step']
$lbl_sus_men = data['lbl_sus_men']
$lbl_payment_renta24_exitosa = data['lbl_payment_renta24_exitosa']
$lbl_payment_renta48_exitosa = data['lbl_payment_renta48_exitosa']
$lbl_payment_compra_exitosa = data['lbl_payment_compra_exitosa']
$lbl_payment_ver_renta_compra = data['lbl_payment_ver_renta_compra']
$lbl_payment_live_ppe_exitosa = data['lbl_payment_live_ppe_exitosa']
$lbl_payment_tc_cvv_incorrecto = data['lbl_payment_tc_cvv_incorrecto']



		case $country.to_s.downcase.strip
			when 'mx'
				$payment_page_labels = {
						subs_mensual: 'Suscríbete Mensual $ 69',
						subs_semanal: 'Suscríbete Semanal* $ 25',
						subs_fox: 'Contrata FOX PREMIUM $ 139',
						subs_hbo: 'Contrata HBO $ 149',
						subs_noggin: 'Contrata NOGGIN $ 49',
						select_plan: data['lbl_select_plan'],
						select_payment: data['lbl_select_payment'],
						telmex_method: data['lbl_telmex_payment'],
						telcel_method: data['lbl_telcel_payment'],
						tdc_payment: data['lbl_tdc_payment'],
						promo_code: data['lbl_cp']
				}
      when 'co'
        $payment_page_labels = {
            subs_mensual: 'Suscríbete Mensual $ 69',
            subs_semanal: 'Suscríbete Semanal* $ 25',
            subs_fox: 'Contrata FOX PREMIUM $ 139',
            subs_hbo: 'Contrata HBO $ 149',
            subs_noggin: 'Contrata NOGGIN $ 49',
            select_plan: data['lbl_select_plan'],
            select_payment: data['lbl_select_payment'],
            telmex_method: data['lbl_telmex_payment'],
            telcel_method: data['lbl_telcel_payment'],
            tdc_payment: data['lbl_tdc_payment'],
            promo_code: data['lbl_cp']
        }

			else
				Info.basic_error 'No entro el case'

		end
#



# tarjeta de credito, datos
$dl_val_payment_tc_nombre = data['val_payment_tc_nombre']
$dl_val_payment_tc_numero = data['val_payment_tc_numero']
$dl_val_payment_tc_empresa = data['val_payment_tc_empresa']
$dl_val_payment_tc_cvv = data['val_payment_tc_cvv']
$dl_val_payment_tc_mes_exp = data['val_payment_tc_mes_exp']
$dl_val_payment_tc_anio_exp = data['val_payment_tc_anio_exp']
$dl_val_payment_tc_direccion = data['val_payment_tc_direccion']
$dl_val_payment_tc_ciudad = data['val_payment_tc_ciudad']
$dl_val_payment_tc_estado = data['val_payment_tc_estado']
$dl_val_payment_tc_codigo_postal = data['val_payment_tc_codigo_postal']
$dl_val_payment_tc_telefono = data['val_payment_tc_telefono']
$dl_val_payment_tc_dia_usuario = data['val_payment_tc_dia_usuario']
$dl_val_payment_tc_mes_usuario = data['val_payment_tc_mes_usuario']
$dl_val_payment_tc_anio_usuario = data['val_payment_tc_anio_usuario']
# datos otros métodos de pago
$dl_val_payment_tel_numero_fijo = data['val_payment_tel_numero_fijo']
$dl_val_payment_tel_numero_movil = data['val_payment_tel_numero_movil']
$dl_val_payment_codigo_promo = data['val_payment_codigo_promo']
$dl_val_payment_codigo_promo = data['val_payment_codigo_promo']
$dl_val_payment_codigo_promo_valido = data['val_payment_codigo_promo_valido']
$dl_val_payment_codigo_promo_used = data['val_payment_codigo_promo_used']
$dl_val_payment_codigo_promo_invalid = data['val_payment_codigo_promo_invalid']

# Labels content page ficha tecnica
$btn_sus_mensual = data['btn_sus_mensual']
$btn_rent24 = data['btn_rent24']
$btn_rent48 = data['btn_rent48']
$btn_purchase = data['btn_purchase']
$btn_rent_vivo = data['btn_rent_vivo']

$lbl_download = data['lbl_download']
$lbl_recomend = data['lbl_recomend']
$lbl_chap_compra = data['lbl_chap_compra']
$lbl_chap_rent = data['lbl_chap_rent']
$lbl_chap_sus = data['lbl_chap_sus']
$lbl_subtitulada = data['lbl_subtitulada']
$lbl_doblada = data['lbl_doblada']
$lbl_direct = data['lbl_direct']
$lbl_act = data['lbl_act']
$lbl_gen = data['lbl_gen']
$lbl_titu = data['lbl_titu']
$lbl_mail = data['lbl_mail']
$lbl_compartir = data['lbl_compartir']
$lbl_trailer = data['lbl_trailer']
$lbl_ver_linea = data['lbl_ver_linea']
$lbl_recomend2 = data['lbl_recomend2']
$lbl_ver_ahora = data['lbl_ver_ahora']
$lbl_pin_off = data['lbl_pin_off']
$lbl_mi_list = data['lbl_mi_list']
$btn_play = data['btn_play']
$btn_trailer = data['btn_trailer']



#Labels para hacer el assert de la page de registro
$lbl_ing_datos = data['lbl_ing_datos']
$lbl_correo = data['lbl_correo']
$lbl_rep_correo = data['lbl_rep_correo']
$lbl_pass = data['lbl_pass']
$lbl_rep_pass = data['lbl_rep_pass']
$lbl_nombre = data['lbl_nombre']
$lbl_apellido = data['lbl_apellido']
$lbl_tem_condiciones = data['lbl_tem_condiciones']
$lbl_btn_siguiente = data['lbl_btn_siguiente']
$lbl_btn_telmex = data['lbl_btn_telmex']

#Labels para mensaje de exito para suscripcion
$lbl_mns_exito_sus = data['lbl_mns_exito_sus']
$btn_aceptar = data['btn_aceptar']

# labels control parental
$dl_cp_viewer_titulo = data['dl_cp_viewer_titulo']
$dl_cp_lbl_pin_incorrecto = data['dl_cp_lbl_pin_incorrecto']

class DataLabels

  @success_message = {
    :rent => 'txt_renta_exitosa',
    :subscription => 'txt_suscripcion_exitosa',
    :'request fox activation' => 'txt_solicitud_fox_exitosa',
    :'correct fox activation' => 'txt_suscripcion_fox_exitosa',
    :'request Noggin activation' => 'txt_solicitud_noggin_exitosa',
    :'correct Noggin activation' => 'txt_suscripcion_noggin_exitosa',
    :'request Telmex activation' => 'txt_solicitud_telmex_exitosa',
    :'request claro activation' => 'txt_solicitud_claro_exitosa',
    :'correct claro activation' => 'txt_suscripcion_claro_exitosa',
    :'request Crackle activation' => 'txt_solicitud_crackle_exitosa',
    :'correct Crackle activation' => 'txt_suscripcion_crackle_exitosa',
    :'correct generic activation' => 'txt_suscripcion_generic_exitosa'
  }

  class << self

    attr_reader :country, :data

    # Método para inicializar la clase, carga todos los data_labels en la clase ya
    # que es estática. Una sola carga en cada ejecución para optimizar la carga de
    # información.
    def load_data
      @country = ENV['COUNTRY'].downcase.to_sym
      yml_path = "../global/config/data/#{Utils.country}/data_labels.yml"
      full_path = File.expand_path(yml_path, File.dirname(__FILE__))
      Info.basic "Cargando información desde #{full_path}."
      @data = YAML.safe_load(File.open(full_path))
      Info.basic 'Información cargada.'
    end

    # Método para regresar los elementos del menú superior.
    def menu_superior
      load_data if @data.nil?
      {
        :Inicio => @data['menu_inicio'],
        :Básico => @data['menu_basico'],
        :Catálogo => @data['menu_catalogo'],
        :'Pago por Evento' => @data['menu_ppe'],
        :Niños => @data['menu_ninios'],
        :TV => @data['menu_tv'], # Agregado para el ambiente de demo.
        :Salir => @data['menu_salir'],
        :Películas => @data['menu_peliculas'],
        :'Infantil y Familia' => @data['menu_infantil_y_familia'],
        :Documentales => @data['menu_documentales'],
        :Historia => @data['menu_historia'],
        :'Play and Go' => @data['menu_fox']
      }
    end

    # Método para regresar las etiquetas de la sección de usuarios en la parte superior.
    def botones_anonimo_registro
      load_data if @data.nil?
      {
        :Ingresar => @data['menu_ingresar'],
        :Registrate => @data['menu_registro']
      }
    end

    def telmex_number
      load_data if @data.nil?
      @data['val_payment_tel_numero_fijo']
    end

    def success_message(type)
      load_data if @data.nil?
      @data[@success_message[type]]
    end

    def subscription(type)
      load_data if @data.nil?
      case type
      when :Mensual
        @data['plan_suscribete_mensual_69']
      when :Semanal
        @data['plan_suscribete_semanal_25']
      when :Fox
        @data['plan_contrata_fox_premium_139']
      when :HBO
        @data['plan_contrata_hbo_149']
      when :Noggin
        @data['plan_contrata_noggin_49']
      when :Crackle
        @data['plan_contrata_crackle_49']
      else
        raise "Tipo de suscripción #{type} inválida."
      end
    end

    def payment(type)
      load_data if @data.nil?
      case type
      when :'Recibo Telmex o Telnor'
        @data['pago_telmex']
      when :Telcel
        @data['pago_telcel']
      when :'Tarjeta de crédito'
        @data['pago_tarjeta']
      when :'Código promocional'
        @data['pago_codigo_promocional']
      else
        raise "Tipo de pago #{type} inválido."
      end
    end

    def skip_payment_method
      load_data if @data.nil?
      @data['lbl_skip_step']
    end

    def credit_card_data
      load_data if @data.nil?
      case Utils.environment
      when :PROD, :DEMO, :TEST
        {
          Nombre: @data['credit_card_name_prod'],
          Numero_de_tarjeta: @data['credit_card_number_prod'],
          Tipo_de_tarjeta: @data['credit_card_type_prod'],
          Codigo_de_seguridad: @data['credit_card_cvv_prod'],
          Fecha_de_expiracion_mes: @data['credit_card_expiration_month_prod'],
          Fecha_de_expiracion_anio: @data['credit_card_expiration_year_prod'],
          Fecha_de_nacimiento_dia: @data['credit_card_birth_day'],
          Fecha_de_nacimiento_mes: @data['credit_card_birth_month'],
          Fecha_de_nacimiento_anio: @data['credit_card_birth_year'],
          Direccion: @data['credit_card_address'],
          Ciudad: @data['credit_card_city'],
          Estado: @data['credit_card_state'],
          Codigo_postal: @data['credit_card_zip_code'],
          Telefono: @data['credit_card_phone'],
          Codigo_de_seguridad_inco: @data['credit_card_cvv_wrong_prod']
        }
      else
        raise "Ambiente #{Utils.environment} inválido para los datos de tarjeta de crédito."
      end
    end

  end
end
