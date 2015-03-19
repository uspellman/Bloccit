class PostPolicy < ApplicationPolicy
  #class Scope
   # attr_reader :user, :scope

    #def initialize(user, scope)
     # @user = user
      #@scope = scope
    #end

  class Scope < Scope

    def resolve
      #return scope.none unless user
      if user.admin? || user.moderator?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end

    def index?
      user.admin? || user.id?
    end
    
    end
  #end
end

