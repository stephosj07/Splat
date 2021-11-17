class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(visitor: user)
    end
  end

  def create?
    true
  end

  def my_host_bookings?
    record.camping_spot.host == user
  end
end
