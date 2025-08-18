# language: fr
Fonctionnalité: Formulaires et interactions

  Contexte:
    Étant donné que je visite l'application de test

  Scénario: Remplissage d'un formulaire utilisateur
    Quand je me rends sur la page d'accueil
    Et que je clique sur "Ajouter un utilisateur"
    Alors la page est titrée "Ajouter un utilisateur"
    Et le fil d'Ariane affiche "Accueil > Utilisateurs > Nouveau"

    Quand je remplis "Nom" avec "Marie Curie"
    Et que je remplis "Email" avec "marie.curie@example.com"
    Et que je sélectionne "Administrateur" pour "Rôle"
    Et que je choisis "Thème clair" pour "Préférences"
    Et que je coche "Recevoir les notifications"
    Et que je clique sur "Enregistrer"

  Scénario: Utilisation des champs dans un fieldset
    Quand je me rends sur la page d'accueil
    Et que je clique sur "Ajouter un utilisateur"
    Et que je remplis le champ "Nom" avec "Albert Einstein" dans les champs de "Informations personnelles"
    Et que je remplis le champ "Email" avec "albert@example.com" dans les champs de "Informations personnelles"

  Scénario: Vérification des boutons
    Quand je me rends sur la page d'accueil
    Alors la page contient un lien "Ajouter un utilisateur"
    Et la page contient un bouton "Bouton désactivé" désactivé

    Quand je me rends sur la page d'accueil
    Et que je clique sur "Ajouter un utilisateur"
    Alors la page contient un bouton "Enregistrer"
    Et la page ne contient pas de bouton "Supprimer"

  Scénario: Upload de fichier
    Quand je me rends sur la page d'accueil
    Et que je clique sur "Ajouter un utilisateur"
    # Note: Pour tester l'upload, il faudrait un fichier réel
    # Et que j'attache le fichier "test/fixtures/avatar.jpg" pour le champ "Photo de profil"
