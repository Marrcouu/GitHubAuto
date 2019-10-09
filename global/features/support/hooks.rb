require 'yaml'
#require 'capybara/poltergeist'
require 'selenium-webdriver'
require_relative '../../../helpers/paths_env.rb'
require_relative '../../../helpers/generic.rb'
#require_relative '../../../helpers/results.rb'
#require_relative '../../../helpers/test_iterator.rb'
require_relative '../../../helpers/Info'
require_relative '../../../helpers/evidence_handler'

configs = YAML.load(File.read("../global/config/cucumber.yml"))
$brow = ENV["BROWSER"]

Before do |scenario|
  Capybara.reset_sessions!
  $feature_name = scenario.feature.name
  $scenario_name = scenario.name
  # maximizar browser
  if $brow.to_s.downcase.strip == 'safari'||$brow.to_s.downcase.strip == 'edge'||$brow.to_s.downcase.strip == 'ie'
    #puts $brow
    page.driver.browser.manage.window.maximize
  else
   # $driver
   # page.driver.browser.manage.window.maximize
  end
  Info.set_level(:medium)
  DataLabels.load_data
  Evidence.set scenario
end

After do |scenario|
  Info.warning scenario.passed?
  if scenario.passed?
    Info.basic 'Estableciendo contador en 0.'
    Evidence.reset_counter
  else
    #Evidence.save_error scenario.name
    puts "Error al realizar el paso Scenario anterior"
  end

  save_evidence(scenario)
  #Limpia la cache del browser
  clear_cache
  #Setea los valores para el csv de resultado de los testcase
  #set_testcase_result(scenario)
end

AfterStep do |result, step|
  #Evidence.save step.text
end

AfterConfiguration do |config|
  Info.basic "AFTER CONFIG #{config.feature_dirs}"
  #set_execution
end

at_exit do
  Info.basic 'AT EXIT'
  #Crea CSV de resultados de testcase
  #create_csv_results

  #@execution_iterator = get_test_iterator
  #set_next_execution(@execution_iterator)
  #@execution_iterator = get_test_iterator
  #puts "AT EXIT => run test execution => #{@execution_iterator}"
  #if @execution_iterator[0][0].to_s.to_i <= $rerun.to_s.to_i

  #end
end