class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(visitor: user)
    end
  end

  def create?
    true
  end

  def my_requests?
    true
  end
end
