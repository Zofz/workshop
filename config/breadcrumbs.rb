crumb :root do
  link("Startsida", root_path)
end

crumb :customer do |customer|
  link(customer, customer)
  parent :customers
end

crumb :customers do |customer|
  link("Alla kunder", customers_path)
end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
