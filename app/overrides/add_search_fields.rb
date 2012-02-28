 Deface::Override.new(:virtual_path => "spree/admin/orders/index", 
                      :name => "add_admin_search_fields", 
                      :insert_before => "[data-hook='admin_orders_index_search_buttons']", 
                      :text => %q|
                      <p>
                        <%= label_tag nil, t(:shipping) + " " + t(:first_name_begins_with) %><br />
                        <%= f.text_field :ship_address_firstname_starts_with, :size => 25 %>
                      </p>
                      <p>
                        <%= label_tag nil, t(:shipping) + " " + t(:last_name_begins_with) %><br />
                        <%= f.text_field :ship_address_lastname_starts_with, :size => 25 %>
                      </p>
|)

