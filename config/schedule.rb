# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every 12.hours do
  rake "alexa_skills_crawler:business_and_finance"
  rake "alexa_skills_crawler:connected_car"
  rake "alexa_skills_crawler:education_and_reference"
  rake "alexa_skills_crawler:food_and_drink"
  rake "alexa_skills_crawler:games_trivia_and_accessories"
  rake "alexa_skills_crawler:lifestyle"
  rake "alexa_skills_crawler:local"
  rake "alexa_skills_crawler:movies_and_tv"
  rake "alexa_skills_crawler:music_and_audio"
  rake "alexa_skills_crawler:news"
  rake "alexa_skills_crawler:novelty_and_humor"
  rake "alexa_skills_crawler:productivity"
  rake "alexa_skills_crawler:shopping"
  rake "alexa_skills_crawler:smart_home"
  rake "alexa_skills_crawler:social"
  rake "alexa_skills_crawler:sports"
  rake "alexa_skills_crawler:travel_and_transportation"
  rake "alexa_skills_crawler:utilities"
  rake "alexa_skills_crawler:weather"
  rake "dev_list:update_dev"
  rake "dev_list:update_number_of_alexa_skills"
end
