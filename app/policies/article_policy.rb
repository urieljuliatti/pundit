class ArticlePolicy < ApplicationPolicy
  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end

  def update?
    user&.admin?
  end

  def destroy?
    user&.admin?
  end
end
