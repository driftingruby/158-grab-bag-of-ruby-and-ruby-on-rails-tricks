class User < ApplicationRecord

  # FIXME camel casing is inconsistent with the rest of app
  def fullName
    "#{first_name} #{last_name}"
  end

  # OPTIMIZE for some reason this method is slow
  def slow_query
    sleep 30
  end
end
