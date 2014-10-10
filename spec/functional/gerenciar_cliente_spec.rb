# coding: utf-8

require 'rails_helper'

feature 'gerenciar Cliente' do

    scenario 'incluir Cliente' do #, :js => true  do

        visit new_cliente_path

        preencher_e_verificar_cliente
    end

    scenario 'alterar Cliente' do#, :js => true  do

        cliente = FactoryGirl.create(:cliente)

        visit edit_cliente_path(cliente)

        preencher_e_verificar_cliente
    end

    scenario 'excluir Cliente' do #, :js => true do

        cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_cliente

        fill_in 'Nome', :with => "Cliente"
        fill_in 'Data Nascimento', :with => "20/05/2014"
        fill_in 'CPF',  :with => "CPF"
        fill_in 'Email',  :with => "Email"
        fill_in 'Senha', :with => "Senha"

        click_button 'Salvar'

        expect(page).to have_content 'Nome: Cliente'
        expect(page).to have_content 'Data Nascimento: 2014-05-20'
        expect(page).to have_content 'CPF: CPF'
        expect(page).to have_content 'Email: Email'
        expect(page).to have_content 'Senha: Senha'

    end
end