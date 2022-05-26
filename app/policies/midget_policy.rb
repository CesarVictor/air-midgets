class MidgetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope => Nom du Model Midget
      scope.all # => Midget.all
    end
  end

  def create?
    return true
  end

  def destroy?
    record.user == user
  end

  def show?
    true
  end
end