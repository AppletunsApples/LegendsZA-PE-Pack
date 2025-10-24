#===============================================================================
# Only 1 use if in Mega form.
# (Water Shuriken)
#===============================================================================
class Battle::Move::HitTwoToFiveTimesOrThreeForAshGreninja < Battle::Move::HitTwoToFiveTimes
  def pbNumHits(user, _targets)
    return 3 if user.isSpecies?(:GRENINJA) && user.form == 2
    return 1 if user.isSpecies?(:GRENINJA) && user.form == 3
    return super
  end

  def pbBaseDamage(baseDmg, user, target)
    return 20 if user.isSpecies?(:GRENINJA) && user.form == 2
    return super
  end
end
