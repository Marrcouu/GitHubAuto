
require 'fileutils'
require 'capybara'
require_relative '../helpers/utils'
require_relative '../helpers/data_users'
require_relative '../helpers/Info'

# Evidence Handler class. Saves evidences with specific names.
class Evidence
  extend Capybara::DSL

  @current_scenario = nil
  @feature_name = nil
  @scenario_name = nil
  @scenario_directory = nil
  @execution_date = nil
  @execution_time = nil
  @counter = 0

  class << self
    def set(scenario)
      Info.basic scenario
      Info.basic scenario.feature.name
      Info.basic scenario.name
      @current_scenario = scenario
      @feature_name = scenario.feature.name
      @scenario_name = scenario.name.split('(TC')[0]
      @execution_date = Time.now.strftime('%F')
      @execution_time = Time.now.strftime('%H_%M_%S') if @execution_time.nil?
      @scenario_directory = "evidence/#{@execution_date}/#{Utils.environment}/#{Utils.browser}/#{Utils.country}/#{Utils.tag}/#{@feature_name}/#{@execution_time}/#{@scenario_name}"
    end

    def reset_scenario
      Info.basic 'Reiniciando escenario.'
      @current_scenario = nil
      @execution_time = nil
    end

    def reset_counter
      Info.basic 'Reiniciando counter.'
      @counter = 0
    end

    def save(filename)
      raise 'No se ha establecido un escenario' if @current_scenario.nil?
      FileUtils::mkdir_p @scenario_directory unless Dir.exist? @scenario_directory
      save_screenshot "#{@scenario_directory}/#{@counter.to_s.rjust(2,'0')}_#{filename.tr(' ', '_')}.png"
      Info.basic 'Se guardó correctamente la evidencia'
      @counter += 1
    rescue
      Info.error 'Error al guardar la captura de pantalla.'
      raise
    end

    def save_error(filename)
      raise 'No se ha establecido un escenario' if @current_scenario.nil?
      FileUtils::mkdir_p @scenario_directory unless Dir.exist? @scenario_directory
      save_screenshot "#{@scenario_directory}/#{@counter.to_s.rjust(2,'0')}_fail_#{filename.tr(' ', '_')}.png"
      Info.basic 'Se guardó correctamente la evidencia'
    rescue
      Info.error 'Error al guardar la captura de pantalla.'
      raise
    end

  end
end