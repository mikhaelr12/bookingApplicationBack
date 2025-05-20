/* ================================================================
   Berlin
   ================================================================ */
INSERT INTO hotels
(hotel_name, address, rating, image_url, city_id, category_id)
SELECT  t.hotel_name,
        t.address,
        t.rating,
        t.img_url,
        c.id,
        cat.id
FROM (
         VALUES
             ('Berlin Grand Central Hotel',   'Alexanderplatz 1',       8.5, '/img/hotels/berlin_grand_central.jpg'),
             ('Kurfürstendamm Boutique',      'Kurfürstendamm 90',      9.2, '/img/hotels/kurf_boutique.jpg'),
             ('Spree Riverside Inn',          'Friedrichstraße 101',    7.3, '/img/hotels/spree_riverside.jpg'),
             ('Checkpoint Charlie Suites',    'Zimmerstraße 10',        8.0, '/img/hotels/checkpoint_charlie_suites.jpg'),
             ('Tiergarten Palace',            'Straße des 17. Juni 1',  8.6, '/img/hotels/tiergarten_palace.jpg'),
             ('Charlottenburg Residence',     'Schlossstraße 1',        9.1, '/img/hotels/charlottenburg_residence.jpg'),
             ('Mitte City Hotel',             'Unter den Linden 25',    8.4, '/img/hotels/mitte_city.jpg'),
             ('East Side Gallery Hotel',      'Mühlenstraße 70',        7.0, '/img/hotels/east_side_gallery.jpg'),
             ('Tempelhofer Loft Hotel',       'Tempelhofer Damm 5',     8.9, '/img/hotels/tempelhofer_loft.jpg'),
             ('Prenzlauer Berg Garden Hotel', 'Kollwitzstraße 35',      9.2, '/img/hotels/prenzlauer_garden.jpg')
     ) AS t(hotel_name, address, rating, img_url)

         CROSS JOIN LATERAL (
    SELECT id
    FROM   cities
    WHERE  city_name = 'Berlin'
        LIMIT  1
) AS c

CROSS JOIN LATERAL (
SELECT id
FROM   categories
WHERE  category_name = 'Stays'
    LIMIT  1
    ) AS cat;

/* ================================================================
   München
   ================================================================ */
INSERT INTO hotels
(hotel_name, address, rating, image_url, city_id, category_id)
SELECT  t.hotel_name,
        t.address,
        t.rating,
        t.img_url,
        c.id,
        cat.id
FROM (
         VALUES
             ('Munich Central Hotel',        'Bayerstrasse 15',           8.4, '/img/hotels/munich_central.jpg'),
             ('Marienplatz Boutique',        'Marienplatz 5',             7.2, '/img/hotels/marienplatz_boutique.jpg'),
             ('English Garden Palace',       'Hofgarten 3',               8.6, '/img/hotels/english_garden_palace.jpg'),
             ('Schwabing City Suites',       'Hohenzollernstrasse 20',     9.1, '/img/hotels/schwabing_suites.jpg'),
             ('Theresienwiese Inn',          'Theresienhöhe 10',          9.0, '/img/hotels/theresienwiese_inn.jpg'),
             ('Olympiapark Residence',       'Spiridon-Louis-Ring 25',     9.3, '/img/hotels/olympiapark_residence.jpg'),
             ('Isar Riverside Hotel',        'Isartorplatz 2',            7.2, '/img/hotels/isar_riverside.jpg'),
             ('Viktualienmarkt Lodge',       'Viktualienmarkt 8',         7.5, '/img/hotels/viktualienmarkt_lodge.jpg'),
             ('Nymphenburg Castle Hotel',    'Nymphenburger Strasse 1',    6.4, '/img/hotels/nymphenburg_castle.jpg'),
             ('Leopoldstraße Urban Hotel',   'Leopoldstraße 170',         8.9, '/img/hotels/leopold_urban.jpg')
     ) AS t(hotel_name, address, rating, img_url)

         CROSS JOIN LATERAL (
    SELECT id
    FROM   cities
    WHERE  city_name = 'Munich'
        LIMIT  1
) AS c

CROSS JOIN LATERAL (
SELECT id
FROM   categories
WHERE  category_name = 'Stays'
    LIMIT  1
    ) AS cat;

/* ================================================================
   Hamburg
   ================================================================ */
INSERT INTO hotels
(hotel_name, address, rating, image_url, city_id, category_id)
SELECT  t.hotel_name,
        t.address,
        t.rating,
        t.img_url,
        c.id,
        cat.id
FROM (
         VALUES
             ('Elbphilharmonie View Hotel',     'Platz der Deutschen Einheit 4', 9.2, '/img/hotels/elbphilharmonie_view.jpg'),
             ('Speicherstadt Boutique',         'Am Sandtorkai 34',              8.7, '/img/hotels/speicherstadt_boutique.jpg'),
             ('Alster Riverside Inn',           'Jungfernstieg 12',              8.9, '/img/hotels/alster_riverside.jpg'),
             ('St. Pauli Urban Suites',         'Reeperbahn 45',                 7.8, '/img/hotels/pauli_urban_suites.jpg'),
             ('HafenCity Central Hotel',        'Überseeallee 10',               8.3, '/img/hotels/hafencity_central.jpg'),
             ('Blankenese Cliff Residence',     'Sülldorfer Kirchenweg 2',       8.1, '/img/hotels/blankenese_residence.jpg'),
             ('Eppendorf Garden Hotel',         'Eppendorfer Baum 5',            8.5, '/img/hotels/eppendorf_garden.jpg'),
             ('Fischmarkt Harbor Lodge',        'Große Elbstraße 20',            7.9, '/img/hotels/fischmarkt_lodge.jpg'),
             ('Altona Art Hotel',               'Max-Brauer-Allee 50',           8.0, '/img/hotels/altona_art.jpg'),
             ('Hamburg Airport Stay',           'Flughafenstraße 1',             7.7, '/img/hotels/airport_stay.jpg')
     ) AS t(hotel_name, address, rating, img_url)

         CROSS JOIN LATERAL (
    SELECT id
    FROM   cities
    WHERE  city_name = 'Hamburg'
        LIMIT  1
) AS c

CROSS JOIN LATERAL (
SELECT id
FROM   categories
WHERE  category_name = 'Stays'
    LIMIT  1
    ) AS cat;

/* ================================================================
   10 hoteluri în Frankfurt
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Mainhattan Skyline Hotel',        'Mainzer Landstraße 50', 9.0, '/img/hotels/frankfurt_skyline.jpg'),
          ('Zeil Boutique',                   'Zeil 80',               8.4, '/img/hotels/zeil_boutique.jpg'),
          ('Römerplatz Heritage Inn',         'Römerberg 4',           8.7, '/img/hotels/romerplatz_inn.jpg'),
          ('Messe Trade Fair Suites',         'Ludwig-Erhard-Anlage 1',8.3, '/img/hotels/messe_suites.jpg'),
          ('Westend Garden Hotel',            'Palmengartenstr. 2',    8.6, '/img/hotels/westend_garden.jpg'),
          ('Alt-Sachsenhausen Lodge',         'Klappergasse 15',       7.9, '/img/hotels/sachsenhausen_lodge.jpg'),
          ('Eurotower Business Hotel',        'Neue Mainzer Str. 100', 8.2, '/img/hotels/eurotower_business.jpg'),
          ('Höchst Riverside Inn',            'Bolongarostr. 20',      7.8, '/img/hotels/hochst_riverside.jpg'),
          ('Frankfurt Airport Stay',          'Airportstraße 1',       7.7, '/img/hotels/frankfurt_airport.jpg'),
          ('Gallus City Hotel',               'Kleyerstraße 15',       8.1, '/img/hotels/gallus_city.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Frankfurt' LIMIT 1)  AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Cologne
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Cologne Cathedral View',         'Domkloster 1',          9.1, '/img/hotels/cathedral_view.jpg'),
          ('Hohenzollern Riverside Hotel',   'Hohenzollernring 14',   8.5, '/img/hotels/hohenzollern_riverside.jpg'),
          ('Old Town Boutique',              'Alter Markt 8',         8.3, '/img/hotels/altstadt_boutique.jpg'),
          ('Rheinauhafen Harbor Suites',     'Im Zollhafen 5',        8.2, '/img/hotels/rheinauhafen_suites.jpg'),
          ('Ehrenfeld Urban Hotel',          'Venloer Str. 200',      7.9, '/img/hotels/ehrenfeld_urban.jpg'),
          ('Deutz Trade Fair Inn',           'Messeplatz 1',          8.0, '/img/hotels/deutz_inn.jpg'),
          ('Belgian Quarter Residence',      'Brüsseler Platz 3',     8.4, '/img/hotels/belgian_quarter.jpg'),
          ('Cologne Airport Stay',           'Heinrich-Steinmann-Str. 1', 7.6, '/img/hotels/cgn_airport.jpg'),
          ('Rudolfplatz Garden Hotel',       'Habsburgerring 9',      8.1, '/img/hotels/rudolfplatz_garden.jpg'),
          ('Chlodwigplatz Loft Hotel',       'Chlodwigplatz 2',       7.8, '/img/hotels/chlodwigplatz_loft.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Cologne' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Paris
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Montmartre View Hotel',        'Rue Lepic 20',           9.1, '/img/hotels/paris_montmartre.jpg'),
          ('Champs-Élysées Boutique',      'Avenue des Champs-Élysées 75', 8.7, '/img/hotels/paris_champs.jpg'),
          ('Louvre Palace Inn',            'Rue de Rivoli 99',       9.0, '/img/hotels/paris_louvre.jpg'),
          ('Latin Quarter Suites',         'Rue Mouffetard 10',      8.4, '/img/hotels/paris_latin.jpg'),
          ('Eiffel Riverside Hotel',       'Quai Branly 7',          8.9, '/img/hotels/paris_eiffel.jpg'),
          ('Saint-Germain Garden Hotel',   'Boulevard Saint-Germain 110', 8.6, '/img/hotels/paris_germain.jpg'),
          ('Le Marais Urban Lodge',        'Rue Vieille-du-Temple 45', 8.2,'/img/hotels/paris_marais.jpg'),
          ('Opéra Garnier Residence',      'Rue Scribe 8',           8.3, '/img/hotels/paris_opera.jpg'),
          ('Belleville Loft Hotel',        'Rue de Belleville 120',  7.8, '/img/hotels/paris_belleville.jpg'),
          ('Orly Airport Stay',            'Aéroport d\Orly',       7.5, '/img/hotels/paris_orly.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Paris' LIMIT 1)  AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Marseille
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Vieux-Port Harbor Hotel',      'Quai du Port 20',        8.6, '/img/hotels/marseille_port.jpg'),
  ('Notre-Dame de la Garde View',  'Rue Fort du Sanctuaire 1', 8.9,'/img/hotels/marseille_garde.jpg'),
  ('La Canebière Boutique',        'La Canebière 100',       8.2, '/img/hotels/marseille_canebiere.jpg'),
  ('Calanques Beach Resort',       'Route des Calanques 50', 8.3, '/img/hotels/marseille_calanques.jpg'),
  ('Le Panier Heritage Inn',       'Rue du Panier 25',       8.1, '/img/hotels/marseille_panier.jpg'),
  ('Euroméditerranée Suites',      'Boulevard de Dunkerque 60', 7.9,'/img/hotels/marseille_euromed.jpg'),
  ('Prado Seaside Hotel',          'Avenue du Prado 150',    7.8, '/img/hotels/marseille_prado.jpg'),
  ('Cours Julien Urban Lodge',     'Cours Julien 12',        7.7, '/img/hotels/marseille_julien.jpg'),
  ('Estaque Marina Inn',           'Chemin de la Nerthe 5',  7.5, '/img/hotels/marseille_estaque.jpg'),
  ('Marseille Airport Stay',       'Aéroport MP2',           7.4, '/img/hotels/marseille_airport.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Marseille' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Lyon
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Vieux Lyon Heritage Hotel',    'Rue du Bœuf 30',         8.9, '/img/hotels/lyon_vieux.jpg'),
  ('Fourvière Hill Suites',        'Montée Nicolas de Lange 5', 8.5, '/img/hotels/lyon_fourviere.jpg'),
  ('Presqu Île Boutique',         'Rue de la République 40', 8.3, '/img/hotels/lyon_presquile.jpg'),
          ('Parc de la Tête dOr Inn',    'Boulevard des Belges 70', 8.1, '/img/hotels/lyon_tetedor.jpg'),
  ('Confluence Riverside Hotel',   'Quai Perrache 15',       8.0, '/img/hotels/lyon_confluence.jpg'),
  ('Part-Dieu Station Lodge',      'Rue de la Villette 3',   7.8, '/img/hotels/lyon_partdieu.jpg'),
  ('La Croix-Rousse Loft',         'Boulevard de la Croix-Rousse 90', 7.7, '/img/hotels/lyon_croixrousse.jpg'),
  ('Gerland Park Residence',       'Avenue Tony Garnier 20', 7.6, '/img/hotels/lyon_gerland.jpg'),
  ('Bellecour Garden Hotel',       'Place Bellecour 2',      8.2, '/img/hotels/lyon_bellecour.jpg'),
  ('Lyon Airport Stay',            'Aéroport Saint-Exupéry', 7.4, '/img/hotels/lyon_airport.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Lyon' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Toulouse
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Capitole Square Hotel',        'Place du Capitole 4',    8.7, '/img/hotels/toulouse_capitole.jpg'),
  ('Canal du Midi Riverside',      'Boulevard Bonrepos 16',  8.2, '/img/hotels/toulouse_canal.jpg'),
  ('Saint-Sernin Heritage Inn',    'Place Saint-Sernin 3',   8.3, '/img/hotels/toulouse_sernin.jpg'),
  ('Cité de lEspace Suites',     'Avenue Jean Gonord 1',   8.1, '/img/hotels/toulouse_space.jpg'),
          ('Les Carmes Boutique',          'Rue des Filatiers 20',   7.9, '/img/hotels/toulouse_carmes.jpg'),
          ('Matabiau Station Lodge',       'Rue Bayard 10',          7.7, '/img/hotels/toulouse_station.jpg'),
          ('Purpan Garden Hotel',          'Avenue de Grande-Bretagne 50', 7.6, '/img/hotels/toulouse_purpan.jpg'),
          ('Saint-Cyprien Urban Hotel',    'Allées Charles de Fitte 25', 7.8, '/img/hotels/toulouse_cyprien.jpg'),
          ('Lardenne Country Inn',         'Route de Saint-Simon 60', 7.5, '/img/hotels/toulouse_lardenne.jpg'),
          ('Toulouse Airport Stay',        'Aéroport de Blagnac',    7.4, '/img/hotels/toulouse_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Toulouse' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Nice
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Promenade des Anglais Hotel',  'Promenade des Anglais 99', 9.0, '/img/hotels/nice_promenade.jpg'),
          ('Old Town Boutique',            'Rue de la Préfecture 10',  8.4, '/img/hotels/nice_oldtown.jpg'),
          ('Castle Hill View Suites',      'Montée du Château 5',      8.6, '/img/hotels/nice_castle.jpg'),
          ('Port Lympia Harbor Inn',       'Quai Lunel 20',            8.2, '/img/hotels/nice_port.jpg'),
          ('Cimiez Garden Hotel',          'Boulevard de Cimiez 80',   8.1, '/img/hotels/nice_cimiez.jpg'),
          ('Masséna Square Residence',     'Place Masséna 7',          8.3, '/img/hotels/nice_massena.jpg'),
          ('Musiciens Quarter Lodge',      'Rue Rossini 25',           7.9, '/img/hotels/nice_musiciens.jpg'),
          ('Arenas Business Hotel',        'Boulevard René Cassin 15', 7.8, '/img/hotels/nice_arenas.jpg'),
          ('Nice Airport Stay',            'Aéroport NCE',             7.5, '/img/hotels/nice_airport.jpg'),
          ('Fabron Beach Resort',          'Avenue de Fabron 30',      7.7, '/img/hotels/nice_fabron.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Nice' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;
/* ================================================================
   10 hoteluri în Rome
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Colosseum Heritage Hotel',    'Via dei Fori Imperiali 10', 8.9, '/img/hotels/rome_colosseum.jpg'),
          ('Vatican View Inn',            'Via della Conciliazione 15',8.6, '/img/hotels/rome_vatican.jpg'),
          ('Trastevere Boutique',         'Via della Lungaretta 23',   8.4, '/img/hotels/rome_trastevere.jpg'),
          ('Spanish Steps Suites',        'Piazza di Spagna 5',        8.8, '/img/hotels/rome_spanish_steps.jpg'),
          ('Pantheon Palace Hotel',       'Piazza della Rotonda 4',    8.7, '/img/hotels/rome_pantheon.jpg'),
          ('Trevi Fountain Residence',    'Via del Lavatore 30',       8.3, '/img/hotels/rome_trevi.jpg'),
          ('Testaccio Urban Lodge',       'Via di Monte Testaccio 22', 7.9, '/img/hotels/rome_testaccio.jpg'),
          ('Termini Station Hotel',       'Via Marsala 20',            7.8, '/img/hotels/rome_termini.jpg'),
          ('Appia Antica Country Inn',    'Via Appia Antica 200',      7.6, '/img/hotels/rome_appia.jpg'),
          ('Fiumicino Airport Stay',      'Aeroporto FCO',             7.4, '/img/hotels/rome_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Rome' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Milan
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Duomo Cathedral View',        'Piazza del Duomo 3',       9.0, '/img/hotels/milan_duomo.jpg'),
          ('Galleria Vittorio Suites',    'Galleria Vittorio 1',      8.8, '/img/hotels/milan_galleria.jpg'),
          ('Brera Boutique Hotel',        'Via Brera 20',             8.4, '/img/hotels/milan_brera.jpg'),
          ('Navigli Riverside Inn',       'Alzaia Naviglio Grande 50',8.3, '/img/hotels/milan_navigli.jpg'),
          ('Porta Nuova Business Hotel',  'Piazza Gae Aulenti 10',    8.6, '/img/hotels/milan_porta_nuova.jpg'),
          ('San Siro Stadium Stay',       'Via Piccolomini 5',        7.9, '/img/hotels/milan_sansiro.jpg'),
          ('Corso Como Urban Lodge',      'Corso Como 12',            8.2, '/img/hotels/milan_corsocomo.jpg'),
          ('Isola Loft Hotel',            'Via Borsieri 30',          7.7, '/img/hotels/milan_isola.jpg'),
          ('Segrate Airport Hotel',       'Aeroporto LIN',            7.5, '/img/hotels/milan_linate.jpg'),
          ('Sempione Park Garden Inn',    'Viale Gadio 2',            8.1, '/img/hotels/milan_sempione.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Milan' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Naples
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Spaccanapoli Heritage Inn',    'Via dei Tribunali 80',     8.7, '/img/hotels/naples_spaccanapoli.jpg'),
          ('Castel dell Ovo View',        'Via Partenope 15',        8.5, '/img/hotels/naples_castelovo.jpg'),
  ('Vomero Boutique Hotel',        'Via Scarlatti 10',        8.3, '/img/hotels/naples_vomero.jpg'),
  ('Mergellina Seaside Lodge',     'Via Caracciolo 40',       8.0, '/img/hotels/naples_mergellina.jpg'),
  ('San Carlo Opera Suites',       'Via San Carlo 5',         8.4, '/img/hotels/naples_sancarlo.jpg'),
  ('Posillipo Cliff Residence',    'Via Petrarca 60',         8.2, '/img/hotels/naples_posillipo.jpg'),
  ('Garibaldi Station Hotel',      'Piazza Garibaldi 3',      7.8, '/img/hotels/naples_garibaldi.jpg'),
  ('Pompei Gateway Inn',           'Via Nazionale 200',       7.6, '/img/hotels/naples_pompei.jpg'),
  ('Capodichino Airport Stay',     'Aeroporto NAP',           7.4, '/img/hotels/naples_airport.jpg'),
  ('Fuorigrotta Urban Hotel',      'Viale Marconi 25',        7.7, '/img/hotels/naples_fuorigrotta.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Naples' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Florence
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Duomo View Palace',           'Piazza del Duomo 10',      9.1, '/img/hotels/florence_duomo.jpg'),
  ('Ponte Vecchio Riverside',     'Lungarno Archibusieri 4',  8.8, '/img/hotels/florence_ponte.jpg'),
  ('Uffizi Boutique Hotel',       'Via dei Neri 20',          8.5, '/img/hotels/florence_uffizi.jpg'),
  ('Santa Croce Suites',          'Piazza Santa Croce 2',     8.4, '/img/hotels/florence_croce.jpg'),
  ('San Lorenzo Market Inn',      'Via Dell Ariento 15',     8.0, '/img/hotels/florence_sanlorenzo.jpg'),
          ('Oltrarno Garden Hotel',       'Via Romana 30',            7.9, '/img/hotels/florence_oltrarno.jpg'),
          ('Fortezza da Basso Lodge',     'Viale Strozzi 1',          7.7, '/img/hotels/florence_fortezza.jpg'),
          ('Piazzale Michelangelo View',  'Viale Michelangiolo 80',   8.2, '/img/hotels/florence_michelangelo.jpg'),
          ('Peretola Airport Stay',       'Aeroporto FLR',            7.5, '/img/hotels/florence_airport.jpg'),
          ('Boboli Gardens Residence',    'Via de Serragli 110',    7.8, '/img/hotels/florence_boboli.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Florence' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Venice
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Grand Canal Palace',           'Cannaregio 100',          9.2, '/img/hotels/venice_canal.jpg'),
  ('Rialto Bridge Boutique',       'San Polo 20',             8.8, '/img/hotels/venice_rialto.jpg'),
  ('St. Marks Square Inn',       'Piazza San Marco 3',      9.0, '/img/hotels/venice_sanmarco.jpg'),
          ('Dorsoduro Riverside Hotel',    'Fondamenta Zattere 50',   8.4, '/img/hotels/venice_dorsoduro.jpg'),
          ('Murano Glass Residence',       'Fondamenta Vetrai 25',    8.1, '/img/hotels/venice_murano.jpg'),
          ('Lido Beach Resort',            'Lungomare Marconi 40',    8.0, '/img/hotels/venice_lido.jpg'),
          ('Giudecca Garden Hotel',        'Calle Michelangelo 15',   7.8, '/img/hotels/venice_giudecca.jpg'),
          ('Cannaregio Loft',              'Fondamenta Misericordia 60', 7.7, '/img/hotels/venice_cannaregio.jpg'),
          ('Venice Airport Stay',          'Aeroporto VCE',           7.5, '/img/hotels/venice_airport.jpg'),
          ('Sant Elena Park Inn',         'Viale Doge 10',           7.6, '/img/hotels/venice_santelena.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Venice' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Madrid
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Puerta del Sol Palace',        'Puerta del Sol 1',        9.0, '/img/hotels/madrid_sol.jpg'),
  ('Gran Vía Boutique',            'Gran Vía 50',             8.7, '/img/hotels/madrid_granvia.jpg'),
  ('Retiro Park Suites',           'Calle Alfonso XII 20',    8.5, '/img/hotels/madrid_retiro.jpg'),
  ('Plaza Mayor Heritage Inn',     'Plaza Mayor 4',           8.3, '/img/hotels/madrid_mayor.jpg'),
  ('Malasaña Urban Hotel',         'Calle Fuencarral 80',     8.1, '/img/hotels/madrid_malasana.jpg'),
  ('Chamartín Station Lodge',      'Calle Agustín de Foxá 3', 7.9, '/img/hotels/madrid_chamartin.jpg'),
  ('Salamanca District Residence', 'Calle Serrano 110',       8.2, '/img/hotels/madrid_salamanca.jpg'),
  ('La Latina Loft Hotel',         'Cava Baja 25',            7.8, '/img/hotels/madrid_latina.jpg'),
  ('Barajas Airport Stay',         'Aeroporto MAD',           7.6, '/img/hotels/madrid_airport.jpg'),
  ('Casa de Campo Garden Inn',     'Paseo de la Puerta 10',   7.7, '/img/hotels/madrid_casacampo.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Madrid' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Barcelona
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('La Rambla Boutique',           'La Rambla 105',           8.8, '/img/hotels/barcelona_rambla.jpg'),
  ('Sagrada Família View Hotel',   'Carrer de Mallorca 410',  9.1, '/img/hotels/barcelona_sagrada.jpg'),
  ('Barceloneta Beach Inn',        'Passeig Marítim 30',      8.4, '/img/hotels/barcelona_beach.jpg'),
  ('Gothic Quarter Suites',        'Carrer dels Banys Nous 5',8.3, '/img/hotels/barcelona_gothic.jpg'),
  ('Eixample Garden Hotel',        'Carrer d Aragó 200',     8.2, '/img/hotels/barcelona_eixample.jpg'),
    ('Camp Nou Stadium Lodge',       'Carrer d Arístides Maillol 12', 7.9, '/img/hotels/barcelona_campnou.jpg'),
  ('Montjuïc Hill Residence',      'Avinguda de Miramar 20',  8.0, '/img/hotels/barcelona_montjuic.jpg'),
  ('El Born Urban Hotel',          'Passeig del Born 15',     7.8, '/img/hotels/barcelona_born.jpg'),
  ('Diagonal Mar Suites',          'Avinguda Diagonal 100',   7.7, '/img/hotels/barcelona_diagonal.jpg'),
  ('El Prat Airport Stay',         'Aeroporto BCN',           7.5, '/img/hotels/barcelona_airport.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Barcelona' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Valencia
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('City of Arts & Sciences Hotel', 'Av. del Professor López Piñero 7', 8.9,'/img/hotels/valencia_arts.jpg'),
  ('Turia Riverside Inn',           'Paseo de la Alameda 10',          8.3,'/img/hotels/valencia_turia.jpg'),
  ('El Carmen Boutique',            'Carrer de Serrans 5',             8.1,'/img/hotels/valencia_carmen.jpg'),
  ('Malvarrosa Beach Resort',       'Passeig de Neptú 30',             8.0,'/img/hotels/valencia_beach.jpg'),
  ('Ruzafa Urban Hotel',            'Calle de Sueca 60',               7.9,'/img/hotels/valencia_ruzafa.jpg'),
  ('Ciutat Vella Suites',           'Carrer de Sant Ferran 12',        7.8,'/img/hotels/valencia_ciutat.jpg'),
  ('Bioparc Garden Lodge',          'Avenida Pío Baroja 5',            7.6,'/img/hotels/valencia_bioparc.jpg'),
  ('Estació del Nord Inn',          'Carrer d Alacant 20',            7.7,'/img/hotels/valencia_nord.jpg'),
          ('Albufera Lake Residence',       'Carrer de la Devesa 15',          7.5,'/img/hotels/valencia_albufera.jpg'),
          ('Valencia Airport Stay',         'Aeroporto VLC',                   7.4,'/img/hotels/valencia_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Valencia' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Seville
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Giralda Tower View',           'Calle Mateos Gago 15',    8.9,'/img/hotels/seville_giralda.jpg'),
          ('Santa Cruz Boutique',          'Calle Santa Teresa 3',    8.5,'/img/hotels/seville_santacruz.jpg'),
          ('Alcázar Palace Inn',           'Patio de Banderas 4',     8.7,'/img/hotels/seville_alcazar.jpg'),
          ('Triana Riverside Hotel',       'Calle Betis 25',          8.2,'/img/hotels/seville_triana.jpg'),
          ('Plaza de España Suites',       'Avenida de Isabel la Católica 1', 8.3,'/img/hotels/seville_plaza.jpg'),
          ('Macarena Urban Lodge',         'Calle San Luis 100',      7.9,'/img/hotels/seville_macarena.jpg'),
          ('Isla de la Cartuja Residence', 'Calle Leonardo da Vinci 10', 7.8,'/img/hotels/seville_cartuja.jpg'),
          ('Nervión Garden Hotel',         'Avenida Eduardo Dato 45', 7.7,'/img/hotels/seville_nervion.jpg'),
          ('Seville Airport Stay',         'Aeroporto SVQ',           7.5,'/img/hotels/seville_airport.jpg'),
          ('Maria Luisa Park Inn',         'Paseo de las Delicias 20',7.6,'/img/hotels/seville_park.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Seville' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Bilbao
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Guggenheim Riverside Hotel',   'Avenida Abandoibarra 4',  8.8,'/img/hotels/bilbao_guggenheim.jpg'),
          ('Casco Viejo Heritage Inn',     'Calle Somera 12',         8.3,'/img/hotels/bilbao_casco.jpg'),
          ('San Mamés Stadium Lodge',      'Calle Luis Briñas 18',    8.2,'/img/hotels/bilbao_sanmames.jpg'),
          ('Bilbao La Vieja Loft',         'Calle San Francisco 40',  7.9,'/img/hotels/bilbao_lavieja.jpg'),
          ('Zorrozaurre Riverside Suites', 'Ribera de Deusto 20',     7.8,'/img/hotels/bilbao_zorrozaurre.jpg'),
          ('Deusto University Hotel',      'Avenida de las Universidades 5', 7.7,'/img/hotels/bilbao_deusto.jpg'),
          ('Abando Garden Hotel',          'Calle Colón de Larreátegui 15', 7.6,'/img/hotels/bilbao_abando.jpg'),
          ('Begoña Urban Inn',             'Calle Begoña 10',         7.5,'/img/hotels/bilbao_begona.jpg'),
          ('Bilbao Airport Stay',          'Aeroporto BIO',           7.4,'/img/hotels/bilbao_airport.jpg'),
          ('Artxanda Hill Residence',      'Camino Enekuri-Artxanda 30',7.4,'/img/hotels/bilbao_artxanda.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Bilbao' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;


/* ================================================================
   10 hoteluri în Amsterdam
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Canal View Palace',              'Prinsengracht 12',      9.3, '/img/hotels/canal_palace.jpg'),
          ('Jordaan Boutique Hotel',         'Egelantiersgracht 50',  8.9, '/img/hotels/jordaan_boutique.jpg'),
          ('Museum Quarter Inn',             'Museumplein 1',         8.5, '/img/hotels/museum_quarter_inn.jpg'),
          ('Dam Square Grand',               'Dam 7',                 8.8, '/img/hotels/dam_square_grand.jpg'),
          ('Vondelpark Garden Suites',       'Vondelstraat 40',       8.4, '/img/hotels/vondelpark_suites.jpg'),
          ('Centraal Station Lodge',         'Stationsplein 2',       8.1, '/img/hotels/centraal_station_lodge.jpg'),
          ('De Pijp Urban Hotel',            'Albert Cuypstraat 10',  7.9, '/img/hotels/de_pijp_urban.jpg'),
          ('Rembrandtplein Residence',       'Rembrandtplein 5',      8.2, '/img/hotels/rembrandt_residence.jpg'),
          ('IJ Waterfront Hotel',            'Piet Heinkade 20',      8.0, '/img/hotels/ij_waterfront.jpg'),
          ('Leidseplein Loft',               'Leidseplein 9',         7.8, '/img/hotels/leidseplein_loft.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Amsterdam' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Rotterdam
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Erasmus Bridge View',            'Maaskade 1',            8.7, '/img/hotels/erasmus_bridge.jpg'),
          ('Markthal Boutique',              'Dominee Jan Scharpstraat 10', 8.3, '/img/hotels/markthal_boutique.jpg'),
          ('Cube House Suites',              'Overblaak 70',          8.4, '/img/hotels/cube_house_suites.jpg'),
          ('Kop van Zuid Riverside',         'Wilhelminakade 25',     8.5, '/img/hotels/kop_van_zuid.jpg'),
          ('Centraal Station Hotel',        'Stationsplein 1',       8.2, '/img/hotels/rtm_central.jpg'),
          ('Euromast Panorama Inn',          'Parkhaven 20',          8.1, '/img/hotels/euromast_panorama.jpg'),
          ('Delfshaven Heritage Lodge',      'Voorhaven 10',          7.9, '/img/hotels/delfshaven_lodge.jpg'),
          ('Rotterdam Harbor Suites',        'Willemskade 15',        8.0, '/img/hotels/harbor_suites.jpg'),
          ('Blaak Urban Hotel',              'Blaak 25',              7.8, '/img/hotels/blaak_urban.jpg'),
          ('Ahoy Arena Stay',                'Zuidplein 60',          7.7, '/img/hotels/ahoy_arena.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Rotterdam' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în The Hague
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Binnenhof Grand Hotel',          'Binnenhof 1',           8.8, '/img/hotels/binnenhof_grand.jpg'),
          ('Scheveningen Beach Resort',      'Strandweg 30',          8.6, '/img/hotels/scheveningen_resort.jpg'),
          ('Peace Palace Suites',            'Carnegieplein 2',       8.5, '/img/hotels/peace_palace_suites.jpg'),
          ('Mauritshuis Boutique',           'Plein 29',              8.3, '/img/hotels/mauritshuis_boutique.jpg'),
          ('Den Haag City Hotel',            'Grote Marktstraat 22',  8.0, '/img/hotels/denhaag_city.jpg'),
          ('World Forum Residence',          'Churchillplein 10',     7.9, '/img/hotels/world_forum_residence.jpg'),
          ('Hofvijver Lake Inn',             'Korte Vijverberg 4',    8.1, '/img/hotels/hofvijver_inn.jpg'),
          ('Haagse Bos Garden Hotel',        'Haagse Boslaan 3',      7.8, '/img/hotels/haagse_bos.jpg'),
          ('Noordeinde Palace Hotel',        'Noordeinde 68',         8.2, '/img/hotels/noordeinde_palace.jpg'),
          ('Clingendael Country Lodge',      'Wassenaarseweg 40',     7.7, '/img/hotels/clingendael_lodge.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'The Hague' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   10 hoteluri în Utrecht
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Dom Tower View Hotel',          'Domplein 5',          8.8, '/img/hotels/utrecht_dom.jpg'),
          ('Oudegracht Riverside Inn',      'Oudegracht 120',      8.5, '/img/hotels/utrecht_oude.jpg'),
          ('Centraal Station Suites',       'Stationsplein 10',    8.1, '/img/hotels/utrecht_station.jpg'),
          ('Museumkwartier Boutique',       'Achter de Dom 20',    8.3, '/img/hotels/utrecht_museum.jpg'),
          ('Jaarbeurs City Hotel',          'Jaarbeursplein 8',    7.9, '/img/hotels/utrecht_jaarbeurs.jpg'),
          ('Lombok Urban Hotel',            'Kanaalweg 15',        7.7, '/img/hotels/utrecht_lombok.jpg'),
          ('Hoog Catharijne Residence',     'Godebaldkwartier 50', 8.0, '/img/hotels/utrecht_hoog.jpg'),
          ('Nieuwegracht Garden Inn',       'Nieuwegracht 25',     8.2, '/img/hotels/utrecht_nieuwe.jpg'),
          ('Leidsche Rijn Loft',            'Parkzichtlaan 1',     7.8, '/img/hotels/utrecht_leidsche.jpg'),
          ('Vaartsche Rijn Harbor Hotel',   'Heuveloord 10',       7.6, '/img/hotels/utrecht_vaartsche.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Utrecht' LIMIT 1)  AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   10 hoteluri în Eindhoven
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Philips Light District Hotel',  'Emmasingel 20',        8.4, '/img/hotels/eindhoven_philips.jpg'),
          ('Strijp-S Urban Suites',         'Torenallee 45',        8.0, '/img/hotels/eindhoven_strijp.jpg'),
          ('Evoluon Conference Inn',        'Noord Brabantlaan 1',  8.1, '/img/hotels/eindhoven_evoluon.jpg'),
          ('Van Abbemuseum Boutique',       'Bilderdijklaan 15',    8.3, '/img/hotels/eindhoven_abbe.jpg'),
          ('High Tech Campus Residence',    'High Tech Campus 60',  7.9, '/img/hotels/eindhoven_htc.jpg'),
          ('Woensel Market Hotel',          'Kruisstraat 120',      7.7, '/img/hotels/eindhoven_woensel.jpg'),
          ('Tongelreep Sport Hotel',        'Antoon Coolenlaan 5',  7.8, '/img/hotels/eindhoven_tongelreep.jpg'),
          ('De Bergen Garden Inn',          'Kleine Berg 25',       8.2, '/img/hotels/eindhoven_bergen.jpg'),
          ('Eindhoven Airport Stay',        'Luchthavenweg 1',      7.6, '/img/hotels/eindhoven_airport.jpg'),
          ('Genneper Parken Lodge',         'Genneperweg 8',        7.5, '/img/hotels/eindhoven_genneper.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Eindhoven' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Brussels
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Grand Place Heritage Hotel',    'Grand-Place 1',          9.0, '/img/hotels/brussels_grand.jpg'),
          ('EU Quarter Business Inn',       'Rue de la Loi 50',       8.6, '/img/hotels/brussels_eu.jpg'),
          ('Atomium View Suites',           'Avenue de l Atomium',   8.5, '/img/hotels/brussels_atomium.jpg'),
  ('Sablon Boutique',               'Rue des Sablons 15',     8.3, '/img/hotels/brussels_sablon.jpg'),
  ('Ixelles Garden Hotel',          'Chaussée de Wavre 200',  8.1, '/img/hotels/brussels_ixelles.jpg'),
  ('Laeken Royal Residence',        'Rue Royale 150',         8.2, '/img/hotels/brussels_laeken.jpg'),
  ('Manneken-Pis Urban Lodge',      'Rue du Chêne 5',         7.9, '/img/hotels/brussels_pis.jpg'),
  ('Avenue Louise Palace',          'Avenue Louise 250',      8.4, '/img/hotels/brussels_louise.jpg'),
  ('Brussels Midi Station Hotel',   'Avenue Fonsny 10',       7.8, '/img/hotels/brussels_midi.jpg'),
  ('Canal District Loft',           'Quai des Charbonnages 30',7.6, '/img/hotels/brussels_canal.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Brussels' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Antwerp
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Grote Markt Boutique',          'Grote Markt 7',          8.6, '/img/hotels/antwerp_grote.jpg'),
  ('Diamond District Suites',       'Appelmansstraat 31',     8.4, '/img/hotels/antwerp_diamond.jpg'),
  ('MAS Riverside Hotel',           'Hanzestedenplaats 1',    8.3, '/img/hotels/antwerp_mas.jpg'),
  ('Meir Shopping Inn',             'Meir 40',                8.1, '/img/hotels/antwerp_meir.jpg'),
  ('Zoo Garden Residence',          'Koningin Astridplein',   8.0, '/img/hotels/antwerp_zoo.jpg'),
  ('Het Eilandje Harbor Lodge',     'Kattendijkdok 15',       7.9, '/img/hotels/antwerp_eilandje.jpg'),
  ('Antwerp Central Station Hotel', 'Koningin Astridplein 27',8.2, '/img/hotels/antwerp_station.jpg'),
  ('Sint-Anna Beach Resort',        'Beatrijslaan 20',        7.8, '/img/hotels/antwerp_beach.jpg'),
  ('Berchem Urban Hotel',           'Statiestraat 125',       7.7, '/img/hotels/antwerp_berchem.jpg'),
  ('Linkeroever Park Inn',          'Frederik van Eedenplein 10',7.6,'/img/hotels/antwerp_park.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Antwerp' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Ghent
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Gravensteen Castle Hotel',      'Sint-Veerleplein 1',     8.8, '/img/hotels/ghent_gravensteen.jpg'),
  ('Korenlei Riverside Inn',        'Korenlei 10',            8.5, '/img/hotels/ghent_korenlei.jpg'),
  ('Patershol Boutique',            'Kraanlei 20',            8.4, '/img/hotels/ghent_patershol.jpg'),
  ('Vrijdagmarkt Loft Hotel',       'Vrijdagmarkt 30',        8.1, '/img/hotels/ghent_vrijdagmarkt.jpg'),
  ('Citadelpark Garden Hotel',      'Citadelpark 5',          8.0, '/img/hotels/ghent_citadel.jpg'),
  ('Gent-Sint-Pieters Lodge',       'Koningin Fabiolalaan 8', 7.8, '/img/hotels/ghent_station.jpg'),
  ('Design Museum Residence',       'Jan Breydelstraat 8',    8.2, '/img/hotels/ghent_design.jpg'),
  ('Blaarmeersen Lake Resort',      'Zuiderlaan 15',          7.9, '/img/hotels/ghent_blaarmeersen.jpg'),
  ('Portus Ganda Harbor Suites',    'Voorhoutkaai 30',        7.7, '/img/hotels/ghent_portus.jpg'),
  ('Sint-Baafs Cathedral View',     'Sint-Baafsplein 3',      7.8, '/img/hotels/ghent_cathedral.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Ghent' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Bruges
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('Markt Square Heritage',         'Markt 1',                9.1, '/img/hotels/bruges_markt.jpg'),
  ('Canal View Boutique',           'Groenerei 10',           8.8, '/img/hotels/bruges_canal.jpg'),
  ('Belfry Tower Inn',              'Burg 5',                 8.6, '/img/hotels/bruges_belfry.jpg'),
  ('Minnewater Lake Suites',        'Minnewater 7',           8.4, '/img/hotels/bruges_lake.jpg'),
  ('Sint-Anna Garden Hotel',        'Carmersstraat 25',       8.2, '/img/hotels/bruges_sintanna.jpg'),
  ('Begijnhof Residence',           'Wijngaardstraat 15',     8.0, '/img/hotels/bruges_begijnhof.jpg'),
  ('Zand Urban Lodge',              'Het Zand 30',            7.9, '/img/hotels/bruges_zand.jpg'),
  ('Seabruges Harbor Hotel',        'Zeedijk 200',            7.8, '/img/hotels/bruges_sea.jpg'),
  ('Bruges Station Stay',           'Stationsplein 5',        7.6, '/img/hotels/bruges_station.jpg'),
  ('Sint-Michiels Country Inn',     'Gistelse Steenweg 100',  7.5, '/img/hotels/bruges_michiels.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Bruges' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Charleroi
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
  ('City Center Boutique',          'Boulevard Tirou 50',     8.4, '/img/hotels/charleroi_center.jpg'),
  ('Saint-Christophe Suites',       'Rue de la Montagne 20',  8.1, '/img/hotels/charleroi_christophe.jpg'),
  ('Rive Gauche Riverside Inn',     'Quai Arthur Rimbaud 5',  8.0, '/img/hotels/charleroi_rive.jpg'),
  ('Spirou Stadium Hotel',          'Avenue de l Europe 1',  7.8, '/img/hotels/charleroi_spirou.jpg'),
          ('Gilly Garden Lodge',            'Rue de Gilly 120',       7.7, '/img/hotels/charleroi_gilly.jpg'),
          ('Marchienne Canal Hotel',        'Rue de la Station 10',   7.6, '/img/hotels/charleroi_canal.jpg'),
          ('Aéropole Business Inn',         'Avenue Georges Lemaître 15', 7.5,'/img/hotels/charleroi_aeropole.jpg'),
          ('Lodelinsart Urban Hotel',       'Chaussée de Bruxelles 200',  7.4,'/img/hotels/charleroi_lodelinsart.jpg'),
          ('Charleroi Airport Stay',        'Airport CRL',            7.3, '/img/hotels/charleroi_airport.jpg'),
          ('Monceau-sur-Sambre Residence',  'Rue de Monceau 40',      7.2, '/img/hotels/charleroi_monceau.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Charleroi' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Stockholm
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Gamla Stan Heritage Inn',       'Stora Nygatan 12',      9.1, '/img/hotels/stockholm_gamlastan.jpg'),
          ('Djurgården Riverside Hotel',    'Djurgårdsvägen 40',     8.7, '/img/hotels/stockholm_djurgarden.jpg'),
          ('Södermalm Urban Lodge',         'Götgatan 110',          8.4, '/img/hotels/stockholm_sodermalm.jpg'),
          ('Östermalm Boutique',            'Birger Jarlsgatan 25',  8.6, '/img/hotels/stockholm_ostermalm.jpg'),
          ('Vasa Museum View',              'Galärvarvsvägen 10',    8.5, '/img/hotels/stockholm_vasa.jpg'),
          ('Kungsholmen Garden Hotel',      'Hantverkargatan 30',    8.2, '/img/hotels/stockholm_kungsholmen.jpg'),
          ('Norrmalm Central Suites',       'Drottninggatan 60',     8.3, '/img/hotels/stockholm_norrmalm.jpg'),
          ('Skansen Island Resort',         'Djurgårdsslätten 45',   7.9, '/img/hotels/stockholm_skansen.jpg'),
          ('Arlanda Airport Stay',          'Airport ARN',           7.6, '/img/hotels/stockholm_airport.jpg'),
          ('Kista Tech Park Hotel',         'Kistagången 15',        7.8, '/img/hotels/stockholm_kista.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Stockholm' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Gothenburg
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Avenyn Boutique Hotel',         'Kungsportsavenyen 20',  8.8, '/img/hotels/gothenburg_avenyn.jpg'),
          ('Liseberg Park Inn',             'Örgrytevägen 5',        8.5, '/img/hotels/gothenburg_liseberg.jpg'),
          ('Haga Heritage Suites',          'Haga Nygata 30',        8.3, '/img/hotels/gothenburg_haga.jpg'),
          ('Göta Älv Riverside Lodge',      'Lilla Bommen 1',        8.2, '/img/hotels/gothenburg_riverside.jpg'),
          ('Ullevi Stadium Hotel',          'Ullevigatan 10',        8.0, '/img/hotels/gothenburg_ullevi.jpg'),
          ('Majorna Urban Hotel',           'Karl Johansgatan 60',   7.9, '/img/hotels/gothenburg_majorna.jpg'),
          ('Lindholmen Science Residence',  'Lindholmsallén 15',     7.8, '/img/hotels/gothenburg_lindholmen.jpg'),
          ('Archipelago Ferry Inn',         'Saltholmens Hamn',      7.7, '/img/hotels/gothenburg_archipelago.jpg'),
          ('Landvetter Airport Stay',       'Airport GOT',           7.4, '/img/hotels/gothenburg_airport.jpg'),
          ('Slottsskogen Garden Hotel',     'Vegagatan 21',          7.6, '/img/hotels/gothenburg_slottsskogen.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Gothenburg' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Malmö
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Turning Torso View Hotel',      'Lilla Varvsgatan 10',   8.6, '/img/hotels/malmo_torso.jpg'),
          ('Gamla Staden Boutique',         'Västerlånggatan 15',    8.3, '/img/hotels/malmo_gamla.jpg'),
          ('Öresund Bridge Inn',            'Södra Förstadsgatan 40',8.2, '/img/hotels/malmo_oresund.jpg'),
          ('Möllevången Urban Lodge',       'Bergsgatan 60',         8.0, '/img/hotels/malmo_molle.jpg'),
          ('Ribersborg Beach Resort',       'Limhamnsvägen 20',      7.9, '/img/hotels/malmo_ribersborg.jpg'),
          ('Triangeln Station Hotel',       'Södra Tullgatan 3',     7.8, '/img/hotels/malmo_triangeln.jpg'),
          ('Västra Hamnen Harbor Suites',   'Dockplatsen 5',         7.7, '/img/hotels/malmo_harbor.jpg'),
          ('Pildammsparken Garden Inn',     'Pildammsvägen 15',      7.6, '/img/hotels/malmo_pildamm.jpg'),
          ('Emporia Shopping Hotel',        'Hyllie Boulevard 20',   7.5, '/img/hotels/malmo_emporia.jpg'),
          ('Sturup Airport Stay',           'Airport MMX',           7.4, '/img/hotels/malmo_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Malmö' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Uppsala
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Cathedral View Hotel',          'Domkyrkoplan 5',        8.5, '/img/hotels/uppsala_cathedral.jpg'),
          ('Gamla Uppsala Heritage Inn',    'Kungshögarna 1',        8.3, '/img/hotels/uppsala_gamla.jpg'),
          ('Fyrisån Riverside Lodge',       'S:t Olofsgatan 20',     8.2, '/img/hotels/uppsala_riverside.jpg'),
          ('Student Nation Suites',         'Övre Slottsgatan 10',   8.0, '/img/hotels/uppsala_nation.jpg'),
          ('Botanical Garden Hotel',        'Villavägen 30',         7.9, '/img/hotels/uppsala_botanical.jpg'),
          ('Årsta Urban Hotel',             'Årstagatan 40',         7.8, '/img/hotels/uppsala_arsta.jpg'),
          ('Uppsala Science Park Inn',      'Dag Hammarskjölds väg 15',7.7,'/img/hotels/uppsala_science.jpg'),
          ('Flogsta Loft',                  'Sernanders väg 5',      7.5, '/img/hotels/uppsala_flogsta.jpg'),
          ('Ultuna Country Lodge',          'Ultunavägen 10',        7.6, '/img/hotels/uppsala_ultuna.jpg'),
          ('Uppsala Airport Stay',          'Ärna Airport',          7.4, '/img/hotels/uppsala_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Uppsala' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Västerås
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Lake Mälaren View Hotel',       'Sjötullsgatan 5',       8.3, '/img/hotels/vasteras_malaren.jpg'),
          ('Anundshög Heritage Inn',       'Anundshög 1',           8.1, '/img/hotels/vasteras_anundshog.jpg'),
          ('Erikslund Riverside Lodge',     'Västra Ringvägen 10',   7.9, '/img/hotels/vasteras_erikslund.jpg'),
          ('Västerås Cathedral Suites',     'Domkyrkoesplanaden 2',  8.0, '/img/hotels/vasteras_cathedral.jpg'),
          ('Kopparlunden Urban Hotel',      'Kopparlundsvägen 15',   7.8, '/img/hotels/vasteras_koppar.jpg'),
          ('Arosvallen Sport Inn',          'Kopparbergsvägen 30',   7.7, '/img/hotels/vasteras_arosvallen.jpg'),
          ('Västerås Science Residence',    'Vasagatan 50',          7.6, '/img/hotels/vasteras_science.jpg'),
          ('Rocklunda Park Hotel',          'Rocklundagatan 25',     7.5, '/img/hotels/vasteras_rocklunda.jpg'),
          ('Västerås Harbor Suites',        'Sjöhagsvägen 20',       7.4, '/img/hotels/vasteras_harbor.jpg'),
          ('Hässlö Airport Stay',           'Airport VST',           7.3, '/img/hotels/vasteras_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Västerås' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Warsaw
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Old Town Heritage Hotel',       'Rynek Starego Miasta 2', 9.0, '/img/hotels/warsaw_oldtown.jpg'),
          ('Royal Castle View',             'Plac Zamkowy 4',         8.7, '/img/hotels/warsaw_castle.jpg'),
          ('Nowy Świat Boutique',           'Nowy Świat 30',          8.5, '/img/hotels/warsaw_nowyswiat.jpg'),
          ('Vistula Riverside Inn',         'Wybrzeże Kościuszkowskie 20', 8.3,'/img/hotels/warsaw_vistula.jpg'),
          ('Wola Business Hotel',           'Towarowa 40',            8.2, '/img/hotels/warsaw_wola.jpg'),
          ('Praga District Loft',           'Ząbkowska 10',           7.9, '/img/hotels/warsaw_praga.jpg'),
          ('Mokotów Garden Suites',         'Puławska 120',           8.1, '/img/hotels/warsaw_mokotow.jpg'),
          ('Żoliborz Urban Hotel',          'Generała Zajączka 15',   7.7, '/img/hotels/warsaw_zoliborz.jpg'),
          ('Chopin Airport Stay',           'Aeroporto WAW',          7.6, '/img/hotels/warsaw_airport.jpg'),
          ('Łazienki Park Residence',       'Agrykola 4',             7.8, '/img/hotels/warsaw_lazienki.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Warsaw' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Kraków
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Rynek Główny Palace',           'Rynek Główny 5',         9.1, '/img/hotels/krakow_rynek.jpg'),
          ('Wawel Castle View',             'Ulica Kanonicza 15',     8.8, '/img/hotels/krakow_wawel.jpg'),
          ('Kazimierz Boutique',            'Ulica Szeroka 20',       8.4, '/img/hotels/krakow_kazimierz.jpg'),
          ('Planty Park Inn',               'Ulica Zwierzyniecka 2',  8.3, '/img/hotels/krakow_planty.jpg'),
          ('Podgórze Riverside Hotel',      'Ulica Nadwiślańska 50',  8.0, '/img/hotels/krakow_podgorze.jpg'),
          ('Nowa Huta Heritage Lodge',      'Aleja Solidarności 120', 7.7, '/img/hotels/krakow_huta.jpg'),
          ('Kleparz Urban Hotel',           'Ulica Długa 70',         7.8, '/img/hotels/krakow_kleparz.jpg'),
          ('Kraków Główny Station',         'Plac Jana Nowaka 1',     7.9, '/img/hotels/krakow_station.jpg'),
          ('Balice Airport Stay',           'Aeroporto KRK',          7.5, '/img/hotels/krakow_airport.jpg'),
          ('Błonia Park Residence',         'Aleja 3 Maja 30',        7.6, '/img/hotels/krakow_blonia.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Kraków' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Gdańsk
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Long Market Heritage Hotel',    'Długi Targ 10',          8.7,'/img/hotels/gdansk_longmarket.jpg'),
          ('Motława Riverside Inn',         'Długie Pobrzeże 20',     8.5,'/img/hotels/gdansk_motlawa.jpg'),
          ('Old Crane Boutique',            'Ulica Szeroka 50',       8.3,'/img/hotels/gdansk_crane.jpg'),
          ('Oliwa Park Suites',             'Ulica Opacka 15',        8.1,'/img/hotels/gdansk_oliwa.jpg'),
          ('Wrzeszcz Urban Hotel',          'Aleja Grunwaldzka 100',  7.9,'/img/hotels/gdansk_wrzeszcz.jpg'),
          ('Stogi Beach Resort',            'Ulica Wydmy 25',         7.8,'/img/hotels/gdansk_stogi.jpg'),
          ('Westerplatte Harbor Lodge',     'Ulica Mjr. Sucharskiego 10',7.7,'/img/hotels/gdansk_westerplatte.jpg'),
          ('Gdańsk Stadium Hotel',          'Ulica Pokoleń Lechii 1', 7.6,'/img/hotels/gdansk_stadium.jpg'),
          ('Lech Wałęsa Airport Stay',      'Aeroporto GDN',          7.4,'/img/hotels/gdansk_airport.jpg'),
          ('Amber Museum Residence',        'Ulica Mariacka 1',       7.5,'/img/hotels/gdansk_amber.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Gdańsk' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Wrocław
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Market Square Palace',          'Rynek 1',                8.8,'/img/hotels/wroclaw_market.jpg'),
          ('Ostrów Tumski View Inn',        'Katedralna 5',           8.5,'/img/hotels/wroclaw_tumski.jpg'),
          ('Centennial Hall Suites',        'Wystawowa 1',            8.3,'/img/hotels/wroclaw_hall.jpg'),
          ('Nadodrze Riverside Lodge',      'Pomorska 40',            8.1,'/img/hotels/wroclaw_nadodrze.jpg'),
          ('Grunwaldzki Urban Hotel',       'Plac Grunwaldzki 20',    7.9,'/img/hotels/wroclaw_grunwald.jpg'),
          ('Księże Małe Garden Inn',        'Opolska 60',             7.8,'/img/hotels/wroclaw_ksieze.jpg'),
          ('Psie Pole Country Lodge',       'Kiełczowska 100',        7.7,'/img/hotels/wroclaw_psiepole.jpg'),
          ('Nowy Targ Boutique',            'Plac Nowy Targ 2',       7.6,'/img/hotels/wroclaw_nowytarg.jpg'),
          ('Wrocław Airport Stay',          'Aeroporto WRO',          7.4,'/img/hotels/wroclaw_airport.jpg'),
          ('Hydropolis Residence',         'Na Grobli 15',           7.5,'/img/hotels/wroclaw_hydropolis.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Wrocław' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Poznań
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Old Market Square Boutique',    'Stary Rynek 30',         8.7,'/img/hotels/poznan_market.jpg'),
          ('Cathedral Island Inn',          'Ostrów Tumski 4',        8.3,'/img/hotels/poznan_cathedral.jpg'),
          ('Malta Lake Resort',             'Ul. Wiankowa 20',        8.2,'/img/hotels/poznan_malta.jpg'),
          ('Jeżyce Urban Hotel',            'Dąbrowskiego 100',       7.9,'/img/hotels/poznan_jezyce.jpg'),
          ('Ławica Airport Stay',           'Aeroporto POZ',          7.6,'/img/hotels/poznan_airport.jpg'),
          ('Poznań International Fair',     'Głogowska 14',           8.0,'/img/hotels/poznan_fair.jpg'),
          ('Citadel Park Residence',        'Al. Armii Poznań 50',    7.8,'/img/hotels/poznan_citadel.jpg'),
          ('Wilda Riverside Lodge',         'Przemysłowa 20',         7.7,'/img/hotels/poznan_wilda.jpg'),
          ('Śródka Heritage Hotel',         'Śródka 10',              7.5,'/img/hotels/poznan_srodka.jpg'),
          ('Poznań Zoo Garden Inn',         'Krańcowa 80',            7.4,'/img/hotels/poznan_zoo.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Poznań' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat;

/* ================================================================
   Bucharest
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Old Town Heritage Hotel',      'Str. Lipscani 12',         9.0, '/img/hotels/bucharest_oldtown.jpg'),
          ('Palace of Parliament View',    'Bd. Unirii 1',             8.7, '/img/hotels/bucharest_palace.jpg'),
          ('Calea Victoriei Boutique',     'Calea Victoriei 80',       8.5, '/img/hotels/bucharest_victoriei.jpg'),
          ('Herastrau Park Inn',           'Șos. Kiseleff 30',         8.3, '/img/hotels/bucharest_herastrau.jpg'),
          ('Universitate Urban Lodge',     'Bd. Regina Elisabeta 5',   8.1, '/img/hotels/bucharest_uni.jpg'),
          ('Dorobanți Garden Suites',      'Str. Dorobanți 120',       7.9, '/img/hotels/bucharest_doro.jpg'),
          ('Cotroceni Residence',          'Bd. Cotroceni 20',         7.8, '/img/hotels/bucharest_cotroceni.jpg'),
          ('Baneasa Airport Stay',         'Aeroport BBU',             7.6, '/img/hotels/bucharest_airport.jpg'),
          ('Floreasca Lake Hotel',         'Calea Floreasca 150',      8.0, '/img/hotels/bucharest_floreasca.jpg'),
          ('Tineretului Park Inn',         'Bd. Tineretului 30',       7.7, '/img/hotels/bucharest_tineretului.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Bucharest' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays'  LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Cluj-Napoca
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Union Square Boutique',        'Piața Unirii 10',          8.9,'/img/hotels/cluj_unirii.jpg'),
          ('Feleacu Hill View Hotel',      'Str. Feleacul 5',          8.5,'/img/hotels/cluj_feleac.jpg'),
          ('Central Park Inn',             'Str. Avram Iancu 15',      8.3,'/img/hotels/cluj_central.jpg'),
          ('Mărăști Urban Lodge',          'Bd. 21 Decembrie 1989, 90',8.1,'/img/hotels/cluj_marasti.jpg'),
          ('Grigorescu Riverside Hotel',   'Str. 1 Decembrie 1918, 25',7.9,'/img/hotels/cluj_grig.jpg'),
          ('Zorilor Garden Suites',        'Str. Observatorului 100',  7.8,'/img/hotels/cluj_zorilor.jpg'),
          ('Iulius Mall Residence',        'Str. Alexandru Vaida 59',  7.7,'/img/hotels/cluj_iulius.jpg'),
          ('Baciu Country Inn',            'Str. Jupiter 2',           7.6,'/img/hotels/cluj_baciu.jpg'),
          ('Cluj Arena Riverside',         'Aleea Stadionului 4',      8.0,'/img/hotels/cluj_arena.jpg'),
          ('Avram Iancu Airport Stay',     'Aeroport CLJ',             7.4,'/img/hotels/cluj_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Cluj-Napoca' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Timișoara
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Victory Square Heritage',      'Piața Victoriei 7',        8.8,'/img/hotels/timisoara_victoriei.jpg'),
          ('Bega Riverside Inn',           'Splaiul Tudor Vladimirescu 20',8.5,'/img/hotels/timisoara_bega.jpg'),
          ('Union Square Boutique',        'Piața Unirii 3',           8.3,'/img/hotels/timisoara_unirii.jpg'),
          ('Iulius Town Suites',           'Str. Aristide Demetriade 1',8.2,'/img/hotels/timisoara_iulius.jpg'),
          ('Cetate Garden Hotel',          'Str. Alba Iulia 25',       8.0,'/img/hotels/timisoara_cetate.jpg'),
          ('Fabric Urban Lodge',           'Str. Ștefan cel Mare 30',  7.9,'/img/hotels/timisoara_fabric.jpg'),
          ('Giroc Country Inn',            'Calea Timișoarei 120',     7.7,'/img/hotels/timisoara_giroc.jpg'),
          ('Mehala Loft Hotel',            'Calea Bogdăneștilor 90',   7.6,'/img/hotels/timisoara_mehala.jpg'),
          ('Traian Vuia Airport Stay',     'Aeroport TSR',             7.5,'/img/hotels/timisoara_airport.jpg'),
          ('Roses Park Residence',         'Bd. Mihai Viteazul 10',    7.8,'/img/hotels/timisoara_roses.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Timișoara' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Iași
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Palace of Culture View',       'Bd. Ștefan cel Mare 8',   8.7,'/img/hotels/iasi_palace.jpg'),
          ('Copou Garden Hotel',           'Bd. Carol I 40',          8.4,'/img/hotels/iasi_copou.jpg'),
          ('Union Square Boutique',        'Piața Unirii 1',          8.2,'/img/hotels/iasi_unirii.jpg'),
          ('Târgu Cucu Heritage Inn',      'Str. Titu Maiorescu 12',  8.1,'/img/hotels/iasi_targu.jpg'),
          ('Palas Mall Suites',            'Str. Palas 5',            8.0,'/img/hotels/iasi_palas.jpg'),
          ('Nicolina Urban Lodge',         'Șos. Nicolina 100',       7.8,'/img/hotels/iasi_nicolina.jpg'),
          ('Galata Hill Residence',        'Str. Vasile Lupu 200',    7.7,'/img/hotels/iasi_galata.jpg'),
          ('Iași Airport Stay',            'Aeroport IAS',            7.5,'/img/hotels/iasi_airport.jpg'),
          ('Ciric Lake Resort',            'Șos. Ciric 20',           7.6,'/img/hotels/iasi_ciric.jpg'),
          ('Bahlui Riverside Hotel',       'Str. Sf. Lazăr 25',       7.9,'/img/hotels/iasi_bahlui.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Iași' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Constanța
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Mamaia Beach Resort',          'Bd. Mamaia 300',          8.8,'/img/hotels/constanta_mamaia.jpg'),
          ('Casino Seaside Hotel',         'Bd. Regina Elisabeta 1',  8.6,'/img/hotels/constanta_casino.jpg'),
          ('Tomis Marina Inn',             'Port Tomis 5',            8.3,'/img/hotels/constanta_marina.jpg'),
          ('Ovid Square Boutique',         'Piața Ovidiu 3',          8.1,'/img/hotels/constanta_ovid.jpg'),
          ('Faleza Nord Garden Hotel',     'Str. Unirii 120',         8.0,'/img/hotels/constanta_faleza.jpg'),
          ('City Park Mall Suites',        'Bd. Aurel Vlaicu 220',    7.8,'/img/hotels/constanta_citypark.jpg'),
          ('Tabăra Modern Lodge',          'Str. Salcâmilor 15',      7.7,'/img/hotels/constanta_modern.jpg'),
          ('Mamaia Nord Loft',             'Str. D10 100',            7.6,'/img/hotels/constanta_nord.jpg'),
          ('Constanța Airport Stay',       'Aeroport CND',            7.4,'/img/hotels/constanta_airport.jpg'),
          ('Lake Siutghiol Residence',     'Bd. Mamaia 90',           7.5,'/img/hotels/constanta_siutghiol.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Constanța' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Athens
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Acropolis View Palace',        'Dionysiou Areopagitou 15',9.2,'/img/hotels/athens_acropolis.jpg'),
          ('Syntagma Square Boutique',     'Mitropoleos 10',          8.8,'/img/hotels/athens_syntagma.jpg'),
          ('Plaka Heritage Hotel',         'Adrianou 20',             8.6,'/img/hotels/athens_plaka.jpg'),
          ('Monastiraki Urban Lodge',      'Ermou 50',                8.4,'/img/hotels/athens_monastiraki.jpg'),
          ('Kolonaki Garden Suites',       'Skoufa 40',               8.2,'/img/hotels/athens_kolonaki.jpg'),
          ('Piraeus Harbor Inn',           'Akti Miaouli 25',         8.0,'/img/hotels/athens_piraeus.jpg'),
          ('Glyfada Beach Resort',         'Leof. Posidonos 90',      7.9,'/img/hotels/athens_glyfada.jpg'),
          ('Kifisia Country Hotel',        'Leof. Kifisias 200',      7.8,'/img/hotels/athens_kifisia.jpg'),
          ('Athens Airport Stay',          'Aeroport ATH',            7.6,'/img/hotels/athens_airport.jpg'),
          ('Mount Lycabettus View',        'Lycabettus Hill Path',    8.1,'/img/hotels/athens_lycabettus.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Athens' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Thessaloniki
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('White Tower View Hotel',       'Leof. Nikis 20',          8.9,'/img/hotels/thes_tower.jpg'),
          ('Aristotelous Square Boutique', 'Pl. Aristotelous 3',      8.5,'/img/hotels/thes_aristo.jpg'),
          ('Ladadika District Inn',        'Katouni 15',              8.3,'/img/hotels/thes_ladadika.jpg'),
          ('Ano Poli Heritage Suites',     'Eptapyrgiou 30',          8.1,'/img/hotels/thes_anopoli.jpg'),
          ('Nea Paralia Riverside',        'Meg. Alexandrou 50',      8.0,'/img/hotels/thes_paralia.jpg'),
          ('Valaoritou Urban Hotel',       'Valaoritou 20',           7.9,'/img/hotels/thes_vala.jpg'),
          ('Ioannis Airport Stay',         'Aeroport SKG',            7.7,'/img/hotels/thes_airport.jpg'),
          ('Toumba Stadium Lodge',         'Evangelistrias 90',       7.6,'/img/hotels/thes_toumba.jpg'),
          ('Kalamaria Seaside Inn',        'Themistokli Sofouli 30',  7.5,'/img/hotels/thes_kalamaria.jpg'),
          ('Thermi Garden Hotel',          'Georgikis Scholis 150',   7.4,'/img/hotels/thes_thermi.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Thessaloniki' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Patras
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Rio Seaside Resort',           'Akti Dymaion 200',        8.5,'/img/hotels/patras_rio.jpg'),
          ('Agiou Nikolaou Boutique',      'Agiou Nikolaou 30',       8.3,'/img/hotels/patras_nikolaou.jpg'),
          ('Castle View Inn',              'Omirou 10',               8.1,'/img/hotels/patras_castle.jpg'),
          ('Peloponnesus Garden Hotel',    'Korinthou 150',           7.9,'/img/hotels/patras_pelop.jpg'),
          ('Patras Harbor Suites',         'Akti Dimeon 5',           7.8,'/img/hotels/patras_harbor.jpg'),
          ('Psila Alonia Loft',            'Gounari 100',             7.7,'/img/hotels/patras_psila.jpg'),
          ('Glafkos Riverside Lodge',      'Glafkos 20',              7.6,'/img/hotels/patras_glafkos.jpg'),
          ('University Campus Hotel',      'Panepistimioupoli 1',     7.5,'/img/hotels/patras_uni.jpg'),
          ('Patras Airport Stay',          'Aeroport GPA',            7.4,'/img/hotels/patras_airport.jpg'),
          ('Achaia Clauss Winery Inn',     'Petroto 50',              7.3,'/img/hotels/patras_winery.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Patras' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Heraklion
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Knossos Palace View',          'Leof. Knossou 1',         8.8,'/img/hotels/heraklion_knossos.jpg'),
          ('Old Port Boutique',            'Epimenidou 10',           8.5,'/img/hotels/heraklion_port.jpg'),
          ('Lions Square Suites',          'Pl. Λιοντάρια 3',         8.3,'/img/hotels/heraklion_lion.jpg'),
          ('Koules Fortress Inn',          'Odós 25 Avgoustou 20',    8.2,'/img/hotels/heraklion_koules.jpg'),
          ('Amoudara Beach Resort',        'Leof. Andrea Papandreou 150',8.0,'/img/hotels/heraklion_amoudara.jpg'),
          ('Knossos Palace Lodge',         'Knossos 50',              7.9,'/img/hotels/heraklion_palace.jpg'),
          ('Heraklion Airport Stay',       'Aeroport HER',            7.7,'/img/hotels/heraklion_airport.jpg'),
          ('Pankritio Stadium Hotel',      'Leof. 62 Martyron 20',    7.6,'/img/hotels/heraklion_stadium.jpg'),
          ('Archanes Country Inn',         'Archanes Village 30',     7.5,'/img/hotels/heraklion_archanes.jpg'),
          ('Cretaquarium Seaside Lodge',   'Gournes 25',              7.4,'/img/hotels/heraklion_cretaqua.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Heraklion' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Larissa
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Central Square Boutique',      'Pl. Kentriki 1',          8.4,'/img/hotels/larissa_central.jpg'),
          ('Pinios Riverside Inn',         'Odos Filellinon 20',      8.2,'/img/hotels/larissa_pinios.jpg'),
          ('Alcazar Park Hotel',           'Alkazar 10',              8.0,'/img/hotels/larissa_alcazar.jpg'),
          ('Ancient Theatre View',         'Odos Papakiriazi 50',     7.9,'/img/hotels/larissa_theatre.jpg'),
          ('Neapolis Loft',                'Odos Iroon Polytechniou 60',7.8,'/img/hotels/larissa_neapolis.jpg'),
          ('Larissa Stadium Suites',       'Odos Farsalon 5',         7.7,'/img/hotels/larissa_stadium.jpg'),
          ('Agia Country Hotel',           'Agia Village 15',         7.6,'/img/hotels/larissa_agia.jpg'),
          ('Tirnavos Wine Lodge',          'Tirnavos 20',             7.5,'/img/hotels/larissa_tirnavos.jpg'),
          ('Larissa Airport Stay',         'Aeroport LRA',            7.4,'/img/hotels/larissa_airport.jpg'),
          ('Olympus View Residence',       'Elassona 30',             7.4,'/img/hotels/larissa_olympus.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Larissa' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Tokyo
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Shibuya Crossing View Hotel',  'Shibuya 2-21-1',       9.1, '/img/hotels/tokyo_shibuya.jpg'),
          ('Shinjuku Sky Tower Inn',       'Kabukicho 1-2-3',      8.7, '/img/hotels/tokyo_shinjuku.jpg'),
          ('Asakusa Temple Boutique',      'Asakusa 1-1-1',        8.5, '/img/hotels/tokyo_asakusa.jpg'),
          ('Ginza Luxury Suites',          'Ginza 5-5-5',          9.0, '/img/hotels/tokyo_ginza.jpg'),
          ('Akihabara Tech Lodge',         'Sotokanda 4-5-6',      8.3, '/img/hotels/tokyo_akiba.jpg'),
          ('Tokyo Tower Garden Hotel',     'Shibakoen 4-2-8',      8.4, '/img/hotels/tokyo_tower.jpg'),
          ('Odaiba Bay Resort',            'Daiba 1-6-1',          8.2, '/img/hotels/tokyo_odaiba.jpg'),
          ('Roppongi Hills Residence',     'Roppongi 6-10-1',      8.0, '/img/hotels/tokyo_roppongi.jpg'),
          ('Haneda Airport Stay',          'Haneda Airport',       7.8, '/img/hotels/tokyo_haneda.jpg'),
          ('Ueno Park Riverside Inn',      'Ueno 7-1-1',           8.1, '/img/hotels/tokyo_ueno.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Tokyo'  LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Osaka
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Dōtonbori Riverside Hotel',     'Dōtonbori 2-2-2',      8.8, '/img/hotels/osaka_dotonbori.jpg'),
          ('Umeda Sky View Suites',         'Umeda 1-6-1',          8.6, '/img/hotels/osaka_umeda.jpg'),
          ('Namba Station Lodge',           'Namba 3-4-5',          8.3, '/img/hotels/osaka_namba.jpg'),
          ('Osaka Castle Park Inn',         'Ōsakajō 1-1',          8.4, '/img/hotels/osaka_castle.jpg'),
          ('Shinsekai Boutique',            'Ebisuhigashi 1-18-6',  8.1, '/img/hotels/osaka_shinsekai.jpg'),
          ('Tennoji Garden Hotel',          'Tennoji 4-3-2',        8.0, '/img/hotels/osaka_tennoji.jpg'),
          ('Amerikamura Urban Hotel',       'Nishishinsaibashi 2-15-1',7.9,'/img/hotels/osaka_amerika.jpg'),
          ('USJ Gateway Resort',            'Sakurajima 2-1-33',    8.2, '/img/hotels/osaka_usj.jpg'),
          ('Itami Airport Stay',            'Itami Airport',        7.7, '/img/hotels/osaka_itami.jpg'),
          ('Sumiyoshi Riverside Residence', 'Sumiyoshi 3-9-8',      7.8, '/img/hotels/osaka_sumiyoshi.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Osaka'  LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Kyoto
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Gion Heritage Hotel',           'Gionmachi 570-1',       9.0, '/img/hotels/kyoto_gion.jpg'),
          ('Kiyomizu Temple View Inn',      'Kiyomizu 2-208',        8.7, '/img/hotels/kyoto_kiyomizu.jpg'),
          ('Arashiyama Bamboo Suites',      'Arashiyama 3-1',        8.6, '/img/hotels/kyoto_arashiyama.jpg'),
          ('Nishiki Market Boutique',       'Nishidaimonji-chō 292', 8.3, '/img/hotels/kyoto_nishiki.jpg'),
          ('Kyoto Station Hotel',           'Higashishiokōji 901',   8.2, '/img/hotels/kyoto_station.jpg'),
          ('Philosopher’s Path Garden',     'Shishigatani 23',       8.1, '/img/hotels/kyoto_philo.jpg'),
          ('Fushimi Inari Lodge',           'Fukakusa 68',           8.4, '/img/hotels/kyoto_fushimi.jpg'),
          ('Ponto-chō Riverside Hotel',     'Ponto-chō 137',         8.0, '/img/hotels/kyoto_pontocho.jpg'),
          ('Imperial Palace Residence',     'Kyotogyoen 1',          7.9, '/img/hotels/kyoto_palace.jpg'),
          ('Katsura River Country Inn',     'Katsuramisono 3-2',     7.8, '/img/hotels/kyoto_katsura.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Kyoto'  LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Yokohama
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Minato Mirai Bay Hotel',        'Minatomirai 2-3-5',     8.8, '/img/hotels/yokohama_minato.jpg'),
          ('Chinatown Boutique',            'Yamashita-chō 80',      8.4, '/img/hotels/yokohama_china.jpg'),
          ('Red Brick Warehouse Inn',       'Shinko 2-1',            8.3, '/img/hotels/yokohama_redbrick.jpg'),
          ('Stadium Suites',                'Yokohamakoen',          8.1, '/img/hotels/yokohama_stadium.jpg'),
          ('Sakuragichō Urban Lodge',       'Sakuragichō 1',         8.0, '/img/hotels/yokohama_sakura.jpg'),
          ('Motomachi Garden Hotel',        'Motomachi 1-20',        7.9, '/img/hotels/yokohama_moto.jpg'),
          ('Pacifico Conference Residence', 'Minatomirai 1-1',       8.2, '/img/hotels/yokohama_pacifico.jpg'),
          ('Yamashita Park Seaside',        'Yamashita-chō 279',     7.8, '/img/hotels/yokohama_park.jpg'),
          ('Shin-Yokohama Station Hotel',   'Takashima 2-15',        7.7, '/img/hotels/yokohama_station.jpg'),
          ('Zoorasia Safari Lodge',         'Kaminokichō 1175-1',    7.6, '/img/hotels/yokohama_zoo.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Yokohama' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Sapporo
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Odori Park View Hotel',         'Odori-nishi 5',         8.7,'/img/hotels/sapporo_odori.jpg'),
          ('Susukino Boutique',             'Minami 4 Jo 3',         8.4,'/img/hotels/sapporo_susukino.jpg'),
          ('Clock Tower Inn',               'Kita 1 Jo 2',           8.3,'/img/hotels/sapporo_clock.jpg'),
          ('Moerenuma Park Suites',         'Moerenuma 1-1',         8.1,'/img/hotels/sapporo_moere.jpg'),
          ('Maruyama Zoo Garden',           'Miyagaoka 3',           8.0,'/img/hotels/sapporo_zoo.jpg'),
          ('JR Tower Station Hotel',        'Kita 5 Jo Nishi 2',     7.9,'/img/hotels/sapporo_jr.jpg'),
          ('Teine Ski Resort Lodge',        'Teinehonchō 593',       7.8,'/img/hotels/sapporo_teine.jpg'),
          ('Shiroi Koibito Park Residence', 'Miyanosawa 2-2',        7.7,'/img/hotels/sapporo_koibito.jpg'),
          ('Beer Garden Inn',               'Kita 7 Jo 9',           7.6,'/img/hotels/sapporo_beer.jpg'),
          ('New Chitose Airport Stay',      'Airport CTS',           7.5,'/img/hotels/sapporo_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Sapporo' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Beijing
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Forbidden City Palace Hotel',   'Donghuamen 1',           9.0,'/img/hotels/beijing_forbidden.jpg'),
          ('Wangfujing Boutique',           'Wangfujing 88',          8.7,'/img/hotels/beijing_wangfu.jpg'),
          ('Tiananmen Square View Inn',     'Qianmen 6',              8.5,'/img/hotels/beijing_tiananmen.jpg'),
          ('Sanlitun Urban Lodge',          'Sanlitun 4',             8.3,'/img/hotels/beijing_sanlitun.jpg'),
          ('Hutong Heritage Suites',        'Nanluoguxiang 23',       8.2,'/img/hotels/beijing_hutong.jpg'),
          ('Summer Palace Garden Hotel',    'Gongmenkou 1',           8.4,'/img/hotels/beijing_palace.jpg'),
          ('Olympic Park Residence',        'Beichen Donglu 9',       8.1,'/img/hotels/beijing_olympic.jpg'),
          ('CBD Skyscraper Hotel',          'Guomao 1',               8.0,'/img/hotels/beijing_cbd.jpg'),
          ('West Station Inn',              'Lianhuachi 1',           7.8,'/img/hotels/beijing_west.jpg'),
          ('Capital Airport Stay',          'PEK Airport',            7.7,'/img/hotels/beijing_airport.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Beijing' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Shanghai
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('The Bund Riverside Hotel',      'Zhongshan Dong 1 Rd 32', 9.1,'/img/hotels/shanghai_bund.jpg'),
          ('Nanjing Road Boutique',         'Nanjing East 300',       8.8,'/img/hotels/shanghai_nanjing.jpg'),
          ('Lujiazui Skyline Suites',       'Century Ave 100',        8.7,'/img/hotels/shanghai_lujiazui.jpg'),
          ('Xintiandi Heritage Inn',        'Madang Rd 123',          8.5,'/img/hotels/shanghai_xintiandi.jpg'),
          ('Yu Garden Residence',           'Anren St 218',           8.4,'/img/hotels/shanghai_yu.jpg'),
          ('Jing’an Temple View Hotel',     'Nanjing West 1686',      8.3,'/img/hotels/shanghai_jingan.jpg'),
          ('Pudong Airport Stay',           'PVG Airport',            7.9,'/img/hotels/shanghai_pudong.jpg'),
          ('Century Park Garden Hotel',     'Huamu Rd 888',           8.0,'/img/hotels/shanghai_century.jpg'),
          ('Shanghai Tower Sky Hotel',      'Yincheng Mid 501',       8.6,'/img/hotels/shanghai_tower.jpg'),
          ('French Concession Loft',        'Wukang Rd 76',           7.8,'/img/hotels/shanghai_french.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Shanghai' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Guangzhou
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Canton Tower View Hotel',       'Yuejiang W Rd 222',      9.0,'/img/hotels/gz_canton.jpg'),
          ('Shamian Island Boutique',       'Shamian St 60',          8.6,'/img/hotels/gz_shamian.jpg'),
          ('Zhujiang New Town Suites',      'Huaxia Rd 8',            8.5,'/img/hotels/gz_zhujiang.jpg'),
          ('Baiyun Mountain Inn',           'Scenic Area 10',         8.3,'/img/hotels/gz_baiyun.jpg'),
          ('Beijing Road Hotel',            'Beijing Rd 158',         8.2,'/img/hotels/gz_beijing.jpg'),
          ('Pazhou Exhibition Residence',   'Xingang E Rd 398',       8.1,'/img/hotels/gz_pazhou.jpg'),
          ('Chimelong Safari Lodge',        'Yingbin Rd 1',           7.9,'/img/hotels/gz_chimelong.jpg'),
          ('Huadu Airport Stay',            'CAN Airport',            7.8,'/img/hotels/gz_airport.jpg'),
          ('Liwan Lake Riverside',          'Longjing W Rd 18',       7.7,'/img/hotels/gz_liwan.jpg'),
          ('Panyu Country Resort',          'Shawan 99',              7.6,'/img/hotels/gz_panyu.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Guangzhou' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Shenzhen
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Futian Skyline Hotel',          'Fuhua Rd 200',           8.9,'/img/hotels/sz_futian.jpg'),
          ('Window of the World Resort',    'Shennan Ave 9037',       8.5,'/img/hotels/sz_window.jpg'),
          ('Huaqiangbei Tech Boutique',     'Huaqiang N Rd 1024',     8.3,'/img/hotels/sz_huaqiang.jpg'),
          ('Dongmen Pedestrian Inn',        'Dongmen Rd 100',         8.1,'/img/hotels/sz_dongmen.jpg'),
          ('OCT Loft Urban Lodge',          'Enping Rd 8',            8.0,'/img/hotels/sz_oct.jpg'),
          ('Shekou Seaside Hotel',          'Wanghai Rd 70',          7.9,'/img/hotels/sz_shekou.jpg'),
          ('Nanshan University Suites',     'Xuefu Rd 29',            7.8,'/img/hotels/sz_nanshan.jpg'),
          ('Dameisha Beach Resort',         'Yanmei Rd 100',          7.7,'/img/hotels/sz_dameisha.jpg'),
          ('Bao an Airport Stay',          'SZX Airport',            7.6,'/img/hotels/sz_airport.jpg'),
 ('Dapeng Peninsula Inn',          'Pengcheng 218',          7.5,'/img/hotels/sz_dapeng.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Shenzhen' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Chengdu
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('Tianfu Square Palace',          'Tianfu Square 1',        8.8,'/img/hotels/cd_tianfu.jpg'),
 ('Kuanzhai Alley Heritage Inn',   'Kuanzhai Alley 38',      8.5,'/img/hotels/cd_kuanzhai.jpg'),
 ('Jinli Ancient Street Hotel',    'Jinli St 231',           8.4,'/img/hotels/cd_jinli.jpg'),
 ('Panda Base Lodge',              'Panda Ave 1375',         8.3,'/img/hotels/cd_panda.jpg'),
 ('Global Center Sky Hotel',       'Tianfu Ave 1700',        8.2,'/img/hotels/cd_global.jpg'),
 ('Chunxi Road Urban Hotel',       'Chunxi Rd 20',           8.0,'/img/hotels/cd_chunxi.jpg'),
 ('Dujiangyan Riverside Resort',   'Dujiangyan 15',          7.9,'/img/hotels/cd_dujiangyan.jpg'),
 ('Shuangliu Airport Stay',        'CTU Airport',            7.8,'/img/hotels/cd_airport.jpg'),
 ('Mount Qingcheng Inn',           'Qingchengshan 89',       7.7,'/img/hotels/cd_qingcheng.jpg'),
 ('East Gate Forest Park Lodge',   'Huancheng Rd 60',        7.6,'/img/hotels/cd_forest.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Chengdu' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   New York
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Times Square Palace',      '42nd St & Broadway',     9.1, '/img/hotels/ny_times.jpg'),
          ('Central Park View Inn',    'Central Park West 80',   8.8, '/img/hotels/ny_central.jpg'),
          ('SoHo Boutique Hotel',      'Prince St 40',           8.6, '/img/hotels/ny_soho.jpg'),
          ('Brooklyn Bridge Suites',   'Old Fulton St 15',       8.4, '/img/hotels/ny_brooklyn.jpg'),
          ('Wall Street Business',     'Wall St 60',             8.2, '/img/hotels/ny_wall.jpg'),
          ('Harlem Heritage Lodge',    'Lenox Ave 200',          8.0, '/img/hotels/ny_harlem.jpg'),
          ('Queens Airport Hotel',     'JFK Airport',            7.9, '/img/hotels/ny_jfk.jpg'),
          ('Bronx Zoo Garden Inn',     'Bronx River Pkwy 5',     7.8, '/img/hotels/ny_bronx.jpg'),
          ('Chelsea Art Residence',    'W 23rd St 220',          8.1, '/img/hotels/ny_chelsea.jpg'),
          ('Staten Island Seaside',    'Bay St 100',             7.7, '/img/hotels/ny_staten.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'New York'  LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Los Angeles
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Hollywood Boulevard Hotel',   'Hollywood Blvd 6800',  8.9,'/img/hotels/la_hollywood.jpg'),
          ('Santa Monica Beach Inn',      'Ocean Ave 1400',       8.7,'/img/hotels/la_santamonica.jpg'),
          ('Downtown Skyline Suites',     'S Flower St 900',      8.4,'/img/hotels/la_downtown.jpg'),
          ('Beverly Hills Palace',        'Rodeo Dr 400',         9.0,'/img/hotels/la_beverly.jpg'),
          ('Venice Boardwalk Lodge',      'Ocean Front Walk 50',  8.2,'/img/hotels/la_venice.jpg'),
          ('LAX Airport Stay',            'LAX Terminal',         7.9,'/img/hotels/la_lax.jpg'),
          ('Griffith Park View',          'N Vermont Canyon',     8.1,'/img/hotels/la_griffith.jpg'),
          ('Echo Park Urban Hotel',       'Sunset Blvd 1500',     7.8,'/img/hotels/la_echo.jpg'),
          ('Universal Studios Resort',    'Universal Hollywood Dr 1',8.5,'/img/hotels/la_universal.jpg'),
          ('Long Beach Harbor Inn',       'Shoreline Dr 200',     7.7,'/img/hotels/la_longbeach.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Los Angeles' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Chicago
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Magnificent Mile Boutique', 'N Michigan Ave 700',     8.8,'/img/hotels/chi_magmile.jpg'),
          ('Millennium Park View',       'E Randolph St 150',      8.6,'/img/hotels/chi_millennium.jpg'),
          ('Navy Pier Harbor Hotel',     'Navy Pier',              8.4,'/img/hotels/chi_navy.jpg'),
          ('Loop Business Suites',       'W Adams 200',            8.2,'/img/hotels/chi_loop.jpg'),
          ('Wrigleyville Inn',           'N Clark St 3500',        8.0,'/img/hotels/chi_wrigley.jpg'),
          ('South Loop Urban Lodge',     'S Michigan Ave 1500',    7.9,'/img/hotels/chi_southloop.jpg'),
          ('Hyde Park Garden Hotel',     'E 55th St 1200',         7.8,'/img/hotels/chi_hyde.jpg'),
          ('O Hare Airport Stay',       'ORD Airport',            7.7,'/img/hotels/chi_ohare.jpg'),
 ('West Loop Loft',             'W Madison 900',          7.6,'/img/hotels/chi_westloop.jpg'),
 ('Lincoln Park Zoo Inn',       'N Cannon 300',           7.8,'/img/hotels/chi_lincoln.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Chicago' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Houston
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('Downtown Skyline Hotel',     'Smith St 1200',          8.7,'/img/hotels/hou_downtown.jpg'),
 ('Galleria Shopping Suites',   'Westheimer 5000',        8.5,'/img/hotels/hou_galleria.jpg'),
 ('Museum District Inn',        'Bissonnet 5500',         8.3,'/img/hotels/hou_museum.jpg'),
 ('Space Center Lodge',         'NASA Pkwy 1601',         8.2,'/img/hotels/hou_space.jpg'),
 ('Medical Center Residence',   'Fannin St 6500',         8.1,'/img/hotels/hou_med.jpg'),
 ('Midtown Urban Hotel',        'Main St 3000',           7.9,'/img/hotels/hou_midtown.jpg'),
 ('Energy Corridor Suites',     'Katy Fwy 15000',         7.8,'/img/hotels/hou_energy.jpg'),
 ('Houston Zoo Garden Inn',     'Hermann Park Dr 6200',   7.7,'/img/hotels/hou_zoo.jpg'),
 ('IAH Airport Stay',           'Bush Airport',           7.6,'/img/hotels/hou_iah.jpg'),
 ('Kemah Boardwalk Resort',     'Kipp Ave 215',           7.5,'/img/hotels/hou_kemah.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Houston' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Miami
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('South Beach Resort',          'Ocean Dr 1500',          9.0,'/img/hotels/miami_sobe.jpg'),
 ('Downtown Bayside Hotel',      'Biscayne Blvd 400',      8.6,'/img/hotels/miami_bayside.jpg'),
 ('Little Havana Boutique',      'Calle Ocho 1500',        8.3,'/img/hotels/miami_havana.jpg'),
 ('Wynwood Art Lodge',           'NW 2nd Ave 2500',        8.2,'/img/hotels/miami_wynwood.jpg'),
 ('Brickell Skyline Suites',     'Brickell Ave 1200',      8.4,'/img/hotels/miami_brickell.jpg'),
 ('Coral Gables Garden Inn',     'Miracle Mile 100',       8.0,'/img/hotels/miami_gables.jpg'),
 ('Coconut Grove Harbor Hotel',  'Grand Ave 3300',         7.9,'/img/hotels/miami_grove.jpg'),
 ('Miami Design District',       'NE 1st Ave 3800',        7.8,'/img/hotels/miami_design.jpg'),
 ('MIA Airport Stay',            'MIA Airport',            7.7,'/img/hotels/miami_airport.jpg'),
 ('Key Biscayne Seaside',        'Crandon Blvd 7200',      7.6,'/img/hotels/miami_key.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Miami' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Toronto
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('CN Tower View Hotel',          'Front St 301',           9.0,'/img/hotels/tor_cntower.jpg'),
 ('Distillery District Boutique', 'Mill St 55',             8.7,'/img/hotels/tor_distillery.jpg'),
 ('Harbourfront Suites',          'Queens Quay 200',        8.5,'/img/hotels/tor_harbour.jpg'),
 ('Yorkville Luxury Inn',         'Bloor St 150',           8.8,'/img/hotels/tor_yorkville.jpg'),
 ('Eaton Centre Urban Hotel',     'Yonge St 220',           8.3,'/img/hotels/tor_eaton.jpg'),
 ('Scarborough Bluffs Lodge',     'Brimley Rd 1',           8.1,'/img/hotels/tor_bluffs.jpg'),
 ('High Park Garden Residence',   'Bloor St W 1873',        8.0,'/img/hotels/tor_highpark.jpg'),
 ('Pearson Airport Stay',         'YYZ Airport',            7.8,'/img/hotels/tor_airport.jpg'),
 ('Liberty Village Loft',         'East Liberty St 80',     7.9,'/img/hotels/tor_liberty.jpg'),
 ('Rogers Centre Suites',         'Bremner Blvd 1',         8.2,'/img/hotels/tor_rogers.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Toronto' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Vancouver
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('Stanley Park View Hotel',      'Georgia St 800',         9.1,'/img/hotels/van_stanley.jpg'),
 ('Gastown Heritage Inn',         'Water St 300',           8.8,'/img/hotels/van_gastown.jpg'),
 ('Granville Island Suites',      'Duranleau St 1661',      8.6,'/img/hotels/van_granville.jpg'),
 ('Yaletown Boutique Hotel',      'Hamilton St 1000',       8.4,'/img/hotels/van_yaletown.jpg'),
 ('English Bay Seaside',          'Denman St 1200',         8.2,'/img/hotels/van_english.jpg'),
 ('Coal Harbour Skyline',         'Cordova St 1055',        8.3,'/img/hotels/van_coal.jpg'),
 ('Kitsilano Beach Lodge',        'Cornwall Ave 2500',      8.0,'/img/hotels/van_kits.jpg'),
 ('UBC Garden Residence',         'W Mall Ave 6331',        7.9,'/img/hotels/van_ubc.jpg'),
 ('Vancouver Airport Stay',       'YVR Airport',            7.8,'/img/hotels/van_airport.jpg'),
 ('Capilano Suspension Inn',      'Capilano Rd 3735',       7.7,'/img/hotels/van_capilano.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Vancouver' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Montreal
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('Old Port Heritage Hotel',      'Rue de la Commune 50',   8.9,'/img/hotels/mtl_oldport.jpg'),
 ('Mount Royal View Inn',         'Côte-des-Neiges 300',    8.6,'/img/hotels/mtl_mount.jpg'),
 ('Plateau Boutique',             'Avenue Mont-Royal 400',  8.4,'/img/hotels/mtl_plateau.jpg'),
 ('Downtown Crescent Suites',     'Rue Crescent 1230',      8.3,'/img/hotels/mtl_crescent.jpg'),
 ('Quartier des Spectacles',      'Jeanne-Mance 1460',      8.2,'/img/hotels/mtl_quartier.jpg'),
 ('Lachine Canal Riverside',      'St Patrick 6000',        8.0,'/img/hotels/mtl_lachine.jpg'),
 ('Olympic Park Lodge',           'Bd Pie-IX 4545',         7.9,'/img/hotels/mtl_olympic.jpg'),
 ('Mile End Urban Hotel',         'St-Laurent 5200',        7.8,'/img/hotels/mtl_mile.jpg'),
 ('Trudeau Airport Stay',         'YUL Airport',            7.6,'/img/hotels/mtl_airport.jpg'),
 ('La Ronde Island Inn',          'Parc Jean-Drapeau',      7.7,'/img/hotels/mtl_laronde.jpg')
) AS t(hotel_name,address,rating,img_url)
CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Montreal' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Calgary
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
 ('Downtown Skyline Hotel',       '9 Ave SW 800',           8.7,'/img/hotels/cgy_downtown.jpg'),
 ('Stampede Park Inn',            'Stampede Trail 22',      8.5,'/img/hotels/cgy_stampede.jpg'),
 ('Stephen Avenue Suites',        'Stephen Ave 115',        8.3,'/img/hotels/cgy_stephen.jpg'),
 ('Princes Island Lodge',       'Eau Claire 50',          8.2,'/img/hotels/cgy_princes.jpg'),
          ('Kensington Boutique',          '10 St NW 300',           8.0,'/img/hotels/cgy_kensington.jpg'),
          ('YYC Airport Stay',             'YYC Airport',            7.9,'/img/hotels/cgy_airport.jpg'),
          ('University District Hotel',    '32 Ave NW 2500',         7.8,'/img/hotels/cgy_uni.jpg'),
          ('Fish Creek Country Inn',       'Canyon Meadows Dr 200',  7.7,'/img/hotels/cgy_fish.jpg'),
          ('Canada Olympic Park Resort',   'Canada Olympic Rd 88',   7.6,'/img/hotels/cgy_cop.jpg'),
          ('Heritage Park Garden',         'Heritage Dr 1900',       7.5,'/img/hotels/cgy_heritage.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Calgary' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Ottawa
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Parliament Hill View',         'Wellington St 100',      8.9,'/img/hotels/ott_hill.jpg'),
          ('ByWard Market Boutique',       'York St 55',             8.6,'/img/hotels/ott_byward.jpg'),
          ('Rideau Canal Suites',          'Rideau St 400',          8.4,'/img/hotels/ott_rideau.jpg'),
          ('Downtown Confederation Inn',   'Elgin St 80',            8.2,'/img/hotels/ott_confed.jpg'),
          ('Glebe Garden Hotel',           'Bank St 850',            8.0,'/img/hotels/ott_glebe.jpg'),
          ('Kanata Tech Park Lodge',       'Campeau Dr 555',         7.9,'/img/hotels/ott_kanata.jpg'),
          ('Airport Parkway Stay',         'YOW Airport',            7.8,'/img/hotels/ott_airport.jpg'),
          ('Dows Lake Riverside',          'Queen Elizabeth Dr',     7.7,'/img/hotels/ott_dows.jpg'),
          ('Westboro Urban Hotel',         'Richmond Rd 320',        7.6,'/img/hotels/ott_westboro.jpg'),
          ('Orleans Country Inn',          'St Joseph Blvd 2500',    7.5,'/img/hotels/ott_orleans.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Ottawa' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Mexico City
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Zócalo Heritage Hotel',       'Av. 16 de Septiembre 1',  9.0, '/img/hotels/cdmx_zocalo.jpg'),
          ('Paseo de la Reforma Suites',  'Paseo de la Reforma 350', 8.8, '/img/hotels/cdmx_reforma.jpg'),
          ('Condesa Boutique',            'Av. Amsterdam 150',       8.6, '/img/hotels/cdmx_condesa.jpg'),
          ('Roma Norte Art Lodge',        'Calle Colima 100',        8.4, '/img/hotels/cdmx_roma.jpg'),
          ('Polanco Luxury Inn',          'Av. Presidente Masaryk 200',8.7,'/img/hotels/cdmx_polanco.jpg'),
          ('Coyoacán Garden Hotel',       'Miguel Ángel de Quevedo 65',8.1,'/img/hotels/cdmx_coyoacan.jpg'),
          ('Xochimilco Riverside Resort', 'Embarcadero Nuevo Nativitas',8.0,'/img/hotels/cdmx_xochi.jpg'),
          ('Chapultepec Park View',       'Calz. Mahatma Gandhi 1',  8.3, '/img/hotels/cdmx_chapultepec.jpg'),
          ('CDMX Airport Stay',           'MEX Airport',             7.8, '/img/hotels/cdmx_airport.jpg'),
          ('Santa Fe Business Hotel',     'Av. Vasco de Quiroga 3900',7.9,'/img/hotels/cdmx_santafe.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Mexico City' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Guadalajara
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Centro Histórico Inn',        'Av. Juárez 150',          8.9, '/img/hotels/gdl_centro.jpg'),
          ('Chapalita Garden Suites',     'Av. Guadalupe 6300',      8.5, '/img/hotels/gdl_chapalita.jpg'),
          ('Tlaquepaque Boutique',        'Independencia 200',       8.4, '/img/hotels/gdl_tlaque.jpg'),
          ('Zapopan Basilica Hotel',      'Av. Hidalgo 250',         8.3, '/img/hotels/gdl_zapopan.jpg'),
          ('Expo Guadalajara Residence',  'Av. Mariano Otero 1499',  8.2, '/img/hotels/gdl_expo.jpg'),
          ('Andares Luxury Inn',          'Blvd. Puerta de Hierro 4965',8.1,'/img/hotels/gdl_andares.jpg'),
          ('Oblatos Urban Lodge',         'Circ. Oblatos 1000',      7.9, '/img/hotels/gdl_oblatos.jpg'),
          ('Guadalajara Zoo Resort',      'P.º del Zoológico 600',   7.8, '/img/hotels/gdl_zoo.jpg'),
          ('GDL Airport Stay',            'GDL Airport',             7.7, '/img/hotels/gdl_airport.jpg'),
          ('Mirador Independencia Inn',   'Carretera a Saltillo 500',7.6, '/img/hotels/gdl_mirador.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Guadalajara' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Monterrey
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Macroplaza Palace',           'Juan Zuazua 100',         8.8, '/img/hotels/mty_macro.jpg'),
          ('Fundidora Park Suites',       'Av. Fundidora 501',       8.6, '/img/hotels/mty_fundidora.jpg'),
          ('San Pedro Luxury Hotel',      'Av. Ricardo Margáin 500', 8.5, '/img/hotels/mty_sanpedro.jpg'),
          ('Barrio Antiguo Boutique',     'Calle Morelos 300',       8.2, '/img/hotels/mty_barrio.jpg'),
          ('Santa Lucia Riverside Inn',   'Paseo Santa Lucía 50',    8.3, '/img/hotels/mty_lucia.jpg'),
          ('Cerro de la Silla View',      'Carretera Nacional 9000', 8.1, '/img/hotels/mty_silla.jpg'),
          ('Monterrey Tech Lodge',        'Av. Eugenio Garza Sada 2501',8.0,'/img/hotels/mty_tec.jpg'),
          ('Galerías Fashion Hotel',      'Av. Insurgentes 400',     7.9, '/img/hotels/mty_galerias.jpg'),
          ('MTY Airport Stay',            'MTY Airport',             7.7, '/img/hotels/mty_airport.jpg'),
          ('Chipinque Mountain Inn',      'Carretera a Chipinque 1', 7.6, '/img/hotels/mty_chipinque.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Monterrey' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Puebla
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Zócalo Colonial Hotel',       'Av. Reforma 100',         8.7,'/img/hotels/pue_zocalo.jpg'),
          ('Cholula Pyramid View',        '3 Sur 100',               8.5,'/img/hotels/pue_cholula.jpg'),
          ('Los Fuertes Garden Inn',      'Blvd. Héroes del 5 de Mayo 150',8.3,'/img/hotels/pue_fuertes.jpg'),
          ('Angelópolis Suites',          'Blvd. Atlixcáyotl 2301',  8.2,'/img/hotels/pue_angelo.jpg'),
          ('La Paz Urban Lodge',          'Av. Teziutlán Sur 17',    8.0,'/img/hotels/pue_lapaz.jpg'),
          ('Africam Safari Resort',       'Km 16.5 Carr. Valsequillo',7.9,'/img/hotels/pue_safari.jpg'),
          ('UDLAP Residence',             'Sta. Catarina Mártir S/N',7.8,'/img/hotels/pue_udlap.jpg'),
          ('Estrella de Puebla Inn',      'Osa Mayor 250',           7.7,'/img/hotels/pue_estrella.jpg'),
          ('PUE Airport Stay',            'PBC Airport',             7.6,'/img/hotels/pue_airport.jpg'),
          ('Atlixco Country Hotel',       'Carr. Atlixco 20',        7.5,'/img/hotels/pue_atlixco.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Puebla' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Tijuana
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Avenida Revolución Inn',      'Av. Revolución 1200',     8.6,'/img/hotels/tij_revolucion.jpg'),
          ('Zona Río Business Hotel',     'Paseo de los Héroes 950', 8.4,'/img/hotels/tij_zonario.jpg'),
          ('Playas de Tijuana Resort',    'Paseo Playas 300',        8.3,'/img/hotels/tij_playas.jpg'),
          ('Estadio Caliente Suites',     'Blvd. Agua Caliente 12027',8.1,'/img/hotels/tij_caliente.jpg'),
          ('Parque Morelos Lodge',        'Blvd. Insurgentes 16000', 8.0,'/img/hotels/tij_morelos.jpg'),
          ('Otay Mesa Airport Stay',      'TIJ Airport',             7.9,'/img/hotels/tij_airport.jpg'),
          ('Cecut Cultural Hotel',        'Paseo de los Héroes 9350',7.8,'/img/hotels/tij_cecut.jpg'),
          ('Rosarito Beach Inn',          'Blvd. Benito Juárez 31',  7.7,'/img/hotels/tij_rosarito.jpg'),
          ('Tecate Country Resort',       'Carr. Tecate 5',          7.6,'/img/hotels/tij_tecate.jpg'),
          ('Chapultepec Urban Hotel',     'Calz. Universidad 1500',  7.5,'/img/hotels/tij_chapultepec.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Tijuana' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   São Paulo
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Avenida Paulista Suites',      'Av. Paulista 1000',      9.0,'/img/hotels/sp_paulista.jpg'),
          ('Ibirapuera Park View',         'Av. Pedro Álvares 50',   8.8,'/img/hotels/sp_ibirapuera.jpg'),
          ('Vila Madalena Boutique',       'Rua Harmonia 150',       8.5,'/img/hotels/sp_madalena.jpg'),
          ('Liberdade Heritage Inn',       'Rua Galvão Bueno 300',   8.3,'/img/hotels/sp_liberdade.jpg'),
          ('Brooklin Business Hotel',      'Av. Eng. Luís Carlos 134',8.4,'/img/hotels/sp_brooklin.jpg'),
          ('Bela Vista Garden Lodge',      'Rua Frei Caneca 600',    8.1,'/img/hotels/sp_belavista.jpg'),
          ('Pinheiros Urban Hotel',        'Rua dos Pinheiros 770',  8.0,'/img/hotels/sp_pinheiros.jpg'),
          ('São Paulo Expo Residence',     'Rod. Imigrantes KM 1,5', 7.9,'/img/hotels/sp_expo.jpg'),
          ('GRU Airport Stay',             'GRU Airport',            7.8,'/img/hotels/sp_airport.jpg'),
          ('Cantareira Mountain Inn',      'Estr. Sta. Inês 500',    7.7,'/img/hotels/sp_cantareira.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'São Paulo' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Rio de Janeiro
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Copacabana Beach Resort',      'Av. Atlântica 1700',     9.1,'/img/hotels/rio_copa.jpg'),
          ('Ipanema Boutique Hotel',       'Rua Visconde de Pirajá 500',8.8,'/img/hotels/rio_ipanema.jpg'),
          ('Lapa Heritage Inn',            'Rua do Lavradio 30',     8.6,'/img/hotels/rio_lapa.jpg'),
          ('Sugarloaf Mountain View',      'Av. Pasteur 520',        8.5,'/img/hotels/rio_pao.jpg'),
          ('Maracanã Stadium Suites',      'Rua Prof. Eurico Rabelo 100',8.3,'/img/hotels/rio_maracana.jpg'),
          ('Barra da Tijuca Skyline',      'Av. das Américas 5000',  8.2,'/img/hotels/rio_barra.jpg'),
          ('Jardim Botânico Garden',       'Rua Jardim Botânico 920',8.0,'/img/hotels/rio_botanico.jpg'),
          ('Galeão Airport Stay',          'GIG Airport',            7.9,'/img/hotels/rio_airport.jpg'),
          ('Santa Teresa Loft',            'Rua Almirante Alexandrino 660',7.8,'/img/hotels/rio_santateresa.jpg'),
          ('Ilha Grande Seaside',          'Abraão 1',               7.7,'/img/hotels/rio_ilha.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Rio de Janeiro' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Brasília
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Esplanada dos Ministérios View', 'Eixo Monumental',     8.8,'/img/hotels/bra_esplanada.jpg'),
          ('Parque da Cidade Suites',        'Via S1 100',          8.5,'/img/hotels/bra_parque.jpg'),
          ('Asa Sul Urban Hotel',            'SGAS 915',            8.3,'/img/hotels/bra_asasul.jpg'),
          ('Pontão do Lago Norte Inn',       'QI 1 Lote 30',        8.2,'/img/hotels/bra_pontao.jpg'),
          ('Cathedral Boutique',             'Esplanada Lote 12',   8.1,'/img/hotels/bra_cathedral.jpg'),
          ('Juscelino Kubitschek Lodge',     'SMDB Conj. 12',       8.0,'/img/hotels/bra_jk.jpg'),
          ('ParkShopping Residence',         'SGCV Sul Lote 30',    7.9,'/img/hotels/bra_parkshop.jpg'),
          ('BSB Airport Stay',               'BSB Airport',         7.8,'/img/hotels/bra_airport.jpg'),
          ('Chapada dos Veadeiros Inn',      'GO-118 KM 230',       7.7,'/img/hotels/bra_chapada.jpg'),
          ('UNB Garden Hotel',               'Campus Darcy Ribeiro',7.6,'/img/hotels/bra_unb.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Brasília' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Salvador
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Pelourinho Heritage Hotel',     'Largo do Pelourinho 22', 8.9,'/img/hotels/sal_pelourinho.jpg'),
          ('Barra Beach Resort',            'Av. Oceânica 1300',      8.7,'/img/hotels/sal_barra.jpg'),
          ('Rio Vermelho Boutique',         'Rua Fonte do Boi 75',    8.4,'/img/hotels/sal_riov.jpg'),
          ('Itapuã Seaside Inn',            'Praia de Itapuã 200',    8.3,'/img/hotels/sal_itapua.jpg'),
          ('Mercado Modelo Suites',         'Praça Cairu 9',          8.1,'/img/hotels/sal_mercado.jpg'),
          ('Pituba Urban Hotel',            'Av. Manoel Dias 1000',   8.0,'/img/hotels/sal_pituba.jpg'),
          ('Iguatemi Business Lodge',       'Av. Tancredo Neves 300', 7.9,'/img/hotels/sal_iguatemi.jpg'),
          ('SSA Airport Stay',              'SSA Airport',            7.8,'/img/hotels/sal_airport.jpg'),
          ('Lauro de Freitas Country',      'Estr. do Coco 1000',     7.7,'/img/hotels/sal_lauro.jpg'),
          ('Praia do Forte Resort',         'Av. do Farol 100',       7.6,'/img/hotels/sal_forte.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Salvador' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Fortaleza
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Praia de Iracema Hotel',       'Av. Beira Mar 1000',      8.8,'/img/hotels/for_iracema.jpg'),
          ('Meireles Beach Suites',        'Av. Abolição 2500',       8.6,'/img/hotels/for_meireles.jpg'),
          ('Dragão do Mar Boutique',       'Rua Dragão do Mar 81',    8.4,'/img/hotels/for_dragao.jpg'),
          ('Praia do Futuro Resort',       'Av. Clóvis Arrais 100',   8.3,'/img/hotels/for_futuro.jpg'),
          ('Centro Cultural Urban Hotel',  'Rua Sena Madureira 50',   8.1,'/img/hotels/for_cultural.jpg'),
          ('Aldeota Garden Inn',           'Rua Costa Barros 1234',   8.0,'/img/hotels/for_aldeota.jpg'),
          ('Mucuripe Harbor Lodge',        'Av. Vicente de Castro 10',7.9,'/img/hotels/for_mucuripe.jpg'),
          ('FOR Airport Stay',             'FOR Airport',             7.8,'/img/hotels/for_airport.jpg'),
          ('Cumbuco Dune Hotel',           'Estr. do Cumbuco 2000',   7.7,'/img/hotels/for_cumbuco.jpg'),
          ('Jericoacoara Seaside Inn',     'Rua Principal 20',        7.6,'/img/hotels/for_jeri.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Fortaleza' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Buenos Aires
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Obelisco View Hotel',           'Av. 9 de Julio 800',        9.0,'/img/hotels/ba_obelisco.jpg'),
          ('Recoleta Boutique',             'Av. Alvear 1700',           8.8,'/img/hotels/ba_recoleta.jpg'),
          ('Puerto Madero Riverside',       'Dique 1 – Pier 5',          8.6,'/img/hotels/ba_madero.jpg'),
          ('San Telmo Heritage Inn',        'Defensa 400',               8.4,'/img/hotels/ba_santelmo.jpg'),
          ('Palermo Soho Suites',           'Thames 1500',               8.5,'/img/hotels/ba_palermo.jpg'),
          ('La Boca Color Lodge',           'Caminito 20',               8.1,'/img/hotels/ba_boca.jpg'),
          ('Retiro Station Hotel',          'Av. Ramos Mejía 1302',      7.9,'/img/hotels/ba_retiro.jpg'),
          ('Aeroparque Airport Stay',       'AEP Airport',               7.8,'/img/hotels/ba_aep.jpg'),
          ('Belgrano Garden Residence',     'Av. Cabildo 2000',          7.7,'/img/hotels/ba_belgrano.jpg'),
          ('Tigre Delta Resort',            'Río Sarmiento 100',         7.6,'/img/hotels/ba_tigre.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Buenos Aires' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays'      LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Córdoba (Argentina)
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Nueva Córdoba Boutique',        'Hipólito Yrigoyen 300',     8.8,'/img/hotels/cordoba_nueva.jpg'),
          ('Jesuit Block Heritage Inn',     'Obispo Trejo 242',          8.6,'/img/hotels/cordoba_jesuit.jpg'),
          ('Sarmiento Park View',           'Av. Del Dante 150',         8.4,'/img/hotels/cordoba_sarmiento.jpg'),
          ('Güemes Urban Lodge',            'Belgrano 700',              8.2,'/img/hotels/cordoba_guemes.jpg'),
          ('Patio Olmos Suites',            'Av. Vélez Sársfield 361',   8.1,'/img/hotels/cordoba_olmos.jpg'),
          ('Alta Córdoba Garden',           'Juan B. Justo 2500',        8.0,'/img/hotels/cordoba_alta.jpg'),
          ('Córdoba Zoo Residence',         'Rondeau 798',               7.8,'/img/hotels/cordoba_zoo.jpg'),
          ('Pajas Blancas Airport Stay',    'COR Airport',               7.7,'/img/hotels/cordoba_airport.jpg'),
          ('Villa Allende Country Inn',     'Ruta E-55 KM 12',           7.6,'/img/hotels/cordoba_villa.jpg'),
          ('Carlos Paz Lake Resort',        'Av. Libertad 300',          7.5,'/img/hotels/cordoba_vcp.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Córdoba' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Rosario
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Monumento a la Bandera View',   'Calle Córdoba 1',          8.9,'/img/hotels/ros_bandera.jpg'),
          ('Paraná Riverside Inn',          'Av. Belgrano 500',        8.6,'/img/hotels/ros_parana.jpg'),
          ('Paseo del Siglo Boutique',      'Córdoba 1500',            8.4,'/img/hotels/ros_siglo.jpg'),
          ('Boulevard Oroño Suites',        'Oroño 900',               8.2,'/img/hotels/ros_orono.jpg'),
          ('Alto Rosario Mall Hotel',       'Junín 501',               8.0,'/img/hotels/ros_alto.jpg'),
          ('Rosario Central Stadium',       'Av. Génova 2410',         7.9,'/img/hotels/ros_central.jpg'),
          ('Fisherton Country Lodge',       'Eva Perón 8898',          7.8,'/img/hotels/ros_fisherton.jpg'),
          ('ROS Airport Stay',              'ROS Airport',             7.7,'/img/hotels/ros_airport.jpg'),
          ('Island El Espinillo Resort',    'Río Paraná Km 420',       7.6,'/img/hotels/ros_island.jpg'),
          ('La Florida Beach Hotel',        'Av. Carrasco 100',        7.5,'/img/hotels/ros_florida.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Rosario' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Mendoza
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Parque General San Martín Inn',  'Av. Las Tipas 100',      8.8,'/img/hotels/mdz_parque.jpg'),
          ('Wine Route Boutique',            'Ruta 40 KM 25',         8.7,'/img/hotels/mdz_wine.jpg'),
          ('Peatonal Sarmiento Suites',      'Sarmiento 150',         8.4,'/img/hotels/mdz_peatonal.jpg'),
          ('Godoy Cruz Urban Hotel',         'San Martín 600',        8.2,'/img/hotels/mdz_godoy.jpg'),
          ('Cacheuta Thermal Resort',        'Ruta 82 KM 38',         8.1,'/img/hotels/mdz_cacheuta.jpg'),
          ('Chacras de Coria Lodge',         'Pueyrredón 200',        8.0,'/img/hotels/mdz_chacras.jpg'),
          ('MDZ Airport Stay',               'MDZ Airport',           7.8,'/img/hotels/mdz_airport.jpg'),
          ('Uspallata Mountain Inn',         'RN7 KM 1140',           7.7,'/img/hotels/mdz_uspallata.jpg'),
          ('Potrerillos Lake Resort',        'RP 89 KM 5',            7.6,'/img/hotels/mdz_potrerillos.jpg'),
          ('Valle de Uco Country',           'Ruta 94 KM 88',         7.5,'/img/hotels/mdz_uco.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Mendoza' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   La Plata
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Catedral Neo-Gótica View',      'Calle 14 Nº 51',         8.7,'/img/hotels/lp_catedral.jpg'),
          ('Paseo del Bosque Inn',          'Av. Iraola 200',         8.5,'/img/hotels/lp_bosque.jpg'),
          ('Centro Cívico Suites',          'Calle 12 Nº 500',        8.3,'/img/hotels/lp_civic.jpg'),
          ('City Bell Country Lodge',       'Camino Centenario 250',  8.1,'/img/hotels/lp_citybell.jpg'),
          ('Estadio Único Hotel',           'Av. 32 y 25',            8.0,'/img/hotels/lp_estadio.jpg'),
          ('Tolosa Urban Hotel',            'Calle 1 Nº 200',         7.9,'/img/hotels/lp_tolosa.jpg'),
          ('La Plata Zoo Residence',        'Av. 52 y 120',           7.8,'/img/hotels/lp_zoo.jpg'),
          ('LPQ Airport Stay',              'La Plata Airport',       7.7,'/img/hotels/lp_airport.jpg'),
          ('Gonnet Garden Inn',             'Camino Belgrano 480',    7.6,'/img/hotels/lp_gonnet.jpg'),
          ('Berisso Riverside Hotel',       'Av. Montevideo 1200',    7.5,'/img/hotels/lp_berisso.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'La Plata' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Johannesburg
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Sandton Skyline Hotel',         'Rivonia Rd 120',         8.8,'/img/hotels/job_sandton.jpg'),
          ('Maboneng Art Boutique',         'Fox St 270',             8.4,'/img/hotels/job_maboneng.jpg'),
          ('Apartheid Museum View',         'Northern Pkwy 1',        8.3,'/img/hotels/job_museum.jpg'),
          ('Melrose Arch Suites',           'Melrose Blvd 40',        8.2,'/img/hotels/job_melrose.jpg'),
          ('Rosebank Garden Inn',           'Oxford Rd 198',          8.0,'/img/hotels/job_rosebank.jpg'),
          ('Gold Reef City Resort',         'Northern Pkwy 21',       7.9,'/img/hotels/job_goldreef.jpg'),
          ('Nelson Mandela Square',         'Fifth St 100',           8.1,'/img/hotels/job_mandela.jpg'),
          ('OR Tambo Airport Stay',         'JNB Airport',            7.8,'/img/hotels/job_airport.jpg'),
          ('Soweto Heritage Lodge',         'Vilakazi St 8115',       7.7,'/img/hotels/job_soweto.jpg'),
          ('Cradle of Humankind Inn',       'R400 Kromdraai',         7.6,'/img/hotels/job_cradle.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Johannesburg' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Cape Town
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Table Mountain View',          'Tafelberg Rd 1',          9.0,'/img/hotels/ct_table.jpg'),
          ('V&A Waterfront Suites',        'Dock Rd 17',              8.8,'/img/hotels/ct_va.jpg'),
          ('Camps Bay Beach Resort',       'Victoria Rd 35',          8.6,'/img/hotels/ct_camps.jpg'),
          ('Bo-Kaap Heritage Inn',         'Wale St 90',              8.4,'/img/hotels/ct_bokaap.jpg'),
          ('Kirstenbosch Garden Hotel',    'Rhodes Dr',               8.3,'/img/hotels/ct_kirst.jpg'),
          ('Sea Point Promenade Lodge',    'Beach Rd 300',            8.1,'/img/hotels/ct_seapoint.jpg'),
          ('Constantia Wine Country',      'Constantia Main 100',     8.0,'/img/hotels/ct_constantia.jpg'),
          ('CPT Airport Stay',             'CPT Airport',             7.9,'/img/hotels/ct_airport.jpg'),
          ('Robben Island View',           'Scharenberg Rd 5',        7.8,'/img/hotels/ct_robben.jpg'),
          ('Blouberg Kite Resort',         'Marine Dr 200',           7.7,'/img/hotels/ct_blouberg.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Cape Town' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Durban
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Golden Mile Beach Hotel',      'O R Tambo Parade 60',     8.9,'/img/hotels/dbn_mile.jpg'),
          ('uShaka Marine Suites',         'uShaka Ave 1',            8.7,'/img/hotels/dbn_ushaka.jpg'),
          ('Moses Mabhida Stadium Inn',    'Isaiah Ntshangase 44',    8.4,'/img/hotels/dbn_moses.jpg'),
          ('Florida Road Boutique',        'Florida Rd 150',          8.3,'/img/hotels/dbn_florida.jpg'),
          ('Gateway Theatre Residence',    'Palm Blvd 1',             8.2,'/img/hotels/dbn_gateway.jpg'),
          ('Umhlanga Beach Resort',        'Lagoon Dr 88',            8.0,'/img/hotels/dbn_umhlanga.jpg'),
          ('Durban ICC Business',          'Walnut Rd 45',            7.9,'/img/hotels/dbn_icc.jpg'),
          ('King Shaka Airport Stay',      'DUR Airport',             7.8,'/img/hotels/dbn_airport.jpg'),
          ('Berea Garden Lodge',           'Stephen Dlamini 600',     7.7,'/img/hotels/dbn_berea.jpg'),
          ('Valley of 1000 Hills Inn',     'Old Main Rd 450',         7.6,'/img/hotels/dbn_valley.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Durban' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Pretoria
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Union Buildings View',         'Government Ave 2',        8.8,'/img/hotels/pre_union.jpg'),
          ('Hatfield Urban Hotel',         'Burnett St 1050',         8.5,'/img/hotels/pre_hatfield.jpg'),
          ('Loftus Versfeld Suites',       'Park St 416',             8.3,'/img/hotels/pre_loftus.jpg'),
          ('Menlyn Maine Residence',       'Aramist Ave 186',         8.2,'/img/hotels/pre_menlyn.jpg'),
          ('Brooklyn Garden Inn',          'Middel St 250',           8.1,'/img/hotels/pre_brooklyn.jpg'),
          ('Voortrekker Monument Lodge',   'Eeufees Rd',              8.0,'/img/hotels/pre_voortrekker.jpg'),
          ('Silver Lakes Country',         'Silver Lakes Dr 100',     7.9,'/img/hotels/pre_silver.jpg'),
          ('PRE Airport Stay',             'Wonderboom Airport',      7.8,'/img/hotels/pre_airport.jpg'),
          ('Groenkloof Nature Hotel',      'Fountains Valley',        7.7,'/img/hotels/pre_groenkloof.jpg'),
          ('Cullinan Diamond Inn',         'Oak Ave 1',               7.6,'/img/hotels/pre_cullinan.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Pretoria' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   Port Elizabeth
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Summerstrand Beach Hotel',     'Marine Dr 1',             8.7,'/img/hotels/pe_summer.jpg'),
          ('Boardwalk Casino Resort',      'Beach Rd 2',              8.5,'/img/hotels/pe_boardwalk.jpg'),
          ('Donkin Reserve View',          'Donkin St 40',            8.3,'/img/hotels/pe_donkin.jpg'),
          ('Bayworld Seaside Inn',         'Beach Rd 25',             8.2,'/img/hotels/pe_bayworld.jpg'),
          ('Nelson Mandela Bay Suites',    'Govan Mbeki Ave 80',      8.0,'/img/hotels/pe_nmb.jpg'),
          ('Walmer Park Lodge',            'Main Rd 183',             7.9,'/img/hotels/pe_walmer.jpg'),
          ('Kragga Kamma Safari Lodge',    'Kragga Kamma Rd',         7.8,'/img/hotels/pe_kragga.jpg'),
          ('P.E. Airport Stay',            'PLZ Airport',             7.7,'/img/hotels/pe_airport.jpg'),
          ('Addo Elephant Inn',            'R335 Addo',               7.6,'/img/hotels/pe_addo.jpg'),
          ('Seaview Predator Park',        'Grunon Rd 1',             7.5,'/img/hotels/pe_seaview.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Port Elizabeth' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   NAIROBI
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Karen Blixen Boutique',        'Karen Rd 50',           8.8,'/img/hotels/nbo_karen.jpg'),
          ('Westlands Skyline Hotel',      'Muthithi Rd 80',        8.6,'/img/hotels/nbo_westlands.jpg'),
          ('Gigiri Diplomatic Suites',     'Limuru Rd 200',         8.4,'/img/hotels/nbo_gigiri.jpg'),
          ('CBD Heritage Inn',             'Kenyatta Ave 25',       8.2,'/img/hotels/nbo_cbd.jpg'),
          ('Nairobi National Park Lodge',  'Magadi Rd 1',           8.3,'/img/hotels/nbo_park.jpg'),
          ('Lavington Garden Hotel',       'James Gichuru Rd 120',  8.0,'/img/hotels/nbo_lavington.jpg'),
          ('Two Rivers Riverside',         'Northern Bypass Km 5',  7.9,'/img/hotels/nbo_rivers.jpg'),
          ('Kilimani Urban Hotel',         'Dennis Pritt Rd 40',    7.8,'/img/hotels/nbo_kilimani.jpg'),
          ('JKIA Airport Stay',            'NBO Airport',           7.7,'/img/hotels/nbo_airport.jpg'),
          ('Ngong Hills Country Inn',      'Ngong Rd Km 12',        7.6,'/img/hotels/nbo_ngong.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Nairobi' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays'  LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   MOMBASA
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Nyali Beach Resort',           'Links Rd 100',          9.0,'/img/hotels/msa_nyali.jpg'),
          ('Fort Jesus Heritage Hotel',    'Nkrumah Rd 1',          8.7,'/img/hotels/msa_fort.jpg'),
          ('Diani Seaside Suites',         'Diani Beach Rd 15',     8.5,'/img/hotels/msa_diani.jpg'),
          ('Old Town Boutique',            'Ndia Kuu Rd 50',        8.3,'/img/hotels/msa_oldtown.jpg'),
          ('Bamburi Marine Inn',           'Mombasa–Malindi Rd 20', 8.2,'/img/hotels/msa_bamburi.jpg'),
          ('Tononoka Urban Hotel',         'Moi Ave 200',           8.1,'/img/hotels/msa_tononoka.jpg'),
          ('Shanzu Garden Lodge',          'Serena Rd 5',           7.9,'/img/hotels/msa_shanzu.jpg'),
          ('Port Reitz Airport Stay',      'MBA Airport',           7.8,'/img/hotels/msa_airport.jpg'),
          ('Likoni Ferry View',            'Ferry Rd 1',            7.7,'/img/hotels/msa_likoni.jpg'),
          ('Haller Park Residence',        'Mombasa–Malindi Rd 31', 7.6,'/img/hotels/msa_haller.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Mombasa' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   KISUMU
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Lake Victoria View',           'Oginga Odinga St 10',   8.7,'/img/hotels/kis_lake.jpg'),
          ('Impala Sanctuary Inn',         'Busia Rd 2',            8.4,'/img/hotels/kis_impala.jpg'),
          ('CBD Garden Hotel',             'Jomo Kenyatta Hwy 50',  8.2,'/img/hotels/kis_cbd.jpg'),
          ('Milimani Boutique',            'Milimani Rd 15',        8.1,'/img/hotels/kis_milimani.jpg'),
          ('Dunga Beach Lodge',            'Ring Rd 5',             8.0,'/img/hotels/kis_dunga.jpg'),
          ('Kisumu Airport Stay',          'KIS Airport',           7.9,'/img/hotels/kis_airport.jpg'),
          ('Ahero Country Inn',            'A1 Hwy Km 20',          7.8,'/img/hotels/kis_ahero.jpg'),
          ('Town Clock Suites',            'Oginga Odinga St 100',  7.7,'/img/hotels/kis_clock.jpg'),
          ('Maseno Forest Lodge',          'Kibos Rd 30',           7.6,'/img/hotels/kis_maseno.jpg'),
          ('Hippo Point Resort',           'Kisian Beach',          7.5,'/img/hotels/kis_hippo.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Kisumu' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   NAKURU
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Lake Nakuru Flamingo Lodge',   'Flamingo Rd 1',          8.8,'/img/hotels/nku_lake.jpg'),
          ('Menengai Crater View',         'Menengai Rd 7',          8.5,'/img/hotels/nku_menengai.jpg'),
          ('CBD Urban Hotel',              'Kenyatta Ave 20',        8.2,'/img/hotels/nku_cbd.jpg'),
          ('Nakuru National Park Inn',     'Lanet Gate Rd 3',        8.1,'/img/hotels/nku_park.jpg'),
          ('Naka Estate Boutique',         'Naka Rd 12',             8.0,'/img/hotels/nku_naka.jpg'),
          ('Pipeline Garden Suites',       'Pipeline Rd 40',         7.9,'/img/hotels/nku_pipeline.jpg'),
          ('Great Rift Valley Lodge',      'A104 Hwy Km 15',         7.8,'/img/hotels/nku_rift.jpg'),
          ('Nakuru Airport Stay',          'NUU Airstrip',           7.7,'/img/hotels/nku_airport.jpg'),
          ('Kabarak Country Inn',          'Kabarak Rd 5',           7.6,'/img/hotels/nku_kabarak.jpg'),
          ('Elementaita Seaside',          'B4 Hwy Km 20',           7.5,'/img/hotels/nku_elementaita.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Nakuru' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   ELDORET
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Iten View High-Altitude Inn',  'Eldoret–Iten Rd 15',      8.6,'/img/hotels/eld_iten.jpg'),
          ('Kapsoya Urban Hotel',          'Nyerere Rd 30',           8.4,'/img/hotels/eld_kapsoya.jpg'),
          ('CBD Heritage Suites',          'Oloo St 12',              8.2,'/img/hotels/eld_cbd.jpg'),
          ('Kipchoge Stadium Lodge',       'Stadium Rd 5',            8.0,'/img/hotels/eld_stadium.jpg'),
          ('Moi University Residence',     'Kesses Rd 60',            7.9,'/img/hotels/eld_moi.jpg'),
          ('Elgon View Garden Inn',        'Elgon View Dr 22',        7.8,'/img/hotels/eld_elgon.jpg'),
          ('Eldoret Airport Stay',         'EDL Airport',            7.7,'/img/hotels/eld_airport.jpg'),
          ('Chepkorio Country Hotel',      'B54 Hwy Km 8',            7.6,'/img/hotels/eld_chepkorio.jpg'),
          ('Uasin Gishu Lodge',            'Uganda Rd 90',            7.5,'/img/hotels/eld_uasingishu.jpg'),
          ('Nandi Hills Retreat',          'C36 Hwy Km 30',           7.4,'/img/hotels/eld_nandi.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Eldoret' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   SYDNEY
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Opera House View Hotel',       'Macquarie St 2',         9.1,'/img/hotels/syd_opera.jpg'),
          ('Harbour Bridge Suites',        'Cumberland St 200',      9.0,'/img/hotels/syd_bridge.jpg'),
          ('Darling Harbour Inn',          'Harbour St 150',         8.8,'/img/hotels/syd_darling.jpg'),
          ('Bondi Beach Resort',           'Campbell Pde 108',       8.6,'/img/hotels/syd_bondi.jpg'),
          ('The Rocks Heritage Lodge',     'George St 75',           8.4,'/img/hotels/syd_rocks.jpg'),
          ('Circular Quay Boutique',       'Alfred St 10',           8.3,'/img/hotels/syd_quay.jpg'),
          ('Manly Seaside Hotel',          'Steyne 1',               8.1,'/img/hotels/syd_manly.jpg'),
          ('Kingsford Smith Airport Stay', 'SYD Airport',            7.9,'/img/hotels/syd_airport.jpg'),
          ('Parramatta Urban Hotel',       'Church St 350',          8.0,'/img/hotels/syd_parra.jpg'),
          ('Blue Mountains Retreat',       'Echo Point Rd 1',        7.8,'/img/hotels/syd_blue.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Sydney' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   MELBOURNE
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Flinders Street Boutique',     'Flinders St 200',        9.0,'/img/hotels/mel_flinders.jpg'),
          ('Federation Square Suites',     'Swanston St 1',          8.8,'/img/hotels/mel_fedsq.jpg'),
          ('Southbank Riverside Inn',      'Southbank Blvd 30',      8.7,'/img/hotels/mel_southbank.jpg'),
          ('St Kilda Beach Resort',        'The Esplanade 50',       8.5,'/img/hotels/mel_stkilda.jpg'),
          ('Docklands Skyline Hotel',      'Harbour Esplanade 130',  8.3,'/img/hotels/mel_docklands.jpg'),
          ('Carlton Garden Lodge',         'Lygon St 300',           8.2,'/img/hotels/mel_carlton.jpg'),
          ('Chapel Street Urban',          'Chapel St 500',          8.1,'/img/hotels/mel_chapel.jpg'),
          ('MEL Tullamarine Stay',         'MEL Airport',            7.9,'/img/hotels/mel_airport.jpg'),
          ('Yarra Valley Wine Hotel',      'Melba Hwy 100',          7.8,'/img/hotels/mel_yarra.jpg'),
          ('Great Ocean Road Lodge',       'GOR Km 150',             7.7,'/img/hotels/mel_gor.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Melbourne' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   BRISBANE
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('South Bank River Hotel',       'Grey St 100',            8.9,'/img/hotels/bne_southbank.jpg'),
          ('Queen Street Mall Suites',     'Queen St 200',           8.7,'/img/hotels/bne_queen.jpg'),
          ('Kangaroo Point View',          'Main St 150',            8.5,'/img/hotels/bne_kangaroo.jpg'),
          ('Fortitude Valley Boutique',    'Brunswick St 700',       8.3,'/img/hotels/bne_valley.jpg'),
          ('Mount Coot-tha Retreat',       'Sir Samuel Griffith Dr', 8.2,'/img/hotels/bne_coottha.jpg'),
          ('Roma Street Parklands',        'Parkland Blvd 9',        8.1,'/img/hotels/bne_roma.jpg'),
          ('West End Urban Hotel',         'Boundary St 100',        8.0,'/img/hotels/bne_westend.jpg'),
          ('BNE Airport Stay',             'BNE Airport',            7.9,'/img/hotels/bne_airport.jpg'),
          ('Redcliffe Seaside Inn',        'Suttons Beach',          7.8,'/img/hotels/bne_redcliffe.jpg'),
          ('Moreton Island Resort',        'Tangalooma Jetty',       7.7,'/img/hotels/bne_moreton.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Brisbane' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   PERTH
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Elizabeth Quay Boutique',      'The Esplanade 1',        8.8,'/img/hotels/per_quay.jpg'),
          ('Kings Park View Hotel',        'Fraser Ave 60',          8.6,'/img/hotels/per_kings.jpg'),
          ('Fremantle Heritage Inn',       'High St 100',            8.5,'/img/hotels/per_freo.jpg'),
          ('Cottesloe Beach Resort',       'Marine Pde 150',         8.3,'/img/hotels/per_cott.jpg'),
          ('Northbridge Urban Lodge',      'William St 300',         8.1,'/img/hotels/per_north.jpg'),
          ('Perth Arena Suites',           'Roe St 700',             8.0,'/img/hotels/per_arena.jpg'),
          ('Swan Valley Wine Hotel',       'West Swan Rd 250',       7.9,'/img/hotels/per_swan.jpg'),
          ('PER Airport Stay',             'PER Airport',            7.8,'/img/hotels/per_airport.jpg'),
          ('Mandurah Marina Inn',          'Ormsby Tce 20',          7.7,'/img/hotels/per_mandurah.jpg'),
          ('Rottnest Island Lodge',        'Rottnest Settlement',    7.6,'/img/hotels/per_rottnest.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Perth' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   ADELAIDE
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Rundle Mall Boutique',         'Rundle Mall 100',        8.8,'/img/hotels/adl_rundle.jpg'),
          ('Glenelg Beach Resort',         'Jetty Rd 5',             8.6,'/img/hotels/adl_glenelg.jpg'),
          ('Adelaide Oval View',           'War Memorial Dr 20',     8.5,'/img/hotels/adl_oval.jpg'),
          ('Central Market Suites',        'Gouger St 50',           8.3,'/img/hotels/adl_market.jpg'),
          ('North Terrace Heritage',       'North Tce 200',          8.2,'/img/hotels/adl_terrace.jpg'),
          ('Henley Seaside Inn',           'Henley Beach Rd 300',    8.0,'/img/hotels/adl_henley.jpg'),
          ('Mount Lofty Retreat',          'Summit Rd 1',            7.9,'/img/hotels/adl_lofty.jpg'),
          ('ADL Airport Stay',             'ADL Airport',            7.8,'/img/hotels/adl_airport.jpg'),
          ('Port Adelaide Harbor Hotel',   'Lipson St 1',            7.7,'/img/hotels/adl_port.jpg'),
          ('Barossa Valley Wine Lodge',    'Barossa Hwy 50',         7.6,'/img/hotels/adl_barossa.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Adelaide' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   AUCKLAND
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Sky Tower View Hotel',         'Victoria St 1',          9.0,'/img/hotels/akl_sky.jpg'),
          ('Viaduct Harbour Suites',       'Quay St 140',            8.8,'/img/hotels/akl_viaduct.jpg'),
          ('Queen Street Boutique',        'Queen St 350',           8.6,'/img/hotels/akl_queen.jpg'),
          ('Mission Bay Beach Inn',        'Tamaki Dr 75',           8.4,'/img/hotels/akl_mission.jpg'),
          ('Ponsonby Urban Lodge',         'Ponsonby Rd 150',        8.2,'/img/hotels/akl_ponsonby.jpg'),
          ('Wynyard Quarter Hotel',        'Halsey St 115',          8.1,'/img/hotels/akl_wynyard.jpg'),
          ('Auckland Domain Garden',       'Park Rd 70',             8.0,'/img/hotels/akl_domain.jpg'),
          ('AKL Airport Stay',             'AKL Airport',            7.9,'/img/hotels/akl_airport.jpg'),
          ('Waitakere Rainforest Retreat', 'Scenic Dr 100',          7.8,'/img/hotels/akl_waitakere.jpg'),
          ('Waiheke Island Resort',        'Oceanview Rd 20',        7.7,'/img/hotels/akl_waiheke.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Auckland' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   WELLINGTON
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Te Papa Museum Suites',        'Cable St 55',            8.9,'/img/hotels/wlg_tepa.jpg'),
          ('Waterfront Boutique',          'Queens Wharf 1',         8.7,'/img/hotels/wlg_water.jpg'),
          ('Cuba Street Urban Hotel',      'Cuba St 200',            8.5,'/img/hotels/wlg_cuba.jpg'),
          ('Botanic Garden Inn',           'Glenmore St 25',         8.3,'/img/hotels/wlg_botanic.jpg'),
          ('Mount Victoria View',          'Lookout Rd 5',           8.2,'/img/hotels/wlg_mtvic.jpg'),
          ('Oriental Bay Seaside',         'Oriental Pde 150',       8.0,'/img/hotels/wlg_oriental.jpg'),
          ('Weta Workshop Lodge',          'Cambridge Tce 1',        7.9,'/img/hotels/wlg_weta.jpg'),
          ('WLG Airport Stay',             'WLG Airport',            7.8,'/img/hotels/wlg_airport.jpg'),
          ('Zealandia Eco-Retreat',        'Waiapu Rd 31',           7.7,'/img/hotels/wlg_zealandia.jpg'),
          ('Kapiti Coast Resort',          'Marine Pde 40',          7.6,'/img/hotels/wlg_kapiti.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Wellington' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   CHRISTCHURCH
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Cathedral Square Hotel',       'Cathedral Sq 1',         8.8,'/img/hotels/chc_cathedral.jpg'),
          ('Avon River Suites',            'Oxford Tce 150',         8.6,'/img/hotels/chc_avon.jpg'),
          ('Botanic Gardens Inn',          'Riccarton Ave 30',       8.5,'/img/hotels/chc_botanic.jpg'),
          ('New Regent Heritage',          'New Regent St 25',       8.3,'/img/hotels/chc_regent.jpg'),
          ('Lyttelton Harbour Lodge',      'London St 40',           8.1,'/img/hotels/chc_lyttelton.jpg'),
          ('Port Hills Retreat',           'Dyers Pass Rd 60',       8.0,'/img/hotels/chc_port.jpg'),
          ('Sumner Beach Hotel',           'Esplanade 65',           7.9,'/img/hotels/chc_sumner.jpg'),
          ('CHC Airport Stay',             'CHC Airport',            7.8,'/img/hotels/chc_airport.jpg'),
          ('Banks Peninsula Resort',       'Akaroa Main Rd',         7.7,'/img/hotels/chc_banks.jpg'),
          ('Kaikoura Coastal Inn',         'Beach Rd 150',           7.6,'/img/hotels/chc_kaikoura.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Christchurch' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   HAMILTON
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Waikato River View',           'Victoria St 500',        8.7,'/img/hotels/ham_river.jpg'),
          ('Hamilton Gardens Lodge',       'Cobham Dr 20',           8.5,'/img/hotels/ham_gardens.jpg'),
          ('CBD Boutique Hotel',           'Anglesea St 200',        8.3,'/img/hotels/ham_cbd.jpg'),
          ('Claudelands Arena Suites',     'Heaphy Tce 8',           8.2,'/img/hotels/ham_claudelands.jpg'),
          ('The Base Shopping Inn',        'Te Rapa Rd 1400',        8.1,'/img/hotels/ham_base.jpg'),
          ('Lake Rotoroa Urban',           'Lake Rd 60',             8.0,'/img/hotels/ham_lake.jpg'),
          ('Hobbiton Gateway Hotel',       'SH1 Karapiro',           7.9,'/img/hotels/ham_hobbiton.jpg'),
          ('HLZ Airport Stay',             'HLZ Airport',            7.8,'/img/hotels/ham_airport.jpg'),
          ('Raglan Surf Resort',           'Wainui Rd 10',           7.7,'/img/hotels/ham_raglan.jpg'),
          ('Waitomo Caves Lodge',          'SH3 Waitomo',            7.6,'/img/hotels/ham_waitomo.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Hamilton' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;

/* ================================================================
   DUNEDIN
   ================================================================ */
INSERT INTO hotels (hotel_name, address, rating, image_url, city_id, category_id)
SELECT t.hotel_name, t.address, t.rating, t.img_url, c.id, cat.id
FROM (VALUES
          ('Octagon Heritage Hotel',       'The Octagon 1',          8.8,'/img/hotels/dud_octagon.jpg'),
          ('St Clair Beach Resort',        'Esplanade 30',           8.6,'/img/hotels/dud_stclair.jpg'),
          ('University Quarter Suites',    'Castle St 500',          8.4,'/img/hotels/dud_uni.jpg'),
          ('Larnach Castle Lodge',         'Camp Rd 145',            8.3,'/img/hotels/dud_larnach.jpg'),
          ('Otago Peninsula Inn',          'Harington Point Rd 100', 8.1,'/img/hotels/dud_peninsula.jpg'),
          ('Baldwin St Hill Hotel',        'Baldwin St 10',          8.0,'/img/hotels/dud_baldwin.jpg'),
          ('DUD Airport Stay',             'DUD Airport',            7.9,'/img/hotels/dud_airport.jpg'),
          ('Port Chalmers Harbor Lodge',   'George St 50',           7.8,'/img/hotels/dud_port.jpg'),
          ('Sandfly Bay Retreat',          'Sandymount Rd',          7.7,'/img/hotels/dud_sandfly.jpg'),
          ('Catlins Coastal Inn',          'Owaka Hwy 1',            7.6,'/img/hotels/dud_catlins.jpg')
     ) AS t(hotel_name,address,rating,img_url)
         CROSS JOIN LATERAL (SELECT id FROM cities WHERE city_name = 'Dunedin' LIMIT 1) AS c
CROSS JOIN LATERAL (SELECT id FROM categories WHERE category_name = 'Stays' LIMIT 1) AS cat
ON CONFLICT DO NOTHING;




