class UsuarioApi < ActionWebService::API::Base
  api_method :consulta, :expects => [{:uuid=>:string},{:cpf=>:string}],
   :returns => [{:cpf=>:string,:nome=>:string}]

end