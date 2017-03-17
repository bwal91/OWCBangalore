class Ability
  include CanCan::Ability
  

  def initialize(current_user)
    if current_user.superadmin_role?
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard
      can :manage, :all
    end
    if current_user.supervisor_role?
      can :access, :rails_admin
      can :dashboard, User
      can :manage, Location
    end
    # user ||= User.new # guest user (not logged in)
    # if user && user.superadmin_role?
    #   can :access, :rails_admin       # only allow admin users to access Rails Admin
    #   can :dashboard
    #   can :manage, :all
    # else
    #   can :read, :all                   # allow everyone to read everything
    # end

  end
end


# class Ability

#   def initialize(user)
#     if user && user.admin?
#       can :access, :rails_admin
#       can :manage, :all
#       can :dashboard   
#     end

#     if current_user.superadmin_role?
#       can :access, :rails_admin
#       can :manage, :all 
#       can :dashboard  
#     end

#     user ||= User.new # guest user (not logged in)
#     if user.superadmin_role?
#       can :manage, :all
#       can :access, :rails_admin
#       can :dashboard
#     end

#     if user.supervisor_role?
#       can :manage, User
#     end


#   end
# end
