user = {
  user: {
    attributes: {
      first_name: 'john',
      last_name: 'doe'
    },
    address: {
      street: '123 fake street',
      city: 'atlanta',
      state: 'georgia',
      postal_code: '12345',
      location: {
        latitude: 33.748527, 
        longitude: -84.386635
      }
    }
  }
}

user[:user] && user[:user][:address] && user[:user][:address][:street]

user.dig(:user, :address, :street)
user.dig(:user, :address).fetch(:street)
puts user.dig(:user, :address).fetch(:postal_code, 'None Provided')