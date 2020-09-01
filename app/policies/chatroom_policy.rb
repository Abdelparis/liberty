class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true if record.booking.user == user || record.booking.mission.user == user
  end

  def imbox?
   true if user
  end
end
