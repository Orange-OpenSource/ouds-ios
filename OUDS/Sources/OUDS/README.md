# Exploration about architecture

## Notes

- We do not have any specifications nor requirements yet
- Ecodesign, l10n, i18n, a11y and open source schema are not considered yet
- This project is only here to hep development team to make mockups and studies soa s to try to understand the aim of the project and implement it
- Thus it **should not be used as is**

## Questions (french)

1. À quels niveaux doivent être gérés les *color scheme* ? Il peut être utile de définir au niveau des *semantic tokens* de couleurs avec les *schemes* demandés (clair, sombre, inversé) plutôt que de les gérer au niveau de chacun composant ? Peut-on les considérer comme un élément d'un *prmitive token* ou *semantic token* de couleur ?

2. Concernant les couleurs, à quoi fait référence le mode "inversé" ?

3. Quelle serait la différence entre les composents du _core_ (OudsTheme) et les composents des *thèmes* (cf [schéma issue #34 côté Android](https://github.com/Orange-OpenSource/ouds-android/issues/34))

4. Que faire si on n'a pas de valeurs pour un *token* donné ? On utilise un *default theme* ? On ignore la modification du composant ?

5. Est-ce qu'un *thème* doit nécessairement définir tous les *semantic tokens* (couleurs, typo, élévations) ou est-il possible d'avoir un thème avec juste quelques variations donc un sous-ensemble ?

6. Comment faire pour éviter que les utilisateurs ne définissent leurs propres *primtive tokens* ? La définition d'un *semantic token* ayant besoin d'un *primitive token*, on ne peut laisser accessible le *semantic token* dans exposer les *primitive tokens*.

7. Avoir d'un côté les *primitive tokens*, de l'autre les *semantic tokens*, le tout dans un *thème* dont une sous-partie semble être utilisée dans les *composants* parait confus. À quel niveau définit-on les *semantics tokens* à utiliser au sein d'un composant ? Est-ce le composant lui-même ? Ou est-ce un élément de plus au niveau ? Comment sont définies les reponsabilités ?

8. Quand aurons-nous les éléments fournis par l'équipe des design (type *style dictionnary*) afin que l'on puisse enfin concevoir le SDK en fonction de ces éléments et avoir une solution élégante ?
