# By using the symbol ':user', we get Factory Girl to simulate the User model.

Factory.define :user do |user|
  user.name						"Colm Morgan"
  user.email					"colm.a.morgan@gmail.com"	
  user.password					"foobar123"
  user.password_confirmation	"foobar123"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end
