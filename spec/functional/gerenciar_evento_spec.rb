# coding: utf-8

require 'rails_helper'

feature 'gerenciar Evento' do

    before :each do
        create(:empresa, nome: 'Show LTDA',cnpj:'CNPJ', endereco: 'Endereço',
            complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
            estado: 'Estado', cep: 'CEP')
        create(:ambiente, nome:'Ilha Azul',capacidade:'20', endereco:'Endereço',
            complemento:'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
            estado: 'Estado', cep: 'CEP')
    end

    let(:empresa) {create(:empresa, nome: 'Show SA', cnpj:'CNPJ', endereco: 'Endereço',
        complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
        estado: 'Estado', cep: 'CEP')}
    let(:ambiente) {create(:ambiente, nome: 'Ilha Verde',capacidade:'20', endereco: 'Endereço', 
        complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
        estado: 'Estado', cep: 'CEP')}

    scenario 'incluir Evento' do # , :js => true  do

        visit new_evento_path

        preencher_e_verificar_evento
    end

    scenario 'alterar Evento' do #, :js => true  do

        evento = FactoryGirl.create(:evento,:ambiente => ambiente, :empresa => empresa)

        visit edit_evento_path(evento)

        preencher_e_verificar_evento
    end

    scenario 'excluir Evento' do #, :javascript => true  do

        evento = FactoryGirl.create(:evento,:ambiente => ambiente, :empresa => empresa)

        visit eventos_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_evento

        fill_in 'Categoria',  :with => "Categoria"
        fill_in 'Data', :with => "20/05/2014"
        fill_in 'Hora', :with => "20:00"
        select 'Ilha Azul', from: "Ambiente"
        select 'Show LTDA', from: "Empresa"
        fill_in 'Descrição', :with => "Descrição"

        click_button 'Salvar'

        expect(page).to have_content 'Categoria: Categoria'
        expect(page).to have_content 'Data: 2014-05-20'
        expect(page).to have_content 'Hora: 20:00'
        expect(page).to have_content 'Ambiente: Ilha Azul'
        expect(page).to have_content 'Empresa: Show LTDA'
        expect(page).to have_content 'Descrição: Descrição'
    end
end