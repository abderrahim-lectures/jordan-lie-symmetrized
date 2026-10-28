import Mathlib

/-! Proposition `prop:lie-classification` (iii) and (iv): a derivation plus a
central-valued additive map that vanishes on commutators is a Lie derivation,
and it is a derivation only if the central term vanishes at `1`. -/

section Lie

variable {R : Type*} [Ring R]

/-- A Lie derivation: `D [x,y] = [D x, y] + [x, D y]`. -/
def IsLieDer (D : R →+ R) : Prop :=
  ∀ x y, D (x * y - y * x) = (D x * y - y * D x) + (x * D y - D y * x)

/-- A derivation. -/
def IsDer (D : R →+ R) : Prop := ∀ x y, D (x * y) = D x * y + x * D y

/-- (ii) A derivation is a Lie derivation. -/
theorem isLieDer_of_isDer (d : R →+ R) (hd : IsDer d) : IsLieDer d := by
  intro x y
  rw [map_sub, hd x y, hd y x]
  abel

/-- (iii) A derivation plus a central-valued additive map vanishing on commutators is a
Lie derivation. -/
theorem isLieDer_add_central (d t : R →+ R) (hd : IsDer d)
    (hc : ∀ x y, t x * y = y * t x) (ht : ∀ x y, t (x * y - y * x) = 0) :
    IsLieDer (d + t) := by
  intro x y
  have h := isLieDer_of_isDer d hd x y
  rw [AddMonoidHom.add_apply, ht, add_zero, h, AddMonoidHom.add_apply, AddMonoidHom.add_apply]
  rw [add_mul, mul_add, add_mul, mul_add, hc x y, hc y x]
  abel

/-- (iv) A derivation vanishes at `1`, so `d + t` is a derivation only if `t 1 = 0`. -/
theorem not_isDer_add_central (d t : R →+ R) (hd : IsDer d) (h1 : t 1 ≠ 0) :
    ¬ IsDer (d + t) := by
  intro h
  have hd1 : d 1 = 0 := by
    have h0 := hd 1 1
    rw [one_mul, mul_one, one_mul] at h0
    exact left_eq_add.mp h0
  have h' := h 1 1
  rw [mul_one, mul_one, one_mul, AddMonoidHom.add_apply, hd1, zero_add] at h'
  exact h1 (left_eq_add.mp h')

end Lie
