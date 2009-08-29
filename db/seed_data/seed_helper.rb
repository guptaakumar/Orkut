# Original by Luke Francl from Rail Spikes
# http://railspikes.com/2008/2/1/loading-seed-data

class ActiveRecord::Base
  # given a hash of attributes including the ID, look up the record by ID. 
  # If it does not exist, it is created with the rest of the options. 
  # If it exists, it is updated with the given options. 
  #
  # Raises an exception if the record is invalid to ensure seed data is loaded correctly.
  # 
  # Returns the record.
  def self.create_or_update(options = {}, &bloco)
    id = options.delete(:id)
    record = find_by_id(id) || new
    record.id = id
    record.attributes = options
    record.save!
    
    record.instance_eval(&bloco) unless bloco.nil?
    record
  end
end
