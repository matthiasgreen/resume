#import "templates/resume.template.typ": *

#show: resume.with(
  author: "Matthias Green",
  position: "Étudiant ingénieur informatique",
  // location: "Toulouse",
  contacts: (
    [#link("mailto:matthiasgreen2@gmail.com")],
    [#link("https://matthiasgreen.github.io")[matthiasgreen.github.io]],
    [(+33) 6 29 45 11 81]
  ),
)

#set text(lang: "fr")

= Expérience Professionnelle
#exp(
  role: "Chercheur stagiaire",
  project: "LAAS-CNRS, équipe RIS",
  date: "Juin - Septembre 2025",
  location: "Toulouse",
  summary: "Développement d'un moteur d'inférence pour un solveur SMT",
  details: [
    - Conception et implémentation d'algorithmes complexes au cœur d'un solveur expérimental
    - Optimisation des algorithmes et de l'implémentation en Rust
    - Réduction considérable de l'utilisation mémoire
  ]
)

#exp(
  role: "Ingénieur de données",
  project: "Twelve Football, Earpiece",
  date: "Octobre 2023 - Septembre 2024",
  location: "Stockholm, Suède",
  summary: "Développement d’une plateforme d’analyse de données de football",
  details: [
    - Création d'une plateforme d'analyse de données à destination de clubs professionnels
    - Projet devenu produit principal de l'entreprise
    - Création d’un backend scalable en Python avec FastAPI, SQLAlchemy, et Pandas
    - Intégration d’un LLM afin de faciliter l’interprétation des données
  ]
)

#exp(
  role: "Ouvrier en conditionnement",
  project: "Roldan SA",
  date: "Août - Septembre 2022",
  location: "Toulouse",
  summary: "Conditionnement de box à thème destinées à la grande distribution",
  details: []
)


#exp(
  role: "Stagiaire ouvrier en conditionnement",
  project: "JEDO Technologies",
  date: "Juillet 2021",
  location: "Toulouse",
  summary: "Conditionnement de pièces destinées à l'industrie aéronautique",
  details: []
)

= Éducation
#edu(
  institution: "INSA Toulouse",
  departement: "Génie Électronique et Informatique",
  date: "Septembre 2020 - En cours",
  degree: "Étudiant ingénieur, spécialité systèmes distribués et big data",
  details: [
    - Classe préparatoire intégrée avec pré-orientation en Modélisation, Informatique et Communication
    - Classé parmi les 1% des meilleurs élèves en troisième année
  ]
)

#edu(
  institution: "Université de Linköping",
  departement: "Semestre ERASMUS",
  date: "Janvier 2023 - Juin 2023",
  degree: "Cursus informatique de niveau troisième année de licence",
  location: "Linköping, Suède",
  details: []
)

#edu(
  institution: "Lycée Pyrène",
  date: "Septembre 2017 - Juin 2020",
  location: "Pamiers, France",
  degree: "Bac S spécialité sciences de l'ingénieur, mention très bien",
  details: [
    // - Mention très bien
  ]
)

= Projets et activités personnelles
#exp(
  role: "Vie associative",
  project: "INSA Toulouse",
  date: "Septembre 2020 - En cours",
  details: [
    - Guitariste et bassiste aux Enfoiros, association organisant des spectacles en soutien aux Restos du Cœur
    - Trésorier du club de jeux de société et de jeux de rôle
  ]
)

#exp(
  role: "Projets personnels informatiques",
  project: "IA, Data science, Développement web, 3D",
  details: [
    _(Disponibles sur #link("https://matthiasgreen.github.io")[matthiasgreen.github.io])_
  ]
)

= Compétences
#skills((
  ("Compétences", (
    // TODO: taylor to specific job
    [Traitement et visualisation de données],
    [Développement backend],
    [Algorithmique],
  )),
  ("Outils logiciels", ([Git], [CI/CD GitHub Actions], [Docker])),
  ("Langages", (
    [Rust], [Java], [Python], [TypeScript/React], [C\#], [C]
  )),
  ("Langues", (
    [Français (natif)], [Anglais (natif)], [Suédois (intermédiaire)]
  ))
))
