class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def show
    true
  end

  def create?
    return true
  end

  def destroy?
    record.user == user
  end
end
