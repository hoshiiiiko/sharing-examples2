User.create(email: 'tanaka@test.com', name: '田中', employee_number: 1000, password: 'password')
User.create(email: 'satou@test.com', name: '佐藤', employee_number: 1001, password: 'password')
User.create(email: 'oba@test.com', name: '大庭', employee_number: 1002, password: 'password')
User.create(email: 'suzuki@test.com', name: '鈴木', employee_number: 1003, password: 'password')
User.create(email: 'inoue@test.com', name: '井上', employee_number: 1004, password: 'password')AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?