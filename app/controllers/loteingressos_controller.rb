class LoteingressosController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:loteingresso, {}).permit( :preco ,:quantidade, :evento_id)]
    end
end
