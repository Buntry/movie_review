class CreateVotes < ActiveRecord::Migration
    def self.up
        create_table :votes do |t|
            t.integer :user_id
            t.integer :review_id
        end
    end
    
    def self.down
        drop_table :votes
    end
end
