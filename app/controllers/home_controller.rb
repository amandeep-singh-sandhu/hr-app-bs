# frozen_string_literal: true

# Home page of the Application
class HomeController < ApplicationController
  def index
    @page_title = 'Hello World!'
    @page_description = 'I am learning Rails!'
  end
end
