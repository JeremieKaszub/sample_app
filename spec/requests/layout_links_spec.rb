require 'spec_helper'

describe "LayoutLinks" do

	it "devrait trouver une page Accueil a '/'" do
		get '/'
		response.should have_selector('title', :content => "Accueil")
	end

	it "devrait trouver une page Contact a '/contact'" do
		get '/contact'
		response.should have_selector('title', :content => "Contact")
	end

	it "devrait trouver une page A Propos a '/about'" do
		get '/about'
		response.should have_selector('title', :content => "A Propos")
	end

	it "devrait trouver une page Aide a '/help'" do
		get '/help'
		response.should have_selector('title', :content => "Aide")
	end

	it "devrait trouver une page Inscription a '/signup'" do
		get '/signup'
		response.should have_selector('title', :content => "Inscription")
	end

	it "devrait y avoir les bons liens sur le layout" do
		visit root_path
		click_link "A Propos"
		response.should have_selector('title', :content => "A Propos")
		click_link "Aide"
		response.should have_selector('title', :content => "Aide")
		click_link "Contact"
		response.should have_selector('title', :content => "Contact")
		click_link "Accueil"
		response.should have_selector('title', :content => "Accueil")
		click_link "S'inscrire!"
		response.should have_selector('title', :content => "Inscription")
	end
end
