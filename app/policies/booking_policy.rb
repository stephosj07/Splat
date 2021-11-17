class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def accept?
    booking_host?
  end

  def decline?
    booking_host?
  end

  def my_visitor_bookings?
    true
  end

  def my_host_bookings?
    true
  end

  private

  def booking_host?
    record.camping_spot.host == user
  end
end
