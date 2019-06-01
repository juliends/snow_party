class QuizPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def update?
    show?
  end

  def close_quiz?
    show?
  end

  def close?
    user.admin
  end
end
