# Jordan and Lie Derivations as Derivations of the Symmetrized and Antisymmetrized Products

Author: Abderrahim Adrabi, Mohammed V University in Rabat.  
Current version: **v8**.

## The idea of the paper

We view the Jordan derivations and the Lie derivations of an algebra as the derivations of two products on the algebra. These are the symmetrized product xy + yx and the antisymmetrized product xy - yx. The question whether such a derivation is a derivation becomes a comparison of three spaces, (A), (A) and (A). We show that the dimension of (A) does not change when the base field is extended. We compute the three spaces for full matrix algebras, and we apply the theorems of Zhang and Yu and of Cheung to triangular algebras, with the upper triangular 2 2 matrices as the smallest case. In both cases a trace-type map is a Lie derivation that is not a derivation.

### Contents

1. Introduction
2. Preliminaries and the symmetrized product
3. Extension of the base field
4. The antisymmetrized product and Lie derivations

## Repository layout

| Path | Content |
|---|---|
| `paper/jordan-lie-symmetrized.tex` | LaTeX source (class files in `cls/`) |
| `pdf/` | the PDF of the latest release |
| `lean/Research/JordanLieSymmetrized/` | Lean 4 files that check computations and lemmas of the paper (mathlib only) |

Build the paper with `cd paper && latexmk -pdf jordan-lie-symmetrized.tex`. Build the Lean files with `cd lean && lake build`.

## Change log

One entry per released version, newest first. Each version is also a tag of this repository.

- **v8** (2026-10-28): the first source read for the Lie product is cited (Herstein 1961, Section 2, which defines the Lie and the Jordan product of an associative ring). No theorem changes.
- **v7** (2026-10-28): the first source of the Jordan product is cited (quasi-multiplication, Jordan, von Neumann and Wigner 1934, p. 64; the sum without the half, Herstein 1957, p. 1104); the origins and intersections tables are added. No theorem changes.
- **v6** (2026-10-28): the Jordan product, the symmetrized product and the Jordan identity are cited to Bresar and Zelmanov 2025 (Example 2.1, Section 2, Serdica 51, p. 205), where they were used without a source, and adds one sentence on the factor 2 of the survey's product. No theorem changes.
- **v5** (2026-10-28): the symmetrized product and the braided-symmetric derivation are recalled from braided-sym-deriv with located citations (Definition 2.1, Remark 2.4) in place of a new definition, and the symbol is BSDer as in that paper. No theorem changes.
- **v4** (2026-10-28): the other paper of the series on symmetrized products is cited with a bibliography entry and a citation, in place of a web address in the text. No claim changes.
- **v3** (2026-10-28): sections merged and balanced (the preliminaries and the symmetrized product form one section; three sections remain besides the introduction), the standard polynomial and the Li and Wei material removed (references Amitsur, Bresar 1993 and Li and Wei dropped), three commutative diagrams (the Leibniz square, the base-change square, the exact sequence), the companion paper braided-sym-deriv cited in the introduction.
- **v2** (2026-10-28): three linking sentences before consecutive environments (body-style rule 11), found when the release gate was run against the right tree. No claim changes.
- **v1** (2026-10-28): first version, assembled from braided-sym-deriv v53 sections 3 and 6, with a new Corollary cor:jder-base (dim_L JDer(A_L) = dim_K JDer(A)). The notation is SDer, not BSDer. Author block as in braided-sym-deriv.

## References

Citations of the works the paper uses. The works themselves are not part of this repository.

1. Adrabi, A., Bennis, D.: Braided-symmetric derivations of algebras. Preprint (2026). https://github.com/abderrahim-lectures/braided-sym-deriv.
2. Alizadeh, R.: Jordan derivations of full matrix algebras. Linear Algebra Appl. 430, 574–578 (2009).
3. Brešar, M.: Jordan derivations on semiprime rings. Proc. Amer. Math. Soc. 104(4), 1003–1006 (1988).
4. Brešar, M., Zelmanov, E.: Jordan homomorphisms: a survey. Serdica Math. J. 51, 203–230 (2025).
5. Chambert-Loir, A.: (Mostly) Commutative Algebra. Universitext. Springer, Cham (2021).
6. Cheung, W.-S.: Lie derivations of triangular algebras. Linear Multilinear Algebra 51(3), 299–310 (2003).
7. Cusack, J.M.: Jordan derivations on rings. Proc. Amer. Math. Soc. 53(2), 321–324 (1975).
8. Herstein, I.N.: Jordan derivations of prime rings. Proc. Amer. Math. Soc. 8(6), 1104–1110 (1957).
9. Herstein, I.N.: Lie and Jordan structures in simple, associative rings. Bull. Amer. Math. Soc. 67, 517–531 (1961).
10. Hochschild, G.: On the cohomology groups of an associative algebra. Ann. of Math. 46(1), 58–67 (1945).
11. Jacobson, N.: Abstract derivation and Lie algebras. Trans. Amer. Math. Soc. 42(2), 206–224 (1937).
12. Jordan, P., von Neumann, J., Wigner, E.: On an algebraic generalization of the quantum mechanical formalism. Ann. of Math. 35(1), 29–64 (1934).
13. Lam, T.Y.: A First Course in Noncommutative Rings, 2nd edn. Graduate Texts in Mathematics 131. Springer, New York (2001).
14. Martindale, W.S., III: Lie derivations of primitive rings. Michigan Math. J. 11(2), 183–187 (1964).
15. Rotman, J.J.: An Introduction to Homological Algebra, 2nd edn. Universitext, Springer, New York (2009).
16. Zhang, J.-H., Yu, W.-Y.: Jordan derivations of triangular algebras. Linear Algebra Appl. 419(1), 251–255 (2006).
17. Wang, Y.: Lie (Jordan) derivations of arbitrary triangular algebras. Aequationes Math. 93, 1221–1229 (2019).
18. Weibel, C.A.: An Introduction to Homological Algebra. Cambridge Stud. Adv. Math. 38, Cambridge University Press, Cambridge (1994).

## About this repository

The repository is updated after every release of the paper. The research workspace that produced it is private; the final source, PDF and Lean code are published here.
