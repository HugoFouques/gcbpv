Teacher.destroy_all

teachers = [
  { id: 1, first_name: "Goulven", last_name: "Dréano", status: 0, description: "Un vrai mélomane qui joue sans fausse note au sein d’un collectif, Goulven est professeur de musique traditionnelle et coordinateur pédagogique au groupement culturel breton de Redon et Muzillac. Un vrai chef d’orchestre qui vous propose l’écriture d’une partition à plusieurs mains. Président de l’association Clakbam c’est une des nombreuses personnes qui vous font danser aux mardis de l’été.\r\n\r\nMon petit plaisir à Malansac : Les rencontres intergénérationnelles des mardis de l’été.\r\n\r\nMalansac en un mot : Associationsssss\r\n\r\nIl s’engage dans l’Avenir de Malansac." },
  { id: 2, first_name: "Tanguy", last_name: "Pacault", status: 0, description: "Il est clarinettiste depuis plus de 30 ans, et sonneur depuis une quinzaine d’années. Diplômé d’État, il enseigne au conservatoire de CAP Atlantique (Guérande-La Baule) ainsi qu’à l’école de musique traditionnelle des Pays de Vilaine.\r\n\r\nDe la flûte à bec à la bombarde, de la danse renaissance à l’énergie des musiques actuelles, son parcours lui a permis d’approcher une diversité de styles, pour acquérir et apprécier cette liberté d’expression propre et nécesssaire aux musiques improvisées.\r\n\r\nVice champion de Bretagne en duo, et lauréat de nombreux concours en duo ou trio, il joue en duo avec Damien Tatard à l’accordéon ou Christophe Gauche à l’orgue, et en trio avec Damien Tatard et Anne-Gaëlle Normand. Il participe également à la création du ciné-concert « De Nantes à Brest, un canal pas ba-nal » avec Anne-Gaëlle Normand et Ronan Robert." },
  { id: 3, first_name: "Kaelig", last_name: "Frédéric", status: 0, description: "Dans le début des années 70, Kaëlig Frédéric (Michel Frédéric de son patronyme d’état civil) découvre la scène avec les bals populaires ! Percussionniste  et bassiste, il joue aussi de la guitare en autodidacte. Il baigne dans les titres des Beatles, des Rolling Stones, Led Zeppelin, etc., mais aussi Dylan, Neil young, Creedence ou John Mayal et Johnny Winter…\r\n\r\nDans les années 70, il partage la grande aventure liée au phénomène folk celtique, festou-noz et ambiances pub, où musique irlandaise et chants de marins se côtoient. Guitare, cornemuses, binioù et bombarde sont les instruments qu’il pratique avec passion. (AVEL NEVEZ et LAGAD AN HEOL)\r\n\r\nLa musique irlandaise prend aussi une grande place dans sa vie musicale avec la création du groupe IRWIN et plus tard, l’étude de la harpe Celtique. Au cours des années 80, il parcourt les scènes de l’hexagone pour jouer un répertoire du 11ème au 18ème siècle, consacré à la harpe irlandaise. Il partage sa passion sur scène avec Bernard Benoit ou Claude Besson. Il enregistre 2 albums en solo avec cet instrument. Il a enseigné la harpe celtique pendant de nombreuses années et a publié de nombreuses partitions.\r\n\r\nKaëlig, multi-instrumentiste, va s’engager dans l’aventure rock celtique et plus particulièrement dans un répertoire de chants de marins traditionnels et récents. Avec le groupe MILLIONS DE SABORDS qui distillera une musique énergique, il partage souvent la scène des festivals avec d’autres artistes (Tri Yann, The Pogues, Gwendal, les Têtes Raides…) et réalisera 2 albums en écumant la contrée !\r\n\r\nVers la fin des années 90, c’est à nouveau l’envie de retrouver les racines des musiques qu’il affectionne et qui anime sa curiosité. Depuis 12 ans, avec le groupe Aux Couleurs du Moyen-Age, il travaille les instruments (Vièle d’Arc, Rebec, Oud, hautbois anciens, etc…) et le répertoire des musiques anciennes (Moyen-âge et Renaissance) il effectue depuis, avec l’Ensemble PASTOUREL et le Duo MUSICA VILAINE (avec Bérangère Le Biavant) des concerts dans toute la France ainsi qu’à l’étranger.\r\n\r\nDepuis 2000, il étudie le violon dans le répertoire de la musique Irlandaise, participe à de nombreux ateliers, stages et voyage en Irlande ; il crée le groupe EWENN (musique bretonne et irlandaise) et se consacre, avec l’association VIOLONDANS de St. Herblain et le groupe EILEEN, aux  soirées de musique Irlandaise.\r\n\r\n
  En 2015, c’est la création du Duo de Jazz « TENDER JAZZ DUO » avec Bernard Bonnafont. Kaëlig y retrouve sa basse fretless dans un répertoire de grands standards de jazz (cette formation est toujours existante aujourd’hui).\r\n\r\nEn 2017, après avoir quitté le groupe EILEEN, Kaëlig, en compagnie de son fils Enogad (violoniste aussi), forme le Duo « FIDHEALL » (« violon » en gaëlique). Avec leurs violons, bouzouki, flûte et chants, ils proposent aujourd’hui des concerts de musique traditionnelle irlandaise.\r\n\r\nDepuis 2019, Frenchy Blues ! Avec la complicité de Henri Letouche (guitare solo) et Didier Geffroy (basse).\r\n\r\nC’est la passion pour le blues et l’écriture de chansons, la création d’un récital de 16 nouvelles chansons et des concerts en préparation !" },
  { id: 4, first_name: "Aurore", last_name: "Bréger", status: 0, description: "Aurore joue de la harpe celtique depuis l’âge de douze ans.\r\n\r\nSon parcours de musicienne l’a amenée à se produire régulièrement en France ou à l’étranger (tournées au Brésil, USA, Mexique, Australie…etc), en solo et en formation : trio de harpes Fileuses de Nuit, Quartet Alain Pennec, duo avec le flûtiste Erwan Hamon…\r\n\r\nElle a également participé à plusieurs CD et recueils de partitions, fruits de son approche singulière de la musique traditionnelle ainsi que de son intérêt pour la pédagogie de l’instrument.\r\n\r\nSi Aurore puise son inspiration aux sources des répertoires traditionnels, sa musique n’en est pas moins créative, empreinte d’une couleur particulière et ses compositions sont le reflet de son énergie et de sa sensibilité." },
  { id: 5, first_name: "Pierre", last_name:-"Josquin Goisbault", status: 0, description: "Pierre-Josquin Goisbault entretient un lien intime avec les cordes. Tout d’abord celles du violoncelle, puis la guitare et la voix qui prennent une place centrale dans son parcours.La composition de chansons arrive très vite, autour de 12 ans, puis toutes les années à venir.\r\n\r\nBercé au son de la chanson française, de la pop anglo-saxonne et surtout de la folk, Pierre-Josquin s’oriente jeune adulte, vers l’Irlande et sa musique traditionnelle. Il développe un jeu d’accompagnement harmonique et rythmique, puis intègre le banjo, la mandoline ou le dulcimer à ses cartes musicales. \r\n\r\nAprès 20 ans d’expériences musicales riches en apprentissages et en rencontres (chanson, pop, traditionnelles, folk…) il se consacre à un  nouveau répertoire de chansons, en français cette fois-ci, réunissant ses principales influences et explorant l’intime de l’être, les chemins empruntés et les joies quotidiennes. Ce projet de cœur est mené sous le nom de « JOSQUIN » depuis 2022.\r\n\r\nAussi, Pierre-Josquin échange airs irlandais et chansons avec François Boudet (uilleann pipes, contrebasse) dans le duo IMRAMA. Ils explorent les vastes territoires folk et traditionnels, en laissant une place de cœur aux bourdons et aux ballades chaleureuses. Un répertoire qui se plaît dans les lieux de proximité (chapelles, chez l’habitant, théâtres…)\r\n\r\nPierre-Josquin rejoint au Banjo Ténor l’équipe de l’HaPpY nOiR·e, fanfare participative du pays de Redon, menée par Wenceslas Hervieux.\r\n\r\nAvec Carol Maury, ils réunissent leurs influences respectives et communes, allant du blues au folk, et créent les Macadam Singers, dont le fil conducteur est une balade américaine en chansons de films.\r\n\r\nAvec le flûtiste Jérémie Mignotte, c’est une autre facette de la musique irlandaise qui est abordée : le duo Gentraige, invite aux airs joyeux et dansant, dans une formule sobre et efficace : Guitare dadgad / Flûte traversière. Le duo se fait également quatuor avec François Boudet et Anthony Debray (percussions, bodhràn).\r\n\r\nEn 2019 il co-crée le Collectif d’artistes Arbracames, réunissant des esthétiques variées, dont l’un des points communs est la dimension intimiste et acoustique des propositions. Le collectif propose des programmations culturelles, stages et autres spectacles." },
  { id: 6, first_name: "Chantal", last_name: "Arnould", status: 0, description: "De formation classique (elle est titulaire d’une médaille d’or de Conservatoire régional), Chantal Arnould s’est tournée dans les années 2000 vers les musiques traditionnelles, pour finalement se spécialiser en musique irlandaise.\r\n\r\nSon groupe, « Clonakilty », tourne beaucoup dans toute l’Ile-de-France, la Picardie, la Normandie… Chantal Arnould participe également à des concerts classiques, notamment pour accompagner des chorales dans un quatuor ou un orchestre.\r\n\r\nElle enseigne le violon depuis plus de 20 ans dans des associations et des écoles de musiques municipales.\r\n\r\nPetits et grands, lors de l’apprentissage du violon, peuvent découvrir les répertoires classique, irlandais, écossais, breton… avec quelques incursions dans les musiques de film, le rock, la pop !" },
  { id: 7, first_name: "Nathalie", last_name: "Herczog", status: 0, description: "Musicienne de formation classique au départ, Nathalie effectue ses études de pianiste-solfégiste-chanteuse aux conservatoires de Vannes, Rennes, et Saint-Nazaire.\r\n\r\nDès 1990, elle s’intéresse de très près au jazz, et travaille entre autres, avec Laurence Saltiel, Mark Murphy, Daniel Huck, Régis Huby et et Michèle Hendricks.\r\n\r\nDès 1992, elle intègre différents ensembles en compagnie des principaux jazzmen de la région Bretagne, tels qu’Eric Richard, Jeff Alluin, Patrick Stanislawski, Guillaume Casini, Laurent Genty, Vincent Guérin, ou Pascal Salmon, et participe à de nombreux projets de concerts et albums (Jazz dans les feuilles, Jardin Moderne, Loustiks de l’Akoustik, Antipode, Diapason, Théâtre de Redon, Aman Octet…)\r\n\r\nEn 2005, elle décide de constituer son propre quartet, et se produit régulièrement, en salles et festivals de la région (1ères parties d’Eric Lelann, Les Vendredis du Jazz de Noyal-Châtillon, Jazz Hors Saison de Pontorson, Festival de Gomené, Festival Jazz à l’Ouest, festival Jazz en Rhuys…)\r\n\r\nElle intègre également l’Ensemble Instrumental du Pays de Redon (l’E.I.P.R), et participera à divers projets, dont celui d’Extasis en 2006 : spectacle musical et chorégraphique autour du tango d’Astor Piazzolla.\r\n\r\nS’en suivra la formation d’un trio avec Samuel Miralles et Christian Grimaud : « Sueno de Luz », qui tournera durant 3 ans sur un spectacle mis en scène par Christophe Morin : « Souvenirs d’Argentine ».\r\n\r\nEn 2011, deux nouveaux projets voient le jour: « Girls Talk Jazz » trio (avec Lise Van Dooren et Sophie Druais, qui se transformera en quartet en aôut 2013 à l’occasion de leur rencontre à Marciac avec la « batteuse » Pauline Bourguère), et « Elastic 4tet » ( avec Sébastien Merdrignac, Stéphane Stanger et Boris Cavaroc).\r\n\r\nSuivront une série de concerts en salles et festivals tels que « Jazz au Pays de Redon », Jazz in Langourla, Jazz à l’Ouest, Plouër in Jazz…" },
  { id: 8, first_name: "Joran", last_name: "Marsac", status: 0, description: "" },
  { id: 9, first_name: "Loïc", last_name: "Joucla", status: 0, description: "" },
  { id: 10, first_name: "Youn", last_name: "Lebreton", status: 0, description: "Youn Lebreton est saxophoniste depuis 2018, essentiellement joueur de soprano et ténor. Il joue actuellement dans divers groupes comme Folaod en quartet, ERIS en trio ou bien en duo avec l’accordéoniste Clément Bobinet. De tendance éclectique, Youn s’inspire d’univers variés, allant du classique jazz aux musiques traditionnelles du monde entier." },
  { id: 11, first_name: "Goulven", last_name: "Saout", status: 0, description: "Goulven Saout tombe tout petit dans la culture bretonne, commence par la danse à l’âge de 6 ans, puis l’accordéon diatonique à 9 ans et à ses heures perdues joue un peu de violon et de mandoline. Il enseigne l’accordéon diatonique sur le secteur vannetais en tant qu’animateur musical au sein d’associations à Vannes, Ploeren, Theix, Questembert et Arradon.\r\n\r\nAprès des passages au sein de cercles celtiques (Theix puis Vannes), il joue 5 ans avec le groupe de chants de marins Taillevent et dans de nombreux duos (avec son frère a la bombarde, avec Yannick le Sausse de Follenn au violon…)." },
  { id: 12, first_name: "Yaël", last_name: "Benahim", status: 0, description: "Yaël Benahim a commencé à apprendre l’accordéon diatonique en 2007 au Centre Cuturel Breton avec Françoise Mevel. Après 9 ans de cours il participe à de nombreux stages de musique bretonne et irlandaise. Il suit ensuite des études de musicologie et vient d’obtenir son DEM au Conservatoire de Lannion. Il joue actuellement de l’accordéon dans le groupe LLYM, un groupe connu dans les festoù noz." },
  { id: 13, first_name: "Ronan", last_name: "Robert", status: 0, description: "Ronan Robert est devenu un musicien incontournable en Bretagne. Il a promené son accordéon dans toute la France, en Europe, en Afrique, au Québec, en Asie, en Amérique du sud, lors de différentes tournées avec différentes formations.\r\n\r\nTitulaire du Diplôme d’état de professeur de musique traditionnelle, il a enseigné pendant 10 ans dans différentes écoles de musique avant de se consacrer principalement au spectacle vivant. Devenu musicien professionnel en 1988 au sein du groupe Carré Manchot, il fonde ensuite « Cocktail diatonique » avec la participation de l’accordéoniste Richard Galliano, ainsi que Vertigo, Burn’s duo, Tourmenté d’Amour, Morwenna… Sa curiosité et son ouverture vers différentes influences l’amènent au fil de ses rencontres à créer en 1993 « Les trois saisons », une rencontre entre musiciens traditionnels, de jazz et classiques, en 1996 « Ronan Robert Réunion » en 2002 « Airs », en 2008 « Voyage en Diatonie » avec la création du Noguet Robert Quartet, actuellement en création d’un projet tous publics « Fungo ou l’amour des mots ».\r\n\r\nSon goût pour toutes les formes artistiques l’a conduit vers des esthétiques très différentes : Il joue aujourd’hui avec de nombreux artistes et compagnies aussi variés que la compagnie de danse Pied en Sol, le saxophoniste/talabarder Ronan Le Gourierec et le violoniste Raphaël Chevalier dans Bivoac, les accordéonistes Yann-Fanch Perroches et Fanch Loric dans Cocktail Diatonique, le talabarder Hervé Lelu en duo, l’accordéoniste Yannig Noguet, le contrebassiste Simon Mary et le percussionniste Jérôme Kerihuel dans le Noguet Robert Quartet, le chanteur Gérad Delahayes dans le spectacle « voilà les pirates », la harpiste Murielle Shreder et le flutiste/talabarder Erwan Hamon dans le trio Hamon Robert Schreder" },
  { id: 14, first_name: "Wenceslas", last_name: "Hervieux", status: 0, description: "Originaire du Pays de Redon en Bretagne, Wenceslas Hervieux étudie le piano dès l’âge de 4 ans au Centre Culturel Ti Kendalc’h à St-Vincent-sur-Oust. Cependant il a tendance à préférer jouer d’oreille ce que son environnement lui propose : musique classique, compositeurs des années 70-80, chansons de famille.\r\n\r\nS’étant mis à l’accordéon touches piano, Wenceslas est rapidement sollicité pour jouer de la musique des Balkans, avec le groupe Topolovo notamment.\r\n\r\nWenceslas Hervieux valide en 1998 une maîtrise en création musicale à l’Université Rennes II. Puis coordonne l’école de musique traditionnelle des Pays de Vilaine jusqu’en 2006.\r\n\r\nReconnu comme compositeur et arrangeur, sa “marque de fabrique“ est l’invention de musique construite sur la fusion entre la monodie bretonne et des modèles « exotiques » d’accompagnement de musique populaire, tantôt balkanique (Savaty Orkestar, créé en 2008 au Nouveau Pavillon), tantôt cajun (Gallo Gumbo, créé en 2013 à l’occasion d’échanges culturels entre la Louisiane et la Bretagne).\r\n\r\nImprovisateur, il travaille régulièrement avec les comédiens de la Compagnie Casus Délires. On retrouve également Wenceslas à l’orgue en compagnie d’Erwan Hamon à la bombarde sur l’album Si Vous Dormez. ll développe aussi une écriture spécifique pour le piano en musique traditionnelle pour le duo Chauvel-Hervieux dont l’album « Dis-moi oui ou dis-moi non » sort à l’automne 2019.\r\n\r\nWenceslas compose pour la création « Papic » de la Drolatic Industry dont la sortie est prévue en octobre 2019." },
  { id: 15, first_name: "Mannaïg", last_name: "Le Guevel", status: 0, description: "Mannaïg Le Guevel est passionnée de chant traditionnel de Haute Bretagne. Elle suit un cursus universitaire (Pont Supérieur) sur les musiques traditionnelles à Rennes, chante dans plusieurs groupes de la nouvelle scène Fest-Noz. Elle est également lauréate de la finale Chant à la Bogue 2022." },
  { id: 16, first_name: "Yolaine", last_name: "Delamaire", status: 0, description: "Très tôt, Yolaine est bercée par la musique, plutôt classique dans un premier temps, grâce à sa grand-mère mélomane. Elle choisit le chant comme moyen d’expression musicale.\r\n\r\nAu lycée, elle commence à apprendre le breton et est aussitôt séduite par le chant traditionnel. C’est à l’Université qu’elle pousse la porte d’un atelier de chant traditionnel et fait la rencontre d’Enora De Parscau avec laquelle naît une complicité amicale et vocale. Elle chante en fest-noz, au sein du groupe rennais Obaya, de 2002 à 2005. En 2005, elle créée le groupe Kiñkoñs avec Julien Danielo (accordéoniste) et Thomas Chapron (clarinettiste). Elle y chantera pendant 10 ans. Elle chante également en kan-ha-diskan, avec Enora De Parscau, Méva Guégan et aussi Rozenn Talec. Pendant quelques années elle forme le duo piano-chant avec Yves-Marie Denis. Leur travail se fera essentiellement autour des gwerzioù et des complaintes. \r\n\r\nYolaine se forme beaucoup sur le « terrain » par l’écoute des autres chanteurs et en allant régulièrement fouiller dans les collectages. C’est à partir de 2011 qu’elle décide de suivre des cours de technique vocale auprès de Solenn Diguet, professeure de chant et chanteuse lyrique. Depuis 2019, elle poursuit sa formation de technique vocale auprès d’Emmanuel Pesnot, « luthier des voix ».\r\n\r\nEn 2014, elle forme Silabenn trio aux côtés de Janick Martin (accordéoniste) et d’Erwan Lhermenier (clarinettiste). Leur répertoire de musique à danser ou à écouter, oscille entre la Haute et Basse Bretagne, avec des compositions originales et la volonté d’une écriture musicale fine et colorée.\r\n\r\nL’aventure musicale continue auprès d’Enora De Parscau avec laquelle elle forme Dame Angèle. Mêlant chant et poésie, elles y interprètent leurs propres chansons en breton. Toujours avec Enora, elles forment le trio Lirzhin, une formule Kan-ha-diskan joyeuse qui accueille une troisième commère, Murielle Le Guern.\r\n\r\nDepuis 2019, elle fait partie de Kreiz Breizh Akademi #8, une formation comprenant 12 musiciens dont le travail se fait autour de la musique bretonne et modale, sous la direction de Erik Marchand.\r\n\r\nEn 2022, Yolaine rejoint le collectif L’HaPpY nOiR·e, un cabaret de rue dont la musique déstabulante s’amuse du mélange de New-Orleans et des chansons de Haute-Bretagne. Toujours cette même année, elle partage une nouvelle aventure musicale, Moon Nevez, aux côtés de Paul Lucien, guitariste-chanteur et compositeur de « Folk songs » en y ajoutant sa touche « trad » de chanteuse bretonne.\r\n\r\nDepuis début 2023, Yolaine retrouve un de ses premiers compères, Julien Danielo, pour organiser des fest-deiz en école ! Leur projet s’appelle BIM BAL BOUM !!" },
  { id: 17, first_name: "Maëlle", last_name: "Gédouin", status: 0, description: "Chanteuse et formatrice, passionnée de chant traditionnel de Bretagne, d’improvisation et de polyphonie qu’elle met au service de ces ateliers adultes depuis quelques années (Guichen, Rennes)" },
  { id: 18, first_name: "Matteo", last_name: "Bloyet", status: 0 },
  { id: 19, first_name: "Riwal", last_name: "Raude", status: 0 }
]

teachers.each do |teacher|
  Teacher.create!(teacher)
end
