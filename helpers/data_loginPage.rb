class DataLoginPage

  @hash_inputs = { #Arreglo de objetos input
    :number => {typeFind:'id',label:'identifier',method:'find'},
    :email => {typeFind:'id',label:'username',method:'find'},
    :password => {typeFind:'id',label:'password',method:'find'},
    :recovery => {typeFind:'id',label:'email',method:'find'}
  }

  class << self

    def input_selector
      @hash_inputs
    end

  end
end