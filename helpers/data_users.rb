require 'fileutils'
require 'yaml'
require_relative '../helpers/paths_env'
require_relative '../helpers/Info'
require_relative '../helpers/utils'
require 'csv'


#Método para seleccionar las labels y asserts dependiendo el pais.
$country.to_s.downcase.strip
    data_users = YAML.load(File.read("../global/config/data/#{Utils.country}/data_users.yml"))

# cuentas de usuario desde el yml
# mx
$user_reg = data_users["user_reg"]
$pass_reg = data_users["pass_reg"]
$user_sus = data_users["user_sus"]
$pass_sus = data_users["pass_sus"]
$user_rega = data_users["user_rega"]
$pass_rega = data_users["pass_rega"]
$user_regatm = data_users["user_regatm"]
$pass_regatm = data_users["pass_regatm"]
$user_regatf = data_users["user_regatf"]
$pass_regatf = data_users["pass_regatf"]
$user_degus = data_users["user_degus"]
$pass_degus = data_users["pass_degus"]
$user_reg_cp = data_users["user_reg_cp"]
$pass_reg_cp = data_users["pass_reg_cp"]
$user_sus_cp = data_users["user_sus_cp"]
$pass_sus_cp = data_users["pass_sus_cp"]
$code_pin_cp = data_users["code_pin_cp"]
# Usuarios para feature Live content con telmex y por browser
$user_sus_lc_tf_cr = data_users['user_sus_lc_tf_cr']
$pass_sus_lc_tf_cr = data_users['pass_sus_lc_tf_cr']
$user_sus_lc_tf_saf = data_users['user_sus_lc_tf_saf']
$pass_sus_lc_tf_saf = data_users['pass_sus_lc_tf_saf']
$user_sus_lc_tf_moz = data_users['user_sus_lc_tf_moz']
$pass_sus_lc_tf_moz = data_users['pass_sus_lc_tf_moz']

# Usuarios para feature Live content con TDC y por browser
$user_sus_lc_tdc_cr = data_users['user_sus_lc_tdc_cr']
$pass_sus_lc_tdc_cr = data_users['pass_sus_lc_tdc_cr']
$user_sus_lc_tdc_saf = data_users['user_sus_lc_tdc_saf']
$pass_sus_lc_tdc_saf = data_users['pass_sus_lc_tdc_saf']
$user_sus_lc_tdc_moz = data_users['user_sus_lc_tdc_moz']
$pass_sus_lc_tdc_moz = data_users['pass_sus_lc_tdc_moz']

# Usuarios registrados sin metodo de pago asociado TDC
$user_rega_lc_tdc_cr = data_users['user_rega_lc_tdc_cr']
$pass_rega_lc_tdc_cr = data_users['pass_rega_lc_tdc_cr']
$user_rega_lc_tdc_saf = data_users['user_rega_lc_tdc_saf']
$pass_rega_lc_tdc_saf = data_users['pass_rega_lc_tdc_saf']
$user_rega_lc_tdc_moz = data_users['user_rega_lc_tdc_moz']
$pass_rega_lc_tdc_moz = data_users['pass_rega_lc_tdc_moz']
# Usuarios registrados sin metodo de pago asociado Telmex
$user_rega_lc_tf_cr = data_users['user_rega_lc_tf_cr']
$pass_rega_lc_tf_cr = data_users['pass_rega_lc_tf_cr']
$user_rega_lc_tf_saf = data_users['user_rega_lc_tf_saf']
$pass_rega_lc_tf_saf = data_users['pass_rega_lc_tf_saf']
$user_rega_lc_tf_moz = data_users['user_rega_lc_tf_moz']
$pass_rega_lc_tf_moz = data_users['pass_rega_lc_tf_moz']
# Números TELMEX para la renta de usuario sin método de pago asociado
$num_telmex_moz = data_users['num_telmex_moz']
$num_telmex_cr = data_users['num_telmex_cr']
$num_telmex_saf = data_users['num_telmex_saf']
#Usuario Area de monitoreo
$user_sus_mon = data_users['user_sus_mon']
$pass_sus_mon = data_users['pass_sus_mon']
#Usuario registrado para hacer suscripcion telmex
$user_reg_telm = data_users['user_reg_telm']
$pass_reg_telm = data_users['pass_reg_telm']
#Usuario registrado para hacer suscripcion telcel
$user_reg_telcel = data_users['user_reg_telcel']
$pass_reg_telcel = data_users['pass_reg_telcel']


$num_telcel_sus = data_users['num_telcel_sus']

$user_data = {}

def set_credentials(to_test:, with: nil)
  if !with.nil?
    to_test = "#{to_test}_#{with.tr ' ', '_'}"
  end
  Info.basic "Colocando credenciales para usuario tipo #{to_test}"
  case to_test.to_sym
  when :anonymous
    Info.basic 'Usuarios anónimos no tienen credenciales de acceso'
    $user_data[:username] = ''
    $user_data[:password] = ''

  when :pin
    $user_data[:username] = 'sus.web.pines@gmail.com'
    $user_data[:password] = 'test1234'

  when :frankie, :degustation
    $user_data[:username] = $user_degus
    $user_data[:password] = $pass_degus

  when :registered
    $user_data[:username] = $user_reg
    $user_data[:password] = $pass_reg
  when :registered_live_tdc
    credentials = user_rega_by_browser_tdc
    $user_data[:username] = credentials['email']
    $user_data[:password] = credentials['password']

  when :registered_live_telmex
    credentials = user_rega_by_browser_telmex
    $user_data[:username] = credentials['email']
    $user_data[:password] = credentials['password']
  when :registered_parental_control
    $user_data[:username] = $user_reg_cp
    $user_data[:password] = $pass_reg_cp
  when :registered_payment_method
    $user_data[:username] = $user_rega
    $user_data[:password] = $pass_rega
  when :registered_telefonia_fija
    $user_data[:username] = $user_regatf
    $user_data[:password] = $pass_regatf
  when :registered_telefonia_movil
    $user_data[:username] = $user_regatm
    $user_data[:password] = $pass_regatm

  when :subscribed
    $user_data[:username] = $user_sus
    $user_data[:password] = $pass_sus
  when :subscribed_live_tdc
    cretentials = user_by_browser_tdc
    $user_data[:username] = credentials['email']
    $user_data[:password] = credentials['password']
  when :subscribed_live_telmex
    credentials = user_by_browser_telmex
    $user_data[:username] = credentials['email']
    $user_data[:password] = credentials['password']
  when :subscribed_monitoring
    $user_data[:username] = $user_sus_mon
    $user_data[:password] = $pass_sus_mon
  when :subscribed_parental_control
    $user_data[:username] = $user_sus_cp
    $user_data[:password] = $pass_sus_cp

  else
    raise "No existen credenciales para tipo de usuario #{to_test}"
  end
  $user_data[:user_type] = to_test.to_sym
end

# Método para obtener datos login generico, cualquier pais y segun el tipo de usuario
# se retorna un objeto hash map, que contiene el email y password
# @params
#   :user_type tipo de usuario
  def get_data_user(user_type)
    if user_type.to_s.downcase.include? "conami"
      user_type = user_type.to_s.downcase.sub! "conami", ""
      user_type = user_type.to_s.strip
    end
    case user_type.to_s.downcase.strip
      when "registered"
        return { "email" => $user_reg, "password" => $pass_reg }
      when "registered with payment method"
        return { "email" => $user_rega, "password" => $pass_rega }
      when "registered with telefonia movil payment method"
        return { "email" => $user_regatm, "password" => $pass_regatm }
      when "registered with telefonia fija payment method"
        return { "email" => $user_regatf, "password" => $pass_regatf }
      when "membership"
        return { "email" => $user_sus, "password" => $pass_sus }
      when "degustation"
        return { "email" => $user_degus, "password" => $pass_degus }
      when "registered with parental control"
        return { "email" => $user_reg_cp, "password" => $pass_reg_cp }
      when "membership with parental control"
        return { "email" => $user_sus_cp, "password" => $pass_sus_cp }
      when "subscribed live telmex"
        user_by_browser_telmex
      when "subscribed live tdc"
        user_by_browser_tdc
      when "registered live tdc"
        user_rega_by_browser_tdc
      when "registered live telmex"
        user_rega_by_browser_telmex
      when "subscribed monitoring"
        return { "email" => $user_sus_mon, "password" => $pass_sus_mon }
      when "registered telmex"
        return { "email" => $user_reg_telm, "password" => $pass_reg_telm }
      when "registered telcel"
        return { "email" => $user_reg_telcel, "password" => $pass_reg_telcel }
      else
        fail(msg='get_data_user => no se pudo obtener data_user, tipo de usuario invalido')
    end
  end

# Método dependiendo el tipo de usuario en este caso Subscribed para live ppe, y dependiendo el browser es el que vamos a usar.
  def user_by_browser_telmex
    puts $brow.to_s
    if $brow == 'chrome'
      return { "email" => $user_sus_lc_tf_cr, "password" => $pass_sus_lc_tf_cr }
    elsif $brow == "safari"
      return { "email" => $user_sus_lc_tf_saf, "password" => $pass_sus_lc_tf_saf }
    elsif $brow == "mozilla"
      return { "email" => $user_sus_lc_tf_moz, "password" => $pass_sus_lc_tf_moz }
    else
        fail(msg='No entro el case de usuarios por browser y Sus TELMEX')
    end
  end

  # aqui dependiendo el tipo de usuario en este caso Subscribed para live ppe, y dependiendo el browser es el que vamos a usar.
  def user_by_browser_tdc
    puts $brow.to_s
    if $brow == 'chrome'
      return { "email" => $user_sus_lc_tdc_cr, "password" => $pass_sus_lc_tdc_cr }
    elsif $brow == "safari"
      return { "email" => $user_sus_lc_tdc_saf, "password" => $pass_sus_lc_tdc_saf }
    elsif $brow == "mozilla"
      return { "email" => $user_sus_lc_tdc_moz, "password" => $pass_sus_lc_tdc_moz }
    else
      fail(msg='No entro el case de usuarios por browser y Sus TDC')
    end
  end

  # Método donde dependiendo el tipo de usuario en este caso registrado con metodo de pago asociado para live ppe, y dependiendo el browser es el que vamos a usar.
  def user_rega_by_browser_tdc
    puts $brow.to_s
    if $brow == 'chrome'
      return { "email" => $user_rega_lc_tdc_cr, "password" => $pass_rega_lc_tdc_cr }
    elsif $brow == "safari"
      return { "email" => $user_rega_lc_tdc_saf, "password" => $pass_rega_lc_tdc_saf }
    elsif $brow == "mozilla"
      return { "email" => $user_rega_lc_tdc_moz, "password" => $pass_rega_lc_tdc_moz }
    else
      fail(msg='No entro el case de usuarios por browser y Sus TDC')
    end
  end
  # Método donde dependiendo el tipo de usuario en este caso registrado con metodo de pago asociado para live ppe, y dependiendo el browser es el que vamos a usar.
  def user_rega_by_browser_telmex
    puts $brow.to_s
    if $brow == 'chrome'
      return { "email" => $user_rega_lc_tf_cr, "password" => $pass_rega_lc_tf_cr }
    elsif $brow == "safari"
      return { "email" => $user_rega_lc_tf_saf, "password" => $pass_rega_lc_tf_saf }
    elsif $brow == "mozilla"
      return { "email" => $user_rega_lc_tf_moz, "password" => $pass_rega_lc_tf_moz}
    else
      fail(msg='No entro el case de usuarios por browser y Sus TDC')
    end
  end

  # Método donde nos devuelve un número telmex para usar en la renta de contenido con TELMEX
  def get_num_telmex_by_brow
    if $brow == 'chrome'
      return $num_telmex_cr
    elsif $brow == "safari"
      return $num_telmex_cr
    elsif $brow == "mozilla"
      return $num_telmex_cr
        fail(msg = 'No entro el case de numeros TELMEX por browser')
    end
  end

# Método donde nos devuelve un número telcel para usar en la renta de contenido con TELCEL
def get_num_telcel
  return $num_telcel_sus
end

# Clase para manejar las credenciales de los usuarios.
class DataUsers

  class << self

    # Método para inicializar la variable de credenciales.
    def startup
      @country = Utils.country
      yml_path = "../global/config/data/#{@country}/data_users.yml"
      full_path = File.expand_path(yml_path, File.dirname(__FILE__))
      @data_users_label = YAML.safe_load(File.open(full_path))
      @credentials = {
        email: :none,
        password: :none,
        user_type: :none
      }
      @credentials_catalog= {
        :email =>{
          :'empty email' => {
            :email => nil,
            :password => @data_users_label['password_valid'] ,
            :check =>@data_users_label['check_true']
          },
          :'empty password' => {
            :email => @data_users_label['user_email_tlmx'],
            :password => nil,
            :check => @data_users_label['check_true']
          },
          :'empty checkbox' =>{
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_valid'],
            :check=>@data_users_label['check_false']
          },
          :'short password'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_short'],
            :check => @data_users_label['check_true'],
          },
          :'password lowercase letters'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_ll'],
            :check => @data_users_label['check_true']
          },
          :'password numeric and lowercase letters'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_nl'],
            :check => @data_users_label['check_true'],
          },
          :'password numeric and capital letters'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_nc'],
            :check => @data_users_label['check_true'],
          },
          :'password numeric'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_n'],
            :check => @data_users_label['check_true'],
          },
          :'password same as the email'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['user_email_tlmx'],
            :check => @data_users_label['check_true'],
          },
          :'password same characters'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_samed'],
            :check => @data_users_label['check_true'],
          },
          :'existing email'=> {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_nc'],
            :check => @data_users_label['check_true'],
          },
          :'correct user without subscription'=>{
            :email => @data_users_label['user_email_without'],
            :password => @data_users_label['user_password'],
            :check => @data_users_label['check_true'],
          },
          :'correct user' => {
            :email=> 'random_new',
            :password=> @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
          :'correct user with same email' =>{
            :email => 'random_old',
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
          :'user telmex' => {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['user_password'],
            :check => @data_users_label['check_true'],
          },
          :'a new user telmex' => {
            :email => @data_users_label['tlmx_email_1'],
            :password => @data_users_label['user_password'],
            :check => @data_users_label['check_true'],
          },
          :'a new user telcel' => {
            :email => @data_users_label['telcel_email_2'],
            :password => @data_users_label['user_password'],
            :check => @data_users_label['check_true'],
          }

        },
        :'credit card' => {
          :'empty card name'=>{
            :cardname=>nil,
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'special characters'=>{
            :cardname=>@data_users_label['val_special_characters'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'empty card number'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>nil,
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'empty date'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>nil,
            :cardyear=>nil,
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'empty month'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>nil,
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'empty year'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>nil,
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'empty security number' =>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>nil,
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'short card number'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_short_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'letters card number'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_lett_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'characters specials card number'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_char_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'short card code'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_short_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'card code long'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_long_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'wrong card code'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_wrong_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'wrong month'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_wrong_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'correct data of credit card'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp2'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'credit card expired'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp2'],
            :cardyear=>@data_users_label['val_payment_tc_anio_expired'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'number in name'=>{
            :cardname=>@data_users_label['ivalid_tc_number'],
            :cardnumber=>@data_users_label['val_payment_tc_numero'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'invalid number'=>{
            :cardname=>@data_users_label['val_payment_tc_nombre'],
            :cardnumber=>@data_users_label['ivalid_tc_number'],
            :cardcode=>@data_users_label['val_payment_tc_cvv'],
            :cardmonth=>@data_users_label['val_payment_tc_mes_exp'],
            :cardyear=>@data_users_label['val_payment_tc_anio_exp'],
            :cardtype=>@data_users_label['val_payment_tc_empresa']
          },
          :'credit card canceled' =>{
            :cardname=>@data_users_label['val_cancel_tc_nombre'],
            :cardnumber=>@data_users_label['val_cancel_tc_numero'],
            :cardcode=>@data_users_label['val_cancel_tc_cvv'],
            :cardmonth=>@data_users_label['val_cancel_tc_mes_exp'],
            :cardyear=>@data_users_label['val_cancel_tc_anio_exp'],
            :cardtype=>@data_users_label['val_cancel_tc_empresa']
          }
        },
        :telcel =>{
          :'empty check'=>{
            :number => @data_users_label['number_telcel_not'],
            :check => @data_users_label['check_false'],
          },
          :'short number' => {
            :email => 'random_old',
            :password => @data_users_label['password_valid'],
            :number => @data_users_label['number_telcel_short'],
            :check => @data_users_label['check_true'],
          },
          :'not telcel' => {
            :number => @data_users_label['number_telcel_not'],
            :check => @data_users_label['check_true']
          },
          :'existing number' => {
            :number => @data_users_label['number_telcel_existing'],
            :check => @data_users_label['check_true']
          },
          :'valid number' => {
            :number => @data_users_label['number_telcel_valid2'],
            :check => @data_users_label['check_true']
          },
          :'a valid number' => {
            :number => @data_users_label['number_telcel_valid1'],
            :check => @data_users_label['check_true']
          },
          :'wrong password' => {
            :password => @data_users_label['password_ll'],
            :check => @data_users_label['check_true']
          },
          :password => {
            :password => @data_users_label['password_telcel1'],
            :check => @data_users_label['check_true']
          },
          :'a password' => {
            :password => @data_users_label['password_telcel1'],
            :check => @data_users_label['check_true']
          },
          :'number invalid' => {
            :number => @data_users_label['number_invent'],
            :check => @data_users_label['check_true']
          },
          :'another number' => {
            :number =>@data_users_label['number_other'],
            :check => @data_users_label['check_true']
          },
          :'empty number' => {
            :number => nil,
            :check => @data_users_label['check_true']
          },
          :'number of subscription'=>{
            :number => @data_users_label['number_telcel_valid'],
            :check=> @data_users_label['check_true'],
            :password=> @data_users_label['password_telcel2']
          },
          :'correct number' => {
            :number => @data_users_label['number_telcel_valid'],
            :check=> @data_users_label['check_true']
          }
        },
        :telmex => {
          :'a valid number' => {
            :number => @data_users_label['tlmx_num_1']
          },
          :'new user telmex' => {
            :number => @data_users_label['tlmx_num_1'],
            :email => @data_users_label['tlmx_email_1'],
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
          :"empty number" => {
            :number => @data_users_label['number_nil'],
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
          :'empty email' => {
            :number => @data_users_label['number_tlmx_valid'],
            :email => nil,
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
          :'empty password' => {
            :number => @data_users_label['number_tlmx_valid'],
            :email => @data_users_label['user_email_tlmx'],
            :password => nil,
            :check => @data_users_label['check_true']
          },
          :'empty check' => {
            :number => @data_users_label['number_tlmx_valid'],
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_false']
          },
          :'only check' => {
            :check => @data_users_label['check_true']
          },
          :'password numeric' =>{
            :number =>@data_users_label['number_exist'],
            :email =>@data_users_label['user_email_tlmx'],
            :password =>@data_users_label['password_n'],
            :check =>@data_users_label['check_true']
          },
          :'password capital letters'=>{
            :number => @data_users_label['number_exist'],
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_cl'],
            :check => @data_users_label['check_true']
          },
          :'password lowercase letters'=>{
            :number => @data_users_label['number_exist'],
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_ll'],
            :check => @data_users_label['check_true']
          },
          :'password lowercase letters and capital letters' => {
            :number => @data_users_label['number_exist'],
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_cl-ll'],
            :check => @data_users_label['check_true']
          },
          :'short password' => {
            :number => @data_users_label['number_exist'],
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['password_short'],
            :check => @data_users_label['check_true']
          },
          :'existing number' => {
            :number =>@data_users_label['number_exist'],
            :email =>@data_users_label['user_email_tlmx'],
            :password =>@data_users_label['password_valid'],
            :check =>@data_users_label['check_true']
          },
          :'existing email' => {
            :number =>@data_users_label['number_other'],
            :email =>@data_users_label['user_email_tlmx'],
            :password =>@data_users_label['password_valid'],
            :check =>@data_users_label['check_true']
          },
          :'invalid number' =>{
            :number => @data_users_label['number_invent'],
            :email =>'random_new',
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
          :'another number' => {
            :number =>@data_users_label['number_other'],
            :email =>'random_new',
            :password =>@data_users_label['password_valid'],
            :check =>@data_users_label['check_true']
          },
          :'number with debt' => {
            :number =>@data_users_label['number_debt'],
            :email =>'random_new',
            :password =>@data_users_label['password_valid'],
            :check =>@data_users_label['check_true']
          },
          :'short number'=> {
            :number =>@data_users_label['number_short']
          },
          :'valid number' => {
            :number => @data_users_label['number_exist']
          },
          :'invalid email' => {
            :number => @data_users_label['tlmx_num_1'],
            :email => @data_users_label['tlmx_email_inv'],
            :password => @data_users_label['password_valid'],
            :check => @data_users_label['check_true']
          },
        },
        :'claro movil' => {
          :'empty check'=>{
            :check => @data_users_label['check_false'],
            :number => @data_users_label['number_claromovil_not']
          },
          :'short number' => {
            :check => @data_users_label['check_true'],
            :email => 'random_old',
            :password => @data_users_label['password_valid'],
            :number => @data_users_label['number_claromovil_short']
          },
          :'not claromovil' => {
            :check => @data_users_label['check_true'],
            :number => @data_users_label['number_claromovil_not']
          },
          :'existing number' => {
            :check => @data_users_label['check_true'],
            :number => @data_users_label['number_claromovil_existing']
          },
          :'valid number' => {
            :check => @data_users_label['check_true'],
            :number => @data_users_label['number_claromovil_valid']
          },
          :'a valid number' => {
            :check => @data_users_label['check_true'],
            :number => @data_users_label['number_claromovil_valid2']
          },
          :'wrong password' => {
            :check => @data_users_label['check_true'],
            :password => @data_users_label['password_ll']
          },
          :password => {
            :check => @data_users_label['check_true'],
            :password => @data_users_label['password_claromovil']
          },
          :'a password' => {
            :check => @data_users_label['check_true'],
            :password => @data_users_label['password_claromovil2']
          },
          :'number invalid' => {
            :check => @data_users_label['check_true'],
            :number => @data_users_label['number_invent']
          },
          :'another number' => {
            :check => @data_users_label['check_true'],
            :number =>@data_users_label['number_other']
          },
          :'empty number' => {
            :check => @data_users_label['check_true'],
            :number => nil
          }
        },
        :claro => {
          :'empty check'=>{
            :check => false,
            :number => @data_users_label['number_claromovil_not']
          },
          :'short number' => {
            :check => true,
            :email => 'random_old',
            :password => @data_users_label['password_valid'],
            :number => @data_users_label['number_claromovil_short']
          },
          :'not claromovil' => {
            :check => true,
            :number => @data_users_label['number_claromovil_not']
          },
          :'existing number' => {
            :check => true,
            :number => @data_users_label['number_claromovil_existing']
          },
          :'valid number' => {
            :check => true,
            :number => @data_users_label['number_claromovil_valid']
          },
          :'a valid number' => {
            :check => true,
            :number => @data_users_label['number_claromovil_valid2']
          },
          :'wrong password' => {
            :check => true,
            :password => @data_users_label['password_ll']
          },
          :password => {
            :check => true,
            :password => @data_users_label['password_claromovil']
          },
          :'a password' => {
            :check => true,
            :password => @data_users_label['password_claromovil2']
          },
          :'number invalid' => {
            :check => true,
            :number => @data_users_label['number_invent']
          },
          :'another number' => {
            :check => true,
            :number =>@data_users_label['number_other']
          },
          :'empty number' => {
            :check => true,
            :number => nil
          }
        },
        :'claro musica' => {
          :'correct user with email'=>{
            :email => 'random_new',
            :password => @data_users_label['user_password']
          },
          :'correct user with telmex' =>{
            :email=>@data_users_label['user_cm_email_telmex'],
            :password =>@data_users_label['user_password']
          },
          :'correct user with telcel' =>{
            :email =>@data_users_label['user_cm_email_telcel'],
            :password=>@data_users_label['user_password']
          },
          :'correct user with credit card' =>{
            :email =>@data_users_label['user_cm_email_tdc'],
            :password=>@data_users_label['user_password']
          },
          :'correct user with same email' => {
            :email=> 'random_old',
            :password=>@data_users_label['user_cmcv_password']
          },
          :'correct user claro video and claro musica'=>{
            :email => @data_users_label['user_cmcv_email'],
            :password=>@data_users_label['user_password']
          },
          :'correct user'=>{
            :email => 'random_new',
            :password => @data_users_label['user_password']
          },
          :'empty email'=>{
            :password => @data_users_label['user_password']
          },
          :'empty password'=>{
            :email => @data_users_label['user_cm_email_telcel'],
          },
          :'short password'=>{
            :email => @data_users_label['user_cmcv_email'],
            :password=>@data_users_label['password_short']
          },
          :'invalid email'=>{
            :email => @data_users_label['user_email_wrong'],
            :password=>@data_users_label['user_password']
          },
          :'user erased'=>{
            :email => @data_users_label['user_email_wrong'],
            :password=>@data_users_label['user_password']
          },
          :'user claro video'=>{
            :email => @data_users_label['user_cv_email_tdc'],
            :password=>@data_users_label['user_password']
          },
          :'user telmex'=>{
            :email => @data_users_label['tlmx_email_2'],
            :password=>@data_users_label['user_password']
          },
          :'user claro musica without subscription'=>{
            :email => @data_users_label['user_cm_without'],
            :password=>@data_users_label['user_password']
          },
          :'read only user'=> {
            :email=> @data_users_label['read_musica'],
            :password=>@data_users_label['user_password']
          },
          :'user musica' =>{
            :email=>@data_users_label['user_cm_gallery'],
            :password =>@data_users_label['user_password']
          }
        },
        :'claro video' => {
          :'user with video account' => {
            :email => @data_users_label['user_cv_gallery'],
            :password => @data_users_label['user_password']
          },
          :'correct user with telmex' => {
            :email => @data_users_label['user_cv_email_telmex'],
            :password => @data_users_label['user_password']
          },
          :'correct user with telcel' => {
            :email => @data_users_label['user_cv_email_telcel'],
            :password => @data_users_label['user_password']
          },
          :'correct user with credit card' => {
            :email=>@data_users_label["user_cv_email_tdc"],
            :password=>@data_users_label['user_cmcv_password']
          },
          :'correct user with same email' => {
            :email=>'random_old',
            :password=>@data_users_label['user_cmcv_password']
          },
          :'correct user with other password'=>{
            :email=>'random_old',
            :password=>@data_users_label['user_other_password']
          },
          :'correct user with credit card and same email'=>{
            :email=>'random_old',
            :password=>@data_users_label['user_password'],
            :user_name=>@data_users_label['user_name'],
            :last_name=>@data_users_label['user_lastname']
          },
          :'correct user'=>{
            :email=>'random_new',
            :password=>@data_users_label['user_password'],
            :user_name=>@data_users_label['user_name'] ,
            :last_name=>@data_users_label['user_lastname']
          },
          :'empty email'=>{
            :password => @data_users_label['user_password']
          },
          :'empty password'=>{
            :email => @data_users_label['user_cm_email_telcel'],
          },
          :'short password'=>{
            :email => @data_users_label['user_cmcv_email'],
            :password=>@data_users_label['password_short']
          },
          :'invalid email'=>{
            :email => @data_users_label['user_email_wrong'],
            :password=>@data_users_label['user_password']
          },
          :'user erased'=>{
            :email => @data_users_label['user_email_wrong'],
            :password=>@data_users_label['user_password']
          },
          :'user claro musica'=>{
            :email => @data_users_label['user_cm_email_tdc'],
            :password=>@data_users_label['user_password']
          },
          :'user telmex'=>{
            :email => @data_users_label['tlmx_email_1'],
            :password=>@data_users_label['user_password']
          },
          :'user claro video without subscription'=>{
            :email => @data_users_label['user_cv_without'],
            :password=>@data_users_label['user_password']
          },
          :'read only user'=> {
            :email=> @data_users_label['read_video'],
            :password=>@data_users_label['user_password']
          },
          :'user video'=> {
            :email=> @data_users_label['user_cv_metodos'],
            :password=>@data_users_label['user_password']
          },
        },
        :'login claro movil' =>{
          :'wrong number' => {
            :number => @data_users_label['number_invent'],
            :password=>@data_users_label['password_cl']
          },
          :'wrong number and password' => {
            :number => @data_users_label['number_invent'],
            :password=>@data_users_label['password_cl']
          },
          :'empty number'=> {
            :password=>@data_users_label['user_password']
          },
          :'correct number and wrong password'=> {
            :number=> @data_users_label['number_telcel_valid'],
            :password=>@data_users_label['password_cl']
          },
          :'empty password'=> {
            :number => @data_users_label['number_invent'],
          },
          :'user telmex'=> {
            :number=> @data_users_label['number_tlmx_valid'],
            :password=>@data_users_label['user_password']
          },
          :'user without subscription'=> {
            :number=> @data_users_label['number_tlmx_valid'],
            :password=>@data_users_label['user_password']
          },
        },
        :'login claro' =>{
          :'wrong number' => {
            :number => @data_users_label['number_invent'],
            :password=>@data_users_label['password_cl']
          },
          :'wrong number and password' => {
            :number => @data_users_label['number_invent'],
            :password=>@data_users_label['password_cl']
          },
          :'empty number'=> {
            :password=>@data_users_label['user_password']
          },
          :'correct number and wrong password'=> {
            :number=> @data_users_label['number_telcel_valid'],
            :password=>@data_users_label['password_cl']
          },
          :'empty password'=> {
            :number => @data_users_label['number_invent'],
          },
          :'user telmex'=> {
            :number=> @data_users_label['number_tlmx_valid'],
            :password=>@data_users_label['user_password']
          },
          :'user without subscription'=> {
            :number=> @data_users_label['number_tlmx_valid'],
            :password=>@data_users_label['user_password']
          },
        },
        :'login email' => {
          :'correct user with credit card' => {
            :email => @data_users_label['user_email_tdc'],
            :password=>@data_users_label['user_password']
          },
          :'correct user with telmex' =>{
            :email=>@data_users_label['user_email_tlmx'],
            :password=>@data_users_label['user_password']
          },
          :'correct user with telcel' => {
            :email=> @data_users_label['user_email_telcel'],
            :password=>@data_users_label['user_password']
          },
          :'correct user without subscription' => {
            :email =>@data_users_label['user_email_without'],
            :password=> @data_users_label['user_password']
          },
          :'correct email'=> {
            :email=>@data_users_label['user_email_tlmx'],
          },
          :'wrong email and password' => {
            :email=> @data_users_label['user_email_wrong'],
            :password=>@data_users_label['password_cl']
          },
          :'correct email and wrong password'=> {
            :email=> @data_users_label['user_email_block'],
            :password=>@data_users_label['password_cl']
          },
          :'empty email'=> {
            :password=>@data_users_label['user_password']
          },
          :'empty password'=> {
            :email=> @data_users_label['user_email_wrong'],
          },
          :'user claro video'=> {
            :email=> @data_users_label['user_email_cv'],
            :password=>@data_users_label['user_password']
          },
          :'user without subscription'=> {
            :email=> @data_users_label['user_email_wrong'],
            :password=>@data_users_label['user_password']
          },
          :'read only user'=> {
            :email=> @data_users_label['read_email'],
            :password=>@data_users_label['user_password']
          }
        },
        :'login telcel'=> {
          :'correct user' => {
            :number => @data_users_label['number_telcel_valid']
          },
          :'correct number' => {
            :number => @data_users_label['number_telcel_valid']
          },
          :'correct password' => {
            :password => @data_users_label['password_telcel']
          },
          :'wrong password' => {
            :password => @data_users_label['password_wrong_telcel']
          },
          :'wrong number and password' => {
            :number => @data_users_label['number_invent'],
            :password=>@data_users_label['password_cl']
          },
          :'correct number and wrong password'=> {
            :number=> @data_users_label['number_telcel_valid2'],
            :password=>@data_users_label['password_cl']
          },
          :'empty number'=> {
            :password=>@data_users_label['user_password']
          },
          :'empty password'=> {
            :number => @data_users_label['number_invent'],
          },
          :'user telmex'=> {
            :number=> @data_users_label['number_tlmx_valid'],
            :password=>@data_users_label['user_password']
          },
          :'user without subscription'=> {
            :number=> @data_users_label['number_tlmx_valid'],
            :password=>@data_users_label['user_password']
          },
        },
        :'login telmex'=> {
          :'correct user with telmex'=>{
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['user_password']
          },
          :'wrong email and password' => {
            :email=> @data_users_label['user_email_wrong'],
            :password=>@data_users_label['password_cl']
          },
          :'correct email and wrong password'=> {
            :email=> @data_users_label['user_email_tlmx'],
            :password=>@data_users_label['password_cl']
          },
          :'empty email'=> {
            :password=>@data_users_label['user_password']
          },
          :'empty password'=> {
            :email=> @data_users_label['user_email_wrong'],
          },
          :'user claro video'=> {
            :email=> @data_users_label['user_email_cv'],
            :password=>@data_users_label['user_password']
          },
          :'user without subscription'=> {
            :email=> @data_users_label['user_email_wrong'],
            :password=>@data_users_label['user_password']
          },
          :'wrong password'=>{
            :email => @data_users_label['tlmx_email_7'],
            :password=> @data_users_label['wrong_password']
          },
          :'user telmex' => {
            :email => @data_users_label['user_email_tlmx'],
            :password => @data_users_label['user_password']
          }
        },
        :home =>{
          :'name folder'=>{
            :name => @data_users_label['name_folder']
          },
          :'name file'=>{
            :name => @data_users_label['name_file']
          },
          :'testing text' => {
            :text => @data_users_label['testing_text']
          },
          :'target email' => {
            :email => 'random_new',
          },
          :'target user email' => {
            :email => 'random_old',
          },
          :'new name' => {
            :new => 'new'
          },
          :'new email' =>{
            :email1 => 'random_new',
            :email2 => 'random_new',
            :email3 => 'random_new',
            :email4 => 'random_new',
            :email5 => 'random_new'
          },
          :'family space' =>{
              :email=> 'random_new'
          },
          :'more space' =>{
            :space => '2'
          },
          :'less space' =>{
            :space => '1'
          }
        },
        :'chrome'=>{
          :'telmex'=>{
            :'25'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['random_new'],
              :password => @data_users_label['user_password2'],
              :number => @data_users_label['number_telmex_valid1']
            }
          },
          :'telcel'=>{
            :'25'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['chr.tel.25'],
              :password => @data_users_label['user_password2'],
              :number => @data_users_label['number_telcel_valid']
            }
          },
          :'claro musica'=>{
            :'75'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['chr.cm.75'],
              :password => @data_users_label['user_password2']
            }
          },
          :'claro video'=>{
            :'75'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['chr.cv.75'],
              :password => @data_users_label['user_password2']
            }
          },
          :'email'=>{
            :'75'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['chr.correo.75'],
              :password => @data_users_label['user_password2']
            },
          },
          :'business'=>{
            :'1000'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['chr.bus'],
              :password => @data_users_label['user_password_business']
            },
          }
        },
        :'mozilla'=>{
          :'telmex'=>{
            :'25'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['moz.tlmx.25'],
              :password => @data_users_label['user_password2'],
              :number => @data_users_label['number_telmex_valid2']
            }
          },
          :'telcel'=>{
            :'25'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['moz.tel.25'],
              :password => @data_users_label['user_password2'],
              :number => @data_users_label['number_telcel_valid1']
            }
          },
          :'claro musica'=>{
            :'75'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['moz.cm.75'],
              :password => @data_users_label['user_password2']
            }
          },
          :'claro video'=>{
            :'75'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['moz.cv.75'],
              :password => @data_users_label['user_password2']
            }
          },
          :'email'=>{
            :'75'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['moz.correo.75'],
              :password => @data_users_label['user_password2']
            }
          },
          :'business'=>{
            :'1000'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['moz.bus'],
              :password => @data_users_label['user_password_business']
            },
          }
        },
        :'safari'=>{
            :'telmex'=>{
                :'25'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['saf.tlmx.25'],
                    :password => @data_users_label['user_password2'],
                    :number => @data_users_label['number_telmex_valid3']
                }
            },
            :'telcel'=>{
                :'25'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['saf.tel.25'],
                    :password => @data_users_label['user_password2'],
                    :number => @data_users_label['number_telcel_valid2']
                }
            },
            :'claro musica'=>{
                :'75'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['saf.cm.75'],
                    :password => @data_users_label['user_password2']
                }
            },
            :'claro video'=>{
                :'75'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['saf.cv.75'],
                    :password => @data_users_label['user_password2']
                }
            },
            :'email'=>{
                :'75'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['saf.correo.75'],
                    :password => @data_users_label['user_password2']
                }
            },
            :'business'=>{
              :'1000'=>{
                :user_name => @data_users_label['user_name'],
                :user_lastname => @data_users_label['user_lastname'],
                :email => @data_users_label['saf.bus'],
                :password => @data_users_label['user_password_business']
              },
            }
        },
        :'edge'=>{
          :'telmex'=>{
              :'25'=>{
                  :user_name => @data_users_label['user_name'],
                  :user_lastname => @data_users_label['user_lastname'],
                  :email => @data_users_label['edge.tlmx.25'],
                  :password => @data_users_label['user_password2'],
                  :number => @data_users_label['number_telmex_valid4']
              }
          },
          :'telcel'=>{
              :'25'=>{
                  :user_name => @data_users_label['user_name'],
                  :user_lastname => @data_users_label['user_lastname'],
                  :email => @data_users_label['edge.tel.25'],
                  :password => @data_users_label['user_password2'],
                  :number => @data_users_label['number_telcel_valid3']
              }
          },
          :'claro musica'=>{
              :'75'=>{
                  :user_name => @data_users_label['user_name'],
                  :user_lastname => @data_users_label['user_lastname'],
                  :email => @data_users_label['edge.cm.75'],
                  :password => @data_users_label['user_password2']
              }
          },
          :'claro video'=>{
              :'75'=>{
                  :user_name => @data_users_label['user_name'],
                  :user_lastname => @data_users_label['user_lastname'],
                  :email => @data_users_label['edge.cv.75'],
                  :password => @data_users_label['user_password2']
              }
          },
          :'email'=>{
              :'75'=>{
                  :user_name => @data_users_label['user_name'],
                  :user_lastname => @data_users_label['user_lastname'],
                  :email => @data_users_label['edge.correo.75'],
                  :password => @data_users_label['user_password2']
              }
          },
          :'business'=>{
            :'1000'=>{
              :user_name => @data_users_label['user_name'],
              :user_lastname => @data_users_label['user_lastname'],
              :email => @data_users_label['edge.bus'],
              :password => @data_users_label['user_password_business']
            },
          }
      },
        :'ie'=>{
            :'telmex'=>{
                :'25'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['ie.tlmx.25'],
                    :password => @data_users_label['user_password2'],
                    :number => @data_users_label['number_telmex_valid5']
                }
            },
            :'telcel'=>{
                :'25'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['ie.tel.25'],
                    :password => @data_users_label['user_password2'],
                    :number => @data_users_label['number_telcel_valid4']
                }
            },
            :'claro musica'=>{
                :'75'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['ie.cm.75'],
                    :password => @data_users_label['user_password2']
                }
            },
            :'claro video'=>{
                :'75'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['ie.cv.75'],
                    :password => @data_users_label['user_password2']
                }
            },
            :'email'=>{
                :'75'=>{
                    :user_name => @data_users_label['user_name'],
                    :user_lastname => @data_users_label['user_lastname'],
                    :email => @data_users_label['ie.correo.75'],
                    :password => @data_users_label['user_password2']
                }
            },
            :'business'=>{
              :'1000'=>{
                :user_name => @data_users_label['user_name'],
                :user_lastname => @data_users_label['user_lastname'],
                :email => @data_users_label['ie.bus'],
                :password => @data_users_label['user_password_business']
              },
            }
        }
      }

    end
    #121
    #Función para mandar credenciales por partner y tipo de credenciales.
    # Se carga el hash donde se encuentran las credenciales.
    # dependiendo el partner recibido busca por tipo de credencial, si hace match con el hash inicializado anteriormente
    def for_user(type,partner)
      startup if @credentials_catalog.nil?
      Info.basic partner
      Info.basic "Inicializando credenciales para usuario en #{partner}."
      @credentials = @credentials_catalog[partner][type]
      #@credentials[:partner][:type] = type
      @credentials
    end
    def for_acc(acc, part)
      puts "Cuenta: '#{acc}'\nPartner: '#{part}'".yellow
      startup if @credentials_catalog.nil?
      Info.basic part
      Info.basic "Inicializando credenciales para usuario en #{part}."
      @credentials = @credentials_catalog[$brow.to_sym][part][acc]
      #@credentials[:partner][:type] = type
      @credentials
    end

    #Función para mandar credenciales por método de pago.
    # Se carga el hash donde se encuentran las credenciales.
    # dependiendo el método recibido busca por tipo de credencial, si hace match con el hash inicializado anteriormente
    def for_payment_method(type,partner)
      startup if @credentials_catalog.nil?
      Info.basic partner
      Info.basic "Inicializando credenciales para método de pago #{partner}."
      @credentials = @credentials_catalog[partner][type]
      @credentials
    end

    def for_home(type,partner)
      startup if @credentials_catalog.nil?
      Info.basic partner
      Info.basic "Ingresando datos para #{partner}."
      @credentials = @credentials_catalog[partner][type]
      @credentials
    end

    # Método para establecer las credenciales por usuario.
    # @param [String] username Nombre del usuario
    # @param [String] password Contraseña del usuario
    # @param [Symbol] user_type Tipo de usuario del que se iniciaron credenciales.
    def assign(username:, password:, user_type:)
      raise 'El nombre de usuario no puede estar vacío' if username.nil?
      raise 'La contraseña no puede estar vacía' if password.nil?
      raise 'El tipo de usuario no puede estar vacío' if user_type.nil?
      @credentials[:email] = username
      @credentials[:password] = password
      @credentials[:user_type] = user_type
      Info.basic 'Credenciales usadas:'
      Info.basic "Nombre de usuario: #{username}"
      Info.basic "Contraseña del usuario: #{password}"
      Info.basic "Tipo de usuario: #{user_type}"
    end

    # Método para obtener las credenciales por usuario.
    def data
      startup if @credentials.nil?
      raise 'Aún no se tienen credenciales' if @credentials[:email] == :none ||
                                               @credentials[:password] == :none ||
                                               @credentials[:user_type] == :none

      @credentials
    end

    # Método para obtener el tipo de usuario que se está usando en la prueba.
    def user_type
      startup if @credentials.nil?
      raise 'Aún no se tienen credenciales' if @credentials[:user_type].nil?
      @credentials[:user_type]
    end

  end
end
