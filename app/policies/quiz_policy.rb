class QuizPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    show?
  end

  def close_quiz?
    show?
  end

  def close?
    true
  end
end
