#import "templates/resume.template.typ": *

#show: resume.with(
  author: "Matthias Green",
  position: "Etudiant ingénieur informatique",
  // location: "Toulouse",
  contacts: (
    [#link("mailto:matthiasgreen2@gmail.com")],
    [#link("https://matthiasgreen.github.io")[Site web]],
    [#link("https://github.com/matthiasgreen")[GitHub]],
    [(+33) 6 29 45 11 81]
  ),
  // tfooter: [#align(center)[#emph[References available on request]]]
)

#set text(lang: "fr")

= Expérience Professionnelle
#exp(
  role: "Chercheur stagiaire",
  project: "LAAS-CNRS, équipe RIS, solveur Aries",
  date: "Juin - Septembre",
  location: "Toulouse",
  summary: "Développement d'un moteur d'inférence pour la logique d'égalité dans un solveur SMT",
  details: [
    - Conception et implémentation d'algorithmes d'inférence adaptés à la gestion de variables optionnelles
    - Intégration de mécanismes de backtracking et génération d'explications pour les conflits
    - Forte optimisation algorithmique et de l'implémentation en Rust
  ]
)

#exp(
  role: "Ingénieur de données",
  project: "Twelve Football, Earpiece",
  date: "Octobre 2023 - Septembre 2024",
  location: "Stockholm, Suède",
  summary: "Développement d’une plateforme d’analyse de données de football",
  details: [
    - Création d'une plateforme de visualisation et d'analyse à destination de coachs de clubs professionnels
    - Intégration d’un LLM afin de faciliter l’interprétation des données
    // - Prototypage sur la plateforme Streamlit avec des graphiques Plotly
    // - Conception et implémentation de nouveaux types de graphiques
    // représentant différents aspect des matchs, équipes, joueurs et championnats
    - Création d’un backend scalable en Python avec les libraires FastAPI, SQLAlchemy, Plotly et Pandas
    // - Travail sur l’interface graphique en React
  ]
)

#exp(
  role: "Ouvrier en conditionnement",
  project: "Roldan SA",
  date: "Octobre 2023 - Septembre 2024",
  location: "Toulouse",
  summary: "Conditionnement de box à thème destinées à la grande distribution",
  details: []
)

/*

===========================
===== WORK EXPERIENCE =====
===========================

This is where you make your resume shine! By and large, the advice here applies to all other sections of your resume, as the pattern through the rest of the resume uses the same "Experience" (`#exp`) method for formatting.

Each experience entry has the following attributes you can add:

1. Job Title (`role:`)
2. Employer/Project Title (`project:`)
3. Date (`date:`)
  - This should be a `MONTH 20XX - MONTH 20XX` entry, using "Present" or "Current" to denote the position you currently work at.
  - For these dates — and, in general, all dates on your resume - I'd recommend abbreviating months (e.g., `January -> Jan`, `December -> Dec`, etc.) to conserve space.
4. Location (`location:`) (OPTIONAL)
  - In the era of remote work, the location of a job has lost quite a bit of signal. IN MY OPINION, the location you state in your header would provide an interviewer or recruiter with enough information about your location, causing additional role locations to fall a bit into the same "noise" category we talked about above. However, some reasons you may want to include it are:
    - You're applying for a job that you know will be doing a more thorough background check, such as a government, military-adjacent, or high-security position
    - You want to put "Remote" for some of your positions to make it incredibly clear that you are a remote worker with no interest in relocating to an office.
    - You're using cool places you've worked to flavor your resume and start conversations in your interviews (e.g., "Oh, wow, you've been to France/worked in New York/yodeled in Singapore/etc. etc.? Tell me more about that!")
5. Role/employer/project summary (`summary:`) (OPTIONAL)
  - I've seen this on enough resumes, and have warmed up to it over time. This can be used to give a *brief(!!!)* description of the company you worked at, projects you focused on, or role you worked in.
  - This can be especially helpful at both larger companies to specify what specific vertical you worked in, or at smaller companies to give on-page context to who they are and what they do.
  - In some circumstances, it can substitute as a bullet point and give you more room in your bullet points to drill down into specifics without having to give overarching context.
6. Details — VERY IDEALLY BULLET POINTS — describing the entry (`details:`)

=== Opinion: Creating New Entries ===

For the details section of your experience entries, I would HIGHLY recommend keeping it to exclusively bullet points. Typically, the range of bullet points you should have for an experience entry is:

- Three bullet points by default; with
- (Maybe) Four bullet points for your current (or particularly cool or relevant) positions and projects; and
- (Possibly) Two bullet points for old or "thinner" projects or experiences (e.g. seasonal employments, short-term projects, old experience, etc.)

*That's a lot of bullet points*, which means that the bulk of your resume will be SHORT, CONCISE SNIPPETS describing aspects of your experiences.

=== Opinion: Creating Well-Structured Bullet Points ===

> IF YOU TAKE NOTHING ELSE AWAY FROM THIS TEMPLATE, IT SHOULD BE THIS.

Bullet points are going to be making up the bulk of your resume, so it's important to make sure that they're concise, to-the-point, and convey exactly why you're a good fit for the job you're applying for. This structure is informed by a *lot* of reviews with technical recruiters, professionals/engineers, and hiring managers at companies of many different sizes. You should do your best to make sure that every bullet point has these three components - known as an XYZ structure:

- **X:** What you did
- **Y:** How you did it
- **Z:** The (measurable) result

While there are *a lot* of ways to include these three components in your bullet points, the general "out-of-the-box" structure is below:

> [VERB] a [NOUN] using [METHOD] for [REASON], resulting in [RESULT]

If that makes zero sense, don't worry — here's an example:

> Optimized data pipelines written in **Spark/AWS** for financial analysis, resulting in >$1M annual compute cost reductions

That one matches almost one-to-one with the structure above and has all three components:

- **X:** What you did (Optimized data pipelines)
- **Y:** How you did it (Used knowledge of Spark and AWS)
- **Z:** The (measurable) result (Saved lots of money on compute costs)

For the sake of brevity, we'll do just the one example up here. However, I'll post samples of other bullet points from other resumes that do a good job of including these three components.

If you're trying to hammer out your first few bullet points in that structure and are thinking to yourself, "Wow, this is hard!" — don't worry! It takes awhile (and a lot of trial-and-error) to get the hang of, but will become a lot easier as you write more.

Additionally, this is a really good reason to have somebody else review your bullet points (and your resume in general) — to this day, I still ask people to review my resume to make sure my bullet points get the point across well, and convey the three points from that structure concisely.

=== Opinion: Including Measurable Results ===

In general, if you have measurable results of your actions that you can include in bullet points, you should. It demonstrates to others the effectiveness of the actions you took in terms of metrics that people understand how to interpret. However, it is *by far* the hardest part of a bullet point to include, and you may not be able to include a measurable result for a couple different reasons:

1. You simply don't have a measurable result associated with the bullet point
2. You may be constrained by an NDA or equivalent restriction on publicly providing hard numbers, metrics, or details

If you don't have a measurable result to include, don't worry — the X (what) and Y (how) components are still enough to make a good bullet point. However, if you're in a position to gather those metrics (for example, if you're still at your current company and have the ability to measure or find that data), I'd advise taking the time to go do that.

This is also a matter of opinion! Sometimes — especially if you work at a company that doesn't religiously measure Key Performance Indicators (KPIs) — the exactness of the metrics you have access to will vary wildly. If you're in a scientific field, you may have *very precise* measurements down to a lot of significant figures. On the other hand, in industry, maybe your measurements are ballpark estimates, like the type you'd find in an executive summary.

In general, I'd limit the number of "significant figures" of your metrics to 2 digits. 2 digits is enough to get a whole-number percent (e.g. 25%) or a good monetary estimate (e.g. $120,000 or $120k).

Additionally, the exactness of a measurable result you include should be something you can justify to both yourself and others.

Philosophically, I'd consider the ability to justify a statement to be the difference between "an estimate" and "bullshit."

**FOR EXAMPLE:** I worked in a job where, as an employee, I proposed a new system we use now for replicating AWS environments and spinning up new infrastructure (TL;DR copy and pasting big pieces of technology automagically). Before we had that system, engineers would just do the whole thing by hand.

Before I worked there, there was an occasion where the team had to reconstruct an entirely sandboxed copy of an application, by hand, for a new client. If memory serves, this took a few engineers roughly 4 months. Now, with the new system, we can do the same task in about 3 hours.

*On paper*, the actual optimization would be:

> 3 engineers * 40 hours * 12 weeks = 1440 hours
> 1440 hours previously - 3 hours now,
> 1437 saved / 1440 hours originally =
> 
> a 99.7% time optimization.

HOWEVER — I hadn't done that math until literally just now, as I was typing it. When I wrote the bullet point for that entry on my own resume, I vaguely went "3 hours now versus 3 months before? That's probably more than 90% ¯\_(ツ)_/¯"

As of writing, that bullet point on my entry is:

> Create **Terraform/AWS** deployment systems, reducing new AWS application spin-up times by >90%

Is it precise? Absolutely not. Can I justify it? Probably, if I had to. So that's the metric that I used.

(Although I probably will make it more specific now that I've done the math.)

When it comes to results that you know exist beyond a shadow of a doubt, but don't have incredibly hard data on, using a `~` in front of the number is your best friend.

(Of all the characters available on the standard keyboard, `~` is certainly the one that most represents the mathematical equivalent of "vibes.")

For example, if you improve, refine, or automate a tedious process at work and the consensus among the people you've helped is "This is about twice as fast now!", you shouldn't hesitate to throw down a "~50% improvement" as a measurable result.

If you're looking for measurable results at your current position, you have the incredible advantage of *still being at your current position.* KPIs - the things you can measure to gauge the success of your work - are both a difficult thing to collect and a valuable thing to have, as they can help you get new job or build a case for increased compensation at your current job now. If you can, take time at your current job to build structures that allow you to accurately measure results of your actions.

=== Opinion: Keep Your Bullets Concise! ===

When you're writing bullet points, you should try to keep them to a whole-integer number of lines used. Here's a less-weirdly-phrased example to illustrate what I mean:

```typ
- Lead development of time travel devices, resulting in the <LINE BREAK> 
  ability to travel back and forth through time ........................
```

In that case, see how there's quite a bit of space remaining on the second line? We usually refer to this as a *"hanging bullet point"*. Hanging bullet points are an issue for a few reasons:

1. Vertical space on your resume is a valuable resource, especially if you're doing a RESUME resume (and not a CV) where you should limit yourself to one page. In this case, you're sacrificing an extra line for only half as much information, when it may be better spent creating a separate bullet point.
2. The reader has to now read into a second line. When somebody is quickly reviewing your resume, they may not bother reading that far into a single bullet point.
3. In a very wishy-washy "the-vibes-are-off" kind of way, it causes the whitespace of your resume to look uneven and your resume to look slightly incomplete, especially if the second line is only one or two words.

In general, you should really aim to avoid these instances altogether. A few solutions you have (in the order I'd recommend them) are:

1. Trim the bullet point to fit onto a single line.
  - This is what I recommend most of the time, as it also has the added benefit of forcing you to be more concise in your wording to get the point across
2. Split the bullet point into two distinct bullet points.
  - In this case, you may be able to massage things around in a way that gives you two concise points rather than one inconcise one
3. Add more context to the bullet point (a method you used or another measurable result) to strengthen the point in the space that you have
  - **I don't recommend this**. While I've seen it done well (in cases where there was no logical way to split the bullet point AND the extra space was used to add really good metrics), I'd wager that 99% of the time people use two lines for a bullet point, it's because they're rambling and should've done Option 1 or Option 2 instead.

=== Opinion: Mention Your Skills (and make them bold!) ===

Often, in constructing your bullet points, the Y component (how you did it) will involve a specific technology, process, skill, or programming language. In that case, I highly advise that you inline bold (surround the text with asterisks, e.g. `*Python*`, `*Illustrator*`, etc).

The reason I recommend this is because of the "talk is cheap" principal. In the Skills section of a resume, it is very, *very* easy for people to overestimate their skill in things. I can vividly recall the time I put `SQL` in my Skills section, only to absolutely eat shit on a SQL technical interview I got as a result.

(I did not get the job.)

Interviewers understand that this section is very easy to overpack, which is why I said above that the section is largely for the benefit of strengthening your ability to get past ATS by including tokens from the job description. However, your projects and experience - especially ones that you can hyperlink to - are far less likely to be total bullshit, and so mentions of specific technologies, languages, and skills here hold far more signal potential for reviewers.

By inline-bolding specific mentions of technology, software, and languages you use, you're both encouraged to mention them more often (which strengthens your match score with ATS) and also gives interviewers a very quick second confirmation that you can back up the skills you've put in your Skills section.

I have also seen people inline bold the measurable results they include in their bullet points. I'm personally pretty neutral on this practice, as it has the potential to highlight your more impressive achievements, but also potentially adds noise to your resume. *Caveat lector* - reader beware!

=== Opinion: "But I don't want to use bullet points!" ===

You really should. Especially at large companies, your resume will largely be viewed at a glance and the conciseness of well-structured bullet points reflects that reality.

The exception is those of you making a CV, which means you probably (you *should*) have a PhD or many, *many* years of professional experience and massive accomplishments to boot. If that's the case, this template is still able to accommodate much of what you need. In your case, though, the expectation is likely that you describe things like publications, papers, presentations, etc. with concise abstracts (abstract-of-your-abstract) rather than bullet points.

If that does apply to you (once again, if you're not sure it does then it probably doesn't), the `details:` field of the `#exp` format does allow you to do non-bulleted descriptions while still taking advantage of the built-in formatting for everything else.

=== Opinion: Ordering Your Experience ===

As you get further into your working life, old experiences may start to feel "stale", either because they were many years ago or because they don't fit as well with your current career aspirations. If you start running out of vertical space to keep your resume under one page and feel you want to trim down your Experience section, my general guidelines would be:

1. Always order your experiences chronologically.
  - There is a bit of wiggle room with jobs that you hold (or have held) concurrently. In those cases, I'd recommend breaking ties for which experience should go first by which one feels more relevant to the job you're currently applying for.
2. If you don't have a very long history of work (for example, you're still very new to working professionally), trim bullet points that aren't relevant to your current applications off of some entries. Prioritize trimming bullets from older experiences first!
3. If you're trimming an experience to just one bullet point, you should remove it altogether.

WHEN YOU'RE TRIMMING THINGS OFF *ANYWHERE* OFF OF YOUR RESUME, YOU SHOULD PREFER TO COMMENT THEM OUT RATHER THAN DELETE THEM ENTIRELY.

From the bajillion requisites of what constitutes a good bullet point, you should assume that they're a real pain in the ass to get right. Once you've made good bullet points for an entry, lean towards commenting that entry (or individual bullet points) out rather than deleting them entirely.

It could be the case later that an entry you've trimmed previously would be a good fit with your current applications. In that case, rather than have to re-make the entry from scratch, you can simply uncomment the relevant information and restore it to your resume as-is.

=== Opinion: Listing Gap Periods ===

When trimming experience, one thing you want to avoid is gaps on your resume. The entries in your experience section should ideally represent one continuous block of time, with potentially some occasional one-month gaps between entries.

While I (as a reviewer) tend to ignore gaps because there's a billion totally valid reasons those can happen (Maybe they were a full-time student, or taking care of a loved one, or got laid off and worked in an unrelated field to make ends meet, or took care of a child or parent, or they stumbled on a bag of money and fucked off to bike Europe for a year, etc.). However, sometimes significant resume gaps freak people out.

If you're in the process of removing non-relevant experience from your resume and find yourself with a noticeable gap (>4 months), I'd recommend adding a summarized-but-not-detailed entry for the gap period. 

For example:

```typ
#exp(
  role: "Caretaker",
  project: "Gap Period",
  date: "April 2020 - March 2021",
  summary: "Provided full-time support to vulnerable family members during COVID-19",
  details: []
)
```

This entry is concise, explains the gap period, and conserves vertical space on your resume.

Honestly? If anybody has a problem with a well-explained gap period, they have no business leading or hiring people.

=== Opinion: Hyperlinking in your Experience ===

As usual, I'd recommend including some hyperlinks in these sections under the assumption that a reviewer will be seeing this on a digital device and could hypothetically click on the links for additional context.

In general, the hyperlinks I tend to include are:

- In the headers, with links to the company's website or product that you worked on; and
- Sparingly in the bullet points, with links to publicized achievements or products you helped work on and mention explicitly in a bullet point.
- In some cases, links to additional resources mentioned in your bullet points
  - I see this used most often in fields related to "real science" (e.g. chemistry, biology, mechanical engineering) or in cases where industries are regulated (education, manufacturing, safety, environmental consulting) where it can be worth relating to specific documentation for procedures, legal compliance documentation, public-use datasets, or firm-level certification processes

*/

= Education
#edu(
  institution: "INSA Toulouse",
  departement: "Génie Electronique et Informatique",
  date: "Septembre 2024 - En cours",
  degree: "Etudiant ingénieur, spécialité systèmes distribués et big data",
  details: []
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
  institution: "INSA Toulouse",
  date: "Septembre 2020 - Décembre 2023",
  degree: "Etudiant Ingénieur généraliste",
  details: [
    // - Classe préparatoire intégrée et pré-orientation en Modélisation, Informatique et Communication
    - Classé parmi les 1% des meilleurs élèves en troisième année
  ]
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
  role: "Projets informatiques",
  project: "",
  details: [
    - Développement de nombreux projets informatiques, scolaires et personnels, dans les domaines de l’IA, du data science, du développement web, de la simulation, de la 3D et du jeu vidéo
  ]
)

= Compétences

#skills((
  ("Compétences", (
    // TODO: taylor to specific job
    [Traitement et visualisation de données],
    [Algorithmique],
    [...],
    [...],
  )),
  ("Outils logiciels", ([Git], [CI/CD GitHub Actions], [Docker])),
  ("Langages", (
    [Rust], [Java], [Python], [TypeScript/React], [C\#]
  )),
  ("Langues", (
    [Français (natif)], [Anglais (natif)], [Suédois (intermédiaire)]
  ))
))
