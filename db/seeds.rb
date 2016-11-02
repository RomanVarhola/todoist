(1..5).each do |i|
  user = User.create(name: "User0#{i}", email: "user0#{i}@email.com", password: 'secret')
end
  
(1..5).each do |j|
  task = Task.create(title: "Task#{j}",
                       description: "#Description#{j}")
end