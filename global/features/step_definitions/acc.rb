require_relative "../pages/GenerateAcc"

When(/^I generate a account of "([^"]*)" of "([^"]*)"/)do |acc,part|
  case part.to_sym
  when :'claro drive'

  when :'claro video'
      GenerateAcc.generate_acc(acc, part)
  when :'claro musica'

  end

end