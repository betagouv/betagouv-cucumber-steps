# Betagouv::Cucumber::Steps

Cette gem contient des [steps
Cucumber](https://cucumber.io/docs/gherkin/reference#steps)
génériques, surcouche française des matchers Capybara qui vous permet
de contruire votre propre librairie d'actions pour vos tests Cucumber.

Par exemple :

```ruby
Alors("la page contient {string}") do |content|
  expect(page).to have_content(content)
end
```

et

```ruby
Quand("je me rends sur la page d'accueil") do
  visit "/"
end
```

vous permet ensuite d'écrire :

```feature
Scénario: la page d'accueil contient le nom du produit
  Quand je me rends sur la page d'accueil
  Alors la page contient "foobar"
```

## Installation

```ruby
gem "betagouv-cucumber-steps"
```

Dans un fichier `features/support/base-steps.rb` (ou autre fichier
chargé par Cucumber) :

```ruby
require 'betagouv/cucumber/steps'
```

## Liste des steps

FIXME: trouver une meilleur doc que [le fichier des
steps](./lib/betagouv/cucumber/steps.rb).

## Debug / Contribution

Cette gem est fraîchement extraite de plusieurs projets Beta et
nécessite probablement plus de travail.

Si un step ne fonctionne pas vous pouvez :

* utilisez le step `Alors debugger` pour debugger votre page en live
* overridez le step en question dans votre code `Alors("custom je clique sur {string}")`
* trafiquer la gem directement avec bundle open ou [dans Docker](https://freesteph.info/posts/local-gem-development-with-docker.html).

N'oubliez pas de ramener vos contributions ici !
