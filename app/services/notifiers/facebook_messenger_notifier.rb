module Notifiers
  class FacebookMessengerNotifier < NotifierBase
    # user: a user model
    # message: string
    def log_message(user, message)
      raise NotImelmentedError
    end

    def real_message(user, message)
      raise NotImelmentedError
    end
  end
end