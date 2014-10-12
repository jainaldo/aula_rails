class LoteingressosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:loteingresso, {}).permit(:numero_lote, :preco ,:quantidade, :evento_id)]
    end
end
