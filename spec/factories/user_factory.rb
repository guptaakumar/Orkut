Factory.define :user_admin, :class => User do |u|
  u.username 'admin'
  u.email  'admin@admin.net'
  u.password 'admin'
  u.password_confirmation 'admin'
end

Factory.define :user_a, :class => User do |u|
  u.username 'user_a'
  u.email  'usera@admin.net'
  u.password 'usera'
  u.password_confirmation 'usera'
end

Factory.define :user_b, :class => User do |u|
  u.username 'user_b'
  u.email  'userb@admin.net'
  u.password 'userb'
  u.password_confirmation 'userb'
end
