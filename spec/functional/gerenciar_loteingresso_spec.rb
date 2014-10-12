# coding: utf-8

require 'rails_helper'

feature 'gerenciar Lote Ingresso' do

    before :each do
        create(:empresa, nome: 'Show LTDA',cnpj:'CNPJ', endereco: 'Endereço',
           complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
           estado: 'Estado', cep: 'CEP')
        create(:ambiente, nome:'Ilha Azul',capacidade:'20', endereco:'Endereço',
           complemento:'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
          estado: 'Estado', cep: 'CEP')
        create(:evento, nome: 'Banda ao vivo', categoria: 'Teatro', data:'20/05/2014', hora: '20:00',
            descricao:'Descrição do loteingresso', ambiente: ambiente, empresa: empresa)
    end

    let(:empresa) {create(:empresa, nome: 'Show SA', cnpj:'CNPJ', endereco: 'Endereço',
        complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
        estado: 'Estado', cep: 'CEP')}
    let(:ambiente) {create(:ambiente, nome: 'Ilha Verde',capacidade:'20', endereco: 'Endereço', 
        complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
        estado: 'Estado', cep: 'CEP')}
    let(:evento){create(:evento, nome: 'Mercenarios',categoria: 'Cinema', data:'21/05/2014', hora: '20:00',
            descricao:'Descrição do loteinngresso', ambiente: ambiente, empresa: empresa)}

    scenario 'incluir Lote Ingresso' do # , :js => true  do

        visit new_loteingresso_path

        preencher_e_verificar_loteingresso
    end

    scenario 'alterar Lote Ingresso' do #, :js => true  do

        loteingresso = FactoryGirl.create(:loteingresso,:evento => evento)

        visit edit_loteingresso_path(loteingresso)

        preencher_e_verificar_loteingresso
    end

    scenario 'excluir Lote Ingresso' do #, :javascript => true  do

        loteingresso = FactoryGirl.create(:loteingresso,:evento => evento)

        visit loteingressos_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_loteingresso

        fill_in 'Número Lote', :with => "1"
        fill_in 'Preço',  :with => "20.0"
        fill_in 'Quantidade', :with => "10"
        select 'Banda ao vivo', from: "Evento"

        click_button 'Salvar'

        expect(page).to have_content 'Número Lote: 1'
        expect(page).to have_content 'Preço: 20.0'
        expect(page).to have_content 'Quantidade: 10'
        expect(page).to have_content 'Evento: Banda ao vivo'
    end
end