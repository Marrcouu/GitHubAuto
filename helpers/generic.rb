require 'fileutils'
require 'yaml'
require 'csv'
require_relative '../helpers/paths_env'
require_relative '../helpers/Info'


$width = nil
$height = nil
$random_email = nil
$random_name = nil
#$feature_name = nil
#$scenario_name = nil


def timestamp

  (Time.now.to_f * 1000).to_i
end

def datetime
  Time.now.strftime('%H%M%S').to_s
end
#Método para obtener evidencia. Se usa en 'hooks scenario = after' lo cual permite obtener una evidencia fail o pass despues de cada scenario
def save_evidence(scenario)
  feature_name = special_chars_replace(scenario.feature.name)
  scenario_name = scenario_name_remove_tc(scenario.name)
  scenario_name = special_chars_replace(scenario_name)
  #evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{$env.to_s.downcase}/#{feature_name}/#{scenario_name}"
  evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{$env.to_s.downcase}/#{$brow.to_s.downcase}/#{$country.to_s.downcase}/#{$user_type.to_s.downcase}/#{feature_name}/#{scenario_name}"
  FileUtils::mkdir_p evidence_dir unless Dir.exist? evidence_dir
  save_screenshot("#{evidence_dir}/#{datetime}_#{scenario.failed? ? 'Fail' : 'Pass'}.png")
  Info.basic 'Se guardó correctamente la evidencia.'
rescue
  Info.basic_error 'generic::save_evidence - Fail screenshot'
end
#Método para obtner evidencia. Se usa manualmente en donde se invoque este método se tomara un screenshot.
# Se recuperan las variables globales de '$feature_name' y '$scenario_name' desde 'hooks scenario => before'
def save_evidence_execution
  feature_name = special_chars_replace($feature_name.to_s)
  scenario_name = scenario_name_remove_tc($scenario_name.to_s)
  scenario_name = special_chars_replace(scenario_name)
  #evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{$env.to_s.downcase}/#{feature_name}/#{scenario_name}"
  evidence_dir = "evidence/#{Time.now.strftime('%F')}/#{$env.to_s.downcase}/#{$brow.to_s.downcase}/#{$country.to_s.downcase}/#{$user_type.to_s.downcase}/#{feature_name}/#{scenario_name}"
  FileUtils::mkdir_p evidence_dir unless Dir.exist? evidence_dir
  save_screenshot("#{evidence_dir}/#{datetime}_Pass.png")
  Info.basic 'Se guardó correctamente la evidencia.'
rescue
  Info.basic_error 'generic::save_evidence_execution - Fail Screenshot'
  raise
end

#Método para obtener el nombre del scenario, esto permite extraerlo y pasarlo al nombre de la evidencia
def scenario_name_remove_tc(scenario)
  a = scenario.to_s.split('(TC')
  a[0].to_s.downcase.strip
end
#Método que quita caracteres especiales a un string
def special_chars_replace(string_value)
  string_value.tr(',.";(){}[]!@#$%&/?¿', '').tr(' ', '_')
end


#Método que genera un email de forma random, apartir de la fecha
def email_random(type)
  puts "Explorador: '#{$brow}' - Tipo: '#{type}'".yellow
  case $brow.to_sym.downcase
  when :chrome
    @email1 = ""
    if type.to_sym == :new
      a = "test.#{timestamp}"
      @email1 = a
      $random_email1 = "#{a}@getnada.com"
      write_in_file($random_email1) if type == :new
      write_in_file(@email1) if type == :old
      return $random_email1
    else
      puts "Correo generado: '#{$random_email1}'"
      return $random_email1
    end
  when :mozilla
    @email2 = ""
    if type.to_sym == :new
      a = "test.#{timestamp}"
      @email2 = a
      $random_email2 = "#{a}@getnada.com"
      write_in_file($random_email2) if type == :new
      write_in_file(@email2) if type == :old
      puts "Correo generado: '#{$random_email2}'"
      return $random_email2
    else
      return $random_email2
    end
  when :safari
    @email3 = ""
    if type.to_sym == :new
      a = "test.#{timestamp}"
      @email3 = a
      $random_email3 = "#{a}@getnada.com"
      write_in_file($random_email3) if type == :new
      write_in_file(@email3) if type == :old
      return $random_email3
    else
      return $random_email3
    end
  when :edge
    @email4 = ""
    if type.to_sym == :new
      a = "test.#{timestamp}"
      @email4 = a
      $random_email4 = "#{a}@getnada.com"
      write_in_file($random_email4) if type == :new
      write_in_file(@email4) if type == :old
      return $random_email4
    else
      return $random_email4
    end
  when :ie
    @email5 = ""
    if type.to_sym == :new
      a = "test.#{timestamp}"
      @email5 = a
      $random_email5 = "#{a}@getnada.com"
      write_in_file($random_email5) if type == :new
      write_in_file(@email5) if type == :old
      puts "Correo generado: '#{$random_email5}'"
      return $random_email5
    else
      return $random_email5
    end
  end

end

def write_in_file (email_to_write)
  @hashCreating = email_to_write
  puts "#{@hashCreating}".yellow
  @out_file = File.new("stock_email.txt","a")
  @out_file.write("#{@hashCreating}\n")
  @out_file.close
end

def name_random(type)
  if type.to_sym == :new
    #$random_name = "Fowcer.#{timestamp}"
    $random_name = "Fulanito.#{timestamp}"
  end
  $random_name
end

#Método para modificar el timeout, este se inicializa por primera vez en el drive
def set_new_timeout(to)
  Capybara.default_max_wait_time = to
end

#Método para resetear el timeout, este se inicializa por primera vez en el drive
def reset_default_timeout
  Capybara.default_max_wait_time = 10
end

#Metodo para validar si un elemento existe en la page
# @params
# * :find_by parametro de busqueda del elemento, por xpath/id/class
# * :element query de busqueda del elemento
def element_exists(find_by, element)
  result = false
  begin
    case find_by.to_s.downcase.strip
    when 'xpath' then
      element = find(:xpath, element, wait: 60)
      result = true
    when 'xpath_first' then
      element = first(:xpath, element, wait: 60)
      result = true
    when 'id'
      element = find("##{element}", wait: 60)
      result = true
    when 'class'
      element = find("#{element}", wait: 60)
      result = true
    when 'css_first'
      element = first(:css , "#{element}", wait: 60)
      result = true
    when 'span'
      element = find('span', text: element, wait: 60)
      result = true
    when 'h3'
      element = find('h3', text: element, wait: 60)
      result = true
    else
      Info.basic_error "generic::element_exists - Parámetro #{find_by} inválido"
    end
  rescue Capybara::ElementNotFound
    result = false
  rescue => exception
    #puts "element_exists => Exception al buscar el elemento #{element}" #\n #{exception.backtrace}"
    result = false
  end
  if !result
    #puts "element_exists => Elemento o vista no visible => #{element}"
  end
  return result
end

#Metodo para verificar si un elemento existe en pantalla y la visibilidad esperada 'visible/oculto'
# se envia un mensaje especifico de error, cuando no se cumple 'elemento existente' vs 'expected_visibility'
# @params
# * :find_by palabra reservada para seleccionar el tipo de busqueda: 'xpath, xpath_first, id, class'
# * :element cadena para buscar al elemento 'query, xpath, id'
# * :expected_visibility define el resultado esperado de la busqueda del elemento 'visible/hidden'
# * :action_result 'fail/verify' define la acciòn a realizar en caso de que el test sea fallido. 'assert' => falla el tc e imprime 'mjs_error', 'verify' => solo imprime 'mjs_error'
# * :mjs_error en caso de un error mensaje a mostrar en la consola
#   ejemplo: verify_element_in_page("xpath", $element, 'visible', 'fail' 'No se encontro el elemento')
def verify_element_in_page(find_by, element, expected_visibility, action_result, mjs_error)
  result = false
  begin
    case find_by.to_s.downcase.strip
    when 'xpath' then
      element = find(:xpath, element, wait: 10)
      Info.basic element.text.to_s
      result = true
    when 'xpath_first' then
      element = first(:xpath, element)
      Info.basic element.text.to_s
      result = true
    when 'id'
      element = find(:id, element, wait: 10)
      Info.basic element.text.to_s
      result = true
    when 'class'
      element = find(:css, element, wait: 10)
      Info.basic element.text.to_s
      result = true
    when 'css_first'
      first(:css , "#{element}", wait: 10)
      Info.basic element.text.to_s
      result = true
    else
      Info.basic_error "generic::verify_element_in_page - find_by #{find_by} inválido."
    end
  rescue Capybara::ElementNotFound
    result = false
  rescue => exception
    result = false
  end
  if result && expected_visibility.to_s.downcase.strip == 'hidden'
    result = false
    if action_result.to_s.downcase.strip == 'assert'
      raise mjs_error
    else
      Info.basic_error mjs_error
    end
  end
  if !result && expected_visibility.to_s.downcase.strip == 'visible'
    result = false
    #puts "no existe y visible => #{result}"
    if action_result.to_s.downcase.strip == 'assert'
      raise mjs_error
    else
      Info.basic_error mjs_error
    end
  end
  result
end

def shallow_tag(tag:, text:, wait: 10)
  find(tag, text: text, wait: wait)
  Info.basic "Elemento #{tag}::#{text} encontrado."
rescue
  Info.warning "Elemento #{tag}::#{text} no encontrado."
end

def shallow_match(by:, matcher:, wait: 10)
  find(by, matcher, wait: wait)
  Info.basic "Elemento #{by}::#{matcher} encontrado."
rescue
  Info.warning "Elemento #{by}::#{matcher} no encontrado."
end

def shallow_find(tag: nil, text: nil, by: nil, matcher: nil, wait: 10)
  if (tag.nil? && !text.nil?) || (!tag.nil? && text.nil?)
    raise 'Se requieren ambos parámetros: tag: y text:'
  elsif !tag.nil? && !text.nil?
    begin
      find(tag, text: text, wait: wait)
    rescue
      Info.basic_error "Elemento no encontrado por #{tag}::#{text}."
    end
  end

  if (by.nil? && !matcher.nil?) || (!by.nil? && matcher.nil?)
    raise 'Se requieren ambos parámetros: by: y matcher:'
  elsif !by.nil? && !matcher.nil?
    begin
      find(by, matcher, wait: wait)
    rescue
      Info.basic_error "Elemento no encontrado por #{by}::#{matcher}."
    end
  end
end

#Método que espera que exista un elemento
# @params
# * :find_by parametro de busqueda del elemento, por xpath/id/class
# * :element query de busqueda del elemento
# * :timeout tiempo máximo de espera
def wait_for_element_exist(find_by, element, timeout)
  result = false
  for i in 0..timeout.to_i
    #puts "wait_for_element_exist"
    if element_exists(find_by, element)
      result = true
      break
    end
  end
  unless result
    fail(mjs="wait_for_element_exist => TimeOut al buscar: #{element}")
  end
  return result
end

# Método para pasar siempre el xpath de un text o label, es solo para simplificar los textos
# @params
#   :text_option  aqui pasamos el texto del label, se le pasa la variable con el label que se declara en los datas
def qry_element_xpath(text_option)
  return "//*[contains(text(),'#{text_option}')]"
end


#Método para Limpiar la cache del browser
def clear_cache
  if $brow.to_s.downcase.strip == 'mozilla'
    #|| $brow.to_s.downcase.strip == 'safari'
    page.execute_script('if (localStorage && localStorage.clear) localStorage.clear()')
    #page.execute_script('window.localStorage.clear;')
  else
    page.execute_script('window.localStorage.clear;')
  end
  if $brow.to_s.downcase.strip == 'safari' || $brow.to_s.downcase.strip == 'edge'
    page.driver.quit
  end
  Info.basic 'Clear Cache'

end

#Método que obtiene el pais para la url de ejecucion en jmeter
def get_country_name
  case $country.to_s.downcase.strip
    when 'mx'
      return 'mexico'
    when 'co'
      return 'colombia'
    when 'ar'
      return 'argentina'
    when 'br'
      return 'brasil'
    when 'cl'
      return 'chile'
    when 'cr'
      return 'costarica'
    when 'do'
      return 'dominicana'
    when 'ecuador'
      return 'ec'
    when 'sv'
      return 'elsalvador'
    when 'gt'
      return 'guatemala'
    when 'hn'
      return 'honduras'
    when 'ni'
      return 'nicaragua'
    when 'pa'
      return 'panama'
    when 'py'
      return 'paraguay'
    when 'pe'
      return 'peru'
    when 'uy'
      return 'uruguay'
    else raise("jmeter => get_country_name => pais invalido")
  end
end

def maximize_browser
  if $width == nil
    $width = page.execute_script('return screen.width;')
    $height = page.execute_script('return screen.height;')
  end
  page.driver.browser.manage.window.resize_to($width,$height)
end


def return_cookie_hks
  browser = Capybara.current_session.driver.browser.manage
  @cookie = browser.cookie_named("PHPSESSID")[:value]
  puts "Valor de HKS: #{@cookie}"

  $path_csv_cookie = File.join(File.dirname(__FILE__), '../global/config/jmeter/telcel/')
  $file_csv_jmeter_clear_device = "hks_user_telcel.csv"
  FileUtils::mkdir_p $path_csv_cookie unless Dir.exist? $path_csv_cookie

    CSV.open("#{$path_csv_cookie}#{$file_csv_jmeter_clear_device}", "w+") do |csv|
          csv << [@cookie]
    end
end
