namespace :cleanup do
  desc "cleanup sessions (sessions from last month are left)"
  task :sessions => :environment do
    puts "\e[1;33mDeleting old sessions\e[0m"
    sql = <<-SQL
      DELETE FROM sessions
      WHERE updated_at < date('#{(Time.now.months_ago 1).strftime("%y-%m-%d %H:%M:%S")}');;
    SQL
    ActiveRecord::Base.establish_connection
    ActiveRecord::Base.connection.execute(sql)
    puts "\e[1;32mOld sessions were deleted\e[0m"
  end
end