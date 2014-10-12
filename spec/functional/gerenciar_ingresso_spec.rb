# coding: utf-8

require 'rails_helper'

feature 'gerenciar Ingresso' do

    before :each do
        create(:cliente, nome:'Cliente 1', data_nascimento: '20/05/2014', cpf: 'Cpf',email:'Email', senha: 'Senha' )
        create(:empresa, nome: 'Show LTDA',cnpj:'CNPJ', endereco: 'Endereço',
            complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
            estado: 'Estado', cep: 'CEP')
        create(:ambiente, nome:'Ilha Azul',capacidade:'20', endereco:'Endereço',
            complemento:'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
            estado: 'Estado', cep: 'CEP')
        create(:evento, nome:'Banda ao vivo', categoria: 'Categoria', data: '20/05/2014', hora:'20:00',
             ambiente: ambiente , empresa: empresa, descricao: 'Descrição')
        create(:loteingresso, numero_lote: '1', preco: '20.0', quantidade: '10', evento: evento)

    end

    let(:cliente){create(:cliente,nome:'Cliente 2', data_nascimento: '20/05/2014', cpf: 'Cpf',email:'Email', senha: 'Senha' )}

    let(:empresa) {create(:empresa, nome: 'Show SA 2', cnpj:'CNPJ', endereco: 'Endereço',
        complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
        estado: 'Estado', cep: 'CEP')}
    let(:ambiente) {create(:ambiente, nome: 'Ilha Verde 2',capacidade:'20', endereco: 'Endereço', 
        complemento: 'Complemento', numero: '1', bairro: 'Bairro', cidade: 'Cidade',
        estado: 'Estado', cep: 'CEP')}
    let(:evento){create(:evento,nome:'Banda rock ', categoria: 'Categoria', data: '20/05/2014', hora:'20:00',
        ambiente: ambiente , empresa: empresa, descricao: 'Descrição')}
    let(:loteingresso){create(:loteingresso, numero_lote: '2',preco: '20.0', quantidade: '10', evento: evento )}

    scenario 'incluir Ingresso' do # , :js => true  do

        visit new_ingresso_path

        preencher_e_verificar_ingresso
    end

    scenario 'alterar Ingresso' do #, :js => true  do

        ingresso = FactoryGirl.create(:ingresso, :cliente => cliente, :loteingresso => loteingresso)

        visit edit_ingresso_path(ingresso)

        preencher_e_verificar_ingresso
    end

    scenario 'excluir Ingresso' do #, :javascript => true  do

        ingresso = FactoryGirl.create(:ingresso, :cliente => cliente, :loteingresso => loteingresso)

        visit ingressos_path

        click_link 'Excluir'
    end

    def preencher_e_verificar_ingresso

        fill_in 'Cadeira Númerada', :with => "12"
        fill_in 'Área',  :with => "VIP"
        select 'Cliente 1', from: "Cliente"
        select '1', from: "Lote Ingresso"


        click_button 'Salvar'

        expect(page).to have_content 'Cadeira Númerada: 12'
        expect(page).to have_content 'Área: VIP'
        expect(page).to have_content 'Cliente: Cliente 1'
        expect(page).to have_content 'Lote Ingresso: 1'
    end
end