# app/models/ability.rb
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    elsif user.guru?
      can :create, CrudList
      can :read, Sekolah
      can :read, CrudList
    else
      can :read, CrudList
      can :read, Sekolah
    end
  end
end
