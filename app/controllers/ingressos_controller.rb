class IngressosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:ingresso, {}).permit(:cadeira_numerada, :area ,:cliente_id, :loteingresso_id)]
    end
end
