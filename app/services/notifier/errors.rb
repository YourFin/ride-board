module Notifier
  attr_reader :message, :wrapped_exception

  # Meant to be caught and handled
  class NotifierError < StandardError
    def init(message, wrapped_exception = nil)
      @message = message
      @wrapped_exception = wrapped_exception
    end

  end

  # Should crash
  class NotifierException < Exception
  end

  class InvalidStateException < NotifierException
  end
  class AuthError < NotifierError
  end
  class ThrottledError < NotifierError
  end
  class MalformedRequestException < NotifierException
  end

  # These should generally be retried
  class ExternalServiceError < NotifierError
  end
end
