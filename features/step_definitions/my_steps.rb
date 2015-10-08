Given(/^la palabra secreta 'CIRCO'$/) do
	visit '/'
end

Then(/^debo ver '_ _ _ _ _'$/) do
	last_response.body.should =~ /_ _ _ _ _/m
end

Given(/^que el usuario debe ingresar letra$/) do
	visit '/'
end

When(/^recorre la palabra CIRCO buscando la letra "(.*?)"$/) do |ltr|
	fill_in("letra", :with => ltr)
	click_button "Ingresar"
end

Then(/^debo ver 'LETRA NO ES COINCIDENTE'$/) do
	texto = 'LETRA NO ES COINCIDENTE'
	last_response.body.should =~ /#{texto}/m
end

