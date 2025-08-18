# language: fr
Fonctionnalité: Tableaux et interactions avec les données
  Contexte:
    Étant donné que je visite l'application de test
    Quand je me rends sur la page d'accueil
    Et que je clique sur "Utilisateurs" dans le menu principal

  Scénario: Vérification du contenu d'un tableau
    Alors je peux voir dans le tableau "Utilisateurs enregistrés"
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
