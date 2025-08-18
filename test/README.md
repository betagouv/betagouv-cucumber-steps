# Tests pour betagouv-cucumber-steps

Ce répertoire contient des tests pour valider le bon fonctionnement des steps Cucumber de la gem.

## Structure

- `fixtures/` - Pages HTML d'exemple utilisant le DSFR
- `features/` - Spécifications Cucumber en français
- `support/` - Configuration des tests (Capybara, serveur de test)

## Lancement des tests

### Prérequis

Ajoutez ces dépendances à votre `Gemfile` :

```ruby
group :test do
  gem 'cucumber'
  gem 'capybara'
  gem 'rack'
  gem 'rspec'
end
```

### Commandes

```bash
# Lancer tous les tests
bundle exec rake test

# Lancer seulement les tests Cucumber
bundle exec rake cucumber

# Lancer avec un profil spécifique
bundle exec cucumber --profile html

# Lancer un fichier de feature spécifique
bundle exec cucumber test/features/navigation.feature
```

## Fichiers de test

### Pages HTML (`fixtures/`)

- `home.html` - Page d'accueil avec navigation et boutons
- `users.html` - Page de liste avec tableau
- `new_user.html` - Formulaire avec fieldsets, radios, checkboxes

### Features Cucumber

- `navigation.feature` - Tests de navigation et contenu
- `forms.feature` - Tests de formulaires et interactions
- `tables.feature` - Tests de tableaux et actions sur les lignes

## Ajout de nouveaux tests

1. Créez une nouvelle page HTML dans `fixtures/` si nécessaire
2. Ajoutez la route dans `test/support/env.rb`
3. Écrivez votre feature en français dans `features/`
4. Lancez les tests avec `bundle exec cucumber`