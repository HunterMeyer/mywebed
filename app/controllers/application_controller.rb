class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def error_message(object)
    errors = object.errors.full_messages.to_sentence
    "Something went wrong: #{errors}"
  end
end
