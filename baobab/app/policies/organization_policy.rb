class OrganizationPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end

    def index?
      user.super_admin?
    end

    def show?
      user.organization == @record || user.super_admin?
    end

    def update?
      (user.admin? && user.organization == @record) || user.super_admin?
    end

    def edit?
      update?
    end

    def create?
     user.admin? && user.organization = @record
    end

end
