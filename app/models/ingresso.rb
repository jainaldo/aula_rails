class Ingresso < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :loteingresso
end
