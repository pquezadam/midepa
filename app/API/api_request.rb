require 'rubygems'
require 'httparty'

class MindicadorRest
    include httparty
    base_uri 'https://mindicador.cl/api/%7Btipo_indicador%7D/%7Bdd-mm-yyyy%7D'

    def Btipo_indicador
        self.class.get('/Btipo_indicador')
    end
end

mindicador_rest = MindicadorRest.new
puts mindicador_rest.Btipo_indicador