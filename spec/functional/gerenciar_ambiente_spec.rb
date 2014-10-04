# coding: utf-8

require 'rails_helper'

feature 'gerenciar Ambiente' do

    scenario 'incluir Ambiente' do #, :js => true  do

        visit new_ambiente_path

        preencher_e_verificar_ambiente
    end

    scenario 'alterar Ambiente' do#, :js => true  do

        ambiente = FactoryGirl.create(:ambiente)

        visit edit_ambiente_path(ambiente)

        preencher_e_verificar_ambiente
    end

    scenario 'excluir Ambiente' do #, :js => true do

        ambiente = FactoryGirl.create(:ambiente)

        visit ambientes_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_ambiente

        fill_in 'Nome', :with => "Ambiente"
        fill_in 'Capacidade', :with => "20"
        fill_in 'Endereço',  :with => "Endereço"
        fill_in 'Complemento',  :with => "Complemento"
        fill_in 'Número', :with => "1"
        fill_in 'Bairro',  :with => "Bairro"
        fill_in 'Cidade',  :with => "Cidade"
        fill_in 'Estado',  :with => "Estado"
        fill_in 'CEP',  :with => "CEP"

        click_button 'Salvar'

        expect(page).to have_content 'Nome: Ambiente'
        expect(page).to have_content 'Capacidade: 20'
        expect(page).to have_content 'Endereço: Endereço'
        expect(page).to have_content 'Complemento: Complemento'
        expect(page).to have_content 'Número: 1'
        expect(page).to have_content 'Bairro: Bairro'
        expect(page).to have_content 'Cidade: Cidade'
        expect(page).to have_content 'Estado: Estado'
        expect(page).to have_content 'CEP: CEP'
    end
end