employee = Employee.create(first_name: 'taro', family_name: 'rails')

%w(company office_address).each do |text|
  employee.pictures.create(title: text, body: "#{text}'s body")
end

3.times{|i| Product.create(title: "Rails app#{i}")}

Product.all.each do |product|
  product.pictures.create(title: product.title, body: "#{product.title}'s body")
end

