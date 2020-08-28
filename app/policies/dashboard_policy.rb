class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  end

  def dashboard?
    true if user
  end

  def freelancer?
    true if user.role == "freelancer"
  end

end
