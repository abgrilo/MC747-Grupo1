#require 'actionwebservice'
class UsuarioController < ActionController::Base
  web_service_scaffold :invocation
  web_service_api UsuarioApi
  
  def consulta(uuid,cpf)
    u = Usuario.find_by_cpf(cpf)
    return {:cpf=>u.cpf,:nome=>u.nome}
  end
end