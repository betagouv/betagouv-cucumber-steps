# frozen_string_literal: true

require "capybara/cucumber"
require "capybara/rspec"
require "rack"
require "betagouv/cucumber/steps"

# Simple Rack app to serve our test HTML files
class TestApp
  def initialize
    @fixture_path = File.expand_path("../fixtures", __dir__)
  end

  def call(env)
    request = Rack::Request.new(env)
    path = request.path_info

    # Route mapping
    case path
    when "/"
      serve_file("home.html")
    when "/users"
      serve_file("users.html")
    when "/users/new"
      serve_file("new_user.html")
    when "/users/1/edit", "/users/2/edit"
      # Redirect to new user form for simplicity
      [302, { "Location" => "/users/new" }, [""]]
    else
      [404, { "Content-Type" => "text/plain" }, ["Not Found"]]
    end
  end

  private

  def serve_file(filename)
    file_path = File.join(@fixture_path, filename)
    if File.exist?(file_path)
      content = File.read(file_path)
      [200, { "Content-Type" => "text/html" }, [content]]
    else
      [404, { "Content-Type" => "text/plain" }, ["File not found"]]
    end
  end
end

# Configure Capybara
Capybara.app = TestApp.new
Capybara.default_driver = :rack_test

# Custom step for our test setup
Étantdonnéque("je visite l'application de test") do
  # This step just confirms we're ready to test
  visit "/"
end
