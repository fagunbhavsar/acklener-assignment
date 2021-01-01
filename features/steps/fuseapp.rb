Given("I open quick fuse app link") do
  visit(FuseappPage)
end

Then("I click on Create an app button") do
  on(FuseappPage).open_app_page
end

Then("I see a popup") do
  on(EditFuseappPage).view_pop_up
end

Then("I click on Let's get started button") do
  on(EditFuseappPage).get_started
end

Then("I see application panel") do
  is_app_panel_visible = on(EditFuseappPage).see_app_panel
  expect(is_app_panel_visible).to eq(true)
end

#Then("I see Basic tab is opened with following sections on left hand side column") do |table|

#end

Then("I see Messaging tab on left hand side column") do
   is_messaging_tab_visible = on(EditFuseappPage).view_messaging_tab
   expect(is_messaging_tab_visible).to eq(true)
end

Then("I click on Messaging tab") do
   on(EditFuseappPage).click_messaging_tab
end

#Then("I see following sections") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
#end

Then("I see Start module on application panel") do
  is_start_module_visible = on(EditFuseappPage).view_start_module
  expect(is_start_module_visible).to eq(true)
end

Then("I click on New page button") do
  on(EditFuseappPage).add_page
end

Then("I see New Page popup") do
  pop_up = on(EditFuseappPage).see_newpage_popup
  expect(pop_up).to eq(true)
end

Then("I enter an app name") do
  #require "pry"; binding.pry
  on(EditFuseappPage).enter_new_name(@data["app_name"])
end

Then("I drag Send an SMS module to application panel") do
  on(EditFuseappPage).module_send_n_sms
end

Then("I see Sent and Not Sent ports") do
  on(EditFuseappPage).sms_module_ports
end

Then("I connect Start and Send an SMS modules") do
   on(EditFuseappPage).connect_sms_module
end

Then("I enter a contact number") do
  #require "pry" ; binding.pry
  on(EditFuseappPage).set_phone_number(@data["phone_number"])
end

Then("I enter an app message") do
  on(EditFuseappPage).set_message_text(@data["app_message"])
end

Then("I drag another component Send an Email to application panel") do
  on(EditFuseappPage).module_send_an_email
end

And("I enter a host name") do
  on(EditFuseappPage).set_host_name(@data["app_host"])
end

And("I enter a port number") do
  on(EditFuseappPage).set_port_number(@data["port_number"])
end

And("I enter a user name") do
  on(EditFuseappPage).set_user_email(@data["app_user"])
end

And("I enter a password") do
  on(EditFuseappPage).set_enter_password(@data["app_password"])
end

And("I enter From address") do
  on(EditFuseappPage).set_from_address(@data["frm_address"])
end

And("I enter To address") do
  on(EditFuseappPage).set_to_address(@data["to_address"])
end

And("I enter a mail subject") do
  on(EditFuseappPage).set_enter_subject(@data["mail_subject"])
end

And("I enter a text message") do
  on(EditFuseappPage).set_enter_msg(@data["text_message"])
end

Then("I join Send an SMS component from Not Sent port to Send an Email component") do
  on(EditFuseappPage).connect_email_module
end

Then("I click on Basic tab") do
  on(EditFuseappPage).click_basic_tab
end

Then("I drag Hang Up or Exit component to application panel") do
  on(EditFuseappPage).hang_up_module
end

Then("I join Hang Up or Exit component from Sent port to Send an SMS component") do
  on(EditFuseappPage).connect_hang_up_sms_module
end

Then("I drag second Hang up or Exit component to application panel") do
  on(EditFuseappPage).second_hang_up_module
end

Then("I join Hang Up or Exit component from Not Sent port to Send an Email component") do
  on(EditFuseappPage).connect_hang_up_to_not_sent_email_module
end

Then("I drag third Hang up or Exit component to application panel") do
  on(EditFuseappPage).third_hang_up_module
end

Then("I join Hang Up or Exit component from Sent port to Send an Email Component") do
  on(EditFuseappPage).connect_hang_up_to_sent_email_module
end


And(/^I see Basic tab is opened with different sections on left hand side column$/) do
  # table is a table.hashes.keys # => [:Hang Up or Exit]
  actual = on(EditFuseappPage).view_basic_tab_details
  expected = @data["basic_tab"]
end