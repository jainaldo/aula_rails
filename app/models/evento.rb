class Evento < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :ambiente
end
