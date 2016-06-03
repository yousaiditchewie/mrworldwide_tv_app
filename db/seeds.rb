User.delete_all
# user = User.new password: "abc123", password_confirmation: "abc123"
# user.save


pj = User.new(
  email: "abc@123.com",
  password: "abc123",
  password_confirmation: "abc123"
  )
pj.save

ez = User.new(
email: "ez@123.com",
password: "abc123",
password_confirmation: "abc123",
handle: "ezrazilla",
profile_url: "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/6752/thumb_harsh_ez.jpg",
statement: "we the people, in order to form a more prefect union"
)
ez.save

puts ez.errors.full_messages
puts pj.errors.full_messages
