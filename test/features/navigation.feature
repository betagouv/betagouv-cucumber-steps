# language: fr
Fonctionnalité: Navigation et contenu des pages
  Contexte:
    Étant donné que je visite l'application de test

  Scénario: Page d'accueil contient le contenu attendu
    Quand je me rends sur la page d'accueil
    Alors la page est titrée "Bienvenue sur Test App"
    Et l'en-tête contient "Test App"
    Et la page contient "Cette application permet de tester les steps Cucumber"
    Et la page contient un lien "Ajouter un utilisateur"
    Et la page contient un lien "Voir tous les utilisateurs"

  Scénario: Navigation vers la page utilisateurs
    Quand je me rends sur la page d'accueil
    Et que je clique sur "Utilisateurs" dans le menu principal
    Alors la page est titrée "Liste des utilisateurs"
    Et le fil d'Ariane affiche "Accueil > Utilisateurs"

  Scénario: Vérification du titre de page
    Quand je me rends sur la page d'accueil
    Alors le titre de la page contient "Test App"
    Et il y a un titre de premier niveau contenant "Bienvenue sur Test App"
