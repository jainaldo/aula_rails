class EmpresasController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:empresa, {}).permit( :cnpj,:nome, :endereco, :complemento,
                      :numero, :bairro, :cidade, :estado, :cep)]
    end
end
