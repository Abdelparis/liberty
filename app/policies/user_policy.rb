class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

    private

  def user_is_owner_or_admin?
    record.user == user
  end
end
