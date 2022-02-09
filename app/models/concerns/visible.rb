module Visible 

    #Validations are methods called at the class level
    extend ActiveSupport::Concern

    VALID_STATUSES = ['Public', 'Private', 'Archived']
  
    included do
      validates :status, inclusion: { in: VALID_STATUSES }
    end

    #Display a count of public articles
    class_methods do
        def public_count_articles
          where(status: 'Public').count
        end
      end

    #Defines the archived? method
    def archived?
        status == 'Archived'
    end

end