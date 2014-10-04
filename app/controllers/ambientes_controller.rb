class AmbientesController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:ambiente, {}).permit( :nome, :capacidade, :endereco, :complemento,
                      :numero, :bairro, :cidade, :estado, :cep)]
    end
end
