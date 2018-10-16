class Todo < ApplicationRecord
   belongs_to :user

    def self.to_csv
        attributes = %w{description user_id}
        
        CSV.generate(headers: true) do |csv|
            csv << attributes

            all.each do |todo|
                csv << attributes.map{ |attr| todo.send(attr)}
            end 
        end
    end 

end
