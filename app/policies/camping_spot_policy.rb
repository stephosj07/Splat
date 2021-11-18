class CampingSpotPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    is_host?
  end

  def destroy?
    is_host?
  end

  def my_host_spots?
    true
  end

  private
  
  def is_host?
    record.host == user
  end
end
