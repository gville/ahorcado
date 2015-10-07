Given(/^la palabra secreta 'CIRCO'$/) do
	visit '/'
end

When(/^que tiene (\d+) letras$/) do |arg1|

end

Then(/^debo ver '_ _ _ _ _'$/) do
	last_response.body.should =~ /_ _ _ _ _/m
end

