# promolta_backend
dependency:
	ruby
	rails
	bundler

commands to run: 
1. 'bundle install'
2. change mysql root password in config/database.yml
3. 'rake db:create'
4. 'rake db:migrate' or use mysqldump given in root directory with name promolta_development.sql (mysql -u root -p promolta_development < promolta_development.sql)
5. 'rails s -p 4000'

don't forget to migrate the mysql data
