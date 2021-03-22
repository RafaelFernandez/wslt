class WebsitePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      user.admin ? scope.all : scope.where(user: user)
    end
  end

  def create?
    true
  end

  def builder?
    @user == @record.user
  end

  def show?
    @user == @record.user
  end

  def update?
    @user == @record.user
    # true
  end

end
