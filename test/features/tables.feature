# language: fr
Fonctionnalité: Tableaux et interactions avec les données
  Contexte:
    Étant donné que je visite l'application de test
    Quand je me rends sur la page d'accueil
    Et que je clique sur "Utilisateurs" dans le menu principal

  Scénario: Vérification du contenu d'un tableau
    Alors le tableau "Utilisateurs enregistrés" contient :
      | Nom             | Email                        | Actions |
      | Marie Curie     | marie.curie@example.com      | Modifier Supprimer |
      | Albert Einstein | albert.einstein@example.com  | Modifier Supprimer |

  Scénario: Actions dans les rangées de tableau
    Alors la rangée "Marie Curie" contient "marie.curie@example.com"
    Et la rangée "Albert Einstein" contient "Modifier"

    # Test des actions sur une rangée spécifique
    Quand je clique sur "Modifier" dans la rangée "Marie Curie"

  Scénario: Action dans la dernière rangée
    Et que je clique sur "Supprimer" dans la dernière rangée

  Scénario: Vérification de l'absence de contenu
    Alors la page ne contient pas "Aucun utilisateur"

  Scénario: Vérification du contenu ordonné d'une colonne en particulier
    Alors la colonne "Nom" du tableau "Utilisateurs enregistrés" contient dans l'ordre :
      | Marie Curie     |
      | Albert Einstein |
    Alors la colonne "Email" du tableau "Utilisateurs enregistrés" contient dans l'ordre :
    | marie.curie@example.com     |
    | albert.einstein@example.com |
