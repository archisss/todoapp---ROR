class Todo < ApplicationRecord

    def self.to_csv
        attributes = %w{description owner}
        
        CSV.generate(headers: true) do |csv|
            csv << attributes

            all.each do |todo|
                csv << attributes.map{ |attr| todo.send(attr)}
            end 
        end
    end 

end
