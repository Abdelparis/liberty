class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user_is_owner_or_admin?
  end

  def create?
    user_is_owner_or_admin?
  end

  def update?
    true
  end

  def update_status?
    true if user.role == "company"
  end

  private

  def user_is_owner_or_admin?
    record.user == user
  end
end
