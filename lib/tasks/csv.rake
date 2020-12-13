require 'csv'

desc "Import actors from csv file"
task :im => :environment do
  file = "db/actor.csv"

  CSV.foreach(file,:headers=>true, :col_sep=>(',')) do |row|
  Actor.create({
                 :name=>row[0],
                 :birthdate=>row[1] ,
                 :birthplace=>row[2],
                 :horoscope=>row[3],
                 :votes=>row[4]


               })
  end

end
