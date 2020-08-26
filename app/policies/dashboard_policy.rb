class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  end

  def freelancer?
    true if user.role == "freelancer"
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end
end
