class EventosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:evento, {}).permit( :categoria,:data, :hora, :empresa_id,
                      :ambiente_id, :descricao)]
    end
end