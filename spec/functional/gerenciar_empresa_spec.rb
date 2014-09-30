# coding: utf-8

require 'rails_helper'

feature 'gerenciar Empresa' do

    scenario 'incluir Empresa' do #, :js => true  do

        visit new_empresa_path

        preencher_e_verificar_empresa
    end

    scenario 'alterar Empresa' do#, :js => true  do

        empresa = FactoryGirl.create(:empresa)

        visit edit_empresa_path(empresa)

        preencher_e_verificar_empresa
    end

    scenario 'excluir empresa' do #, :js => true do

        empresa = FactoryGirl.create(:empresa)

        visit empresas_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_empresa

        fill_in 'CNPJ',  :with => "CNPJ"
        fill_in 'Nome', :with => "Empresa"
        fill_in 'Endereço',  :with => "Endereço"
        fill_in 'Complemento',  :with => "Complemento"
        fill_in 'Número', :with => "1"
        fill_in 'Bairro',  :with => "Bairro"
        fill_in 'Cidade',  :with => "Cidade"
        fill_in 'Estado',  :with => "Estado"
        fill_in 'CEP',  :with => "CEP"

        click_button 'Salvar'

        expect(page).to have_content 'CNPJ: CNPJ'
        expect(page).to have_content 'Nome: Empresa'
        expect(page).to have_content 'Endereço: Endereço'
        expect(page).to have_content 'Complemento: Complemento'
        expect(page).to have_content 'Número: 1'
        expect(page).to have_content 'Bairro: Bairro'
        expect(page).to have_content 'Cidade: Cidade'
        expect(page).to have_content 'Estado: Estado'
        expect(page).to have_content 'CEP: CEP'
    end
end