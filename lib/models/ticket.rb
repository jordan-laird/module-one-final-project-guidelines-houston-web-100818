class Ticket < ActiveRecord::Base
    belongs_to :movie
    belongs_to :user


    def cancel_ticket(id)
        Ticket.delete(id)
    end

end