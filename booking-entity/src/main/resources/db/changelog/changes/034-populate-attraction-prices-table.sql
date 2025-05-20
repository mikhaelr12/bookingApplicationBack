/* =====================================================================
   POPULATE `attraction_prices`
   • Creează un tarif pentru FIECARE combinație:
       ◦ attraction_id  (toate atracțiile din tabelul `attractions`)
       ◦ category_id    (Adult / Child / Senior / Student / Infant)
   • Prețurile sunt stabilite printr-un CASE simplu:
       Adult   → 25.00   | Child  → 12.50
       Senior  → 20.00   | Student→ 18.00
       Infant  →  0.00
   • ON CONFLICT DO NOTHING  →  script idempotent
   ===================================================================== */

WITH
    attrs AS (                       -- toate atracțiile
        SELECT id AS attraction_id
        FROM   attractions
    ),
    cats AS (                        -- toate categoriile de vizitatori
        SELECT id   AS category_id,
               name AS vc_name
        FROM   visitor_categories
    )

INSERT INTO attraction_prices
        (attraction_price,
         category_id,
         attraction_id)
SELECT
    /* ------- Preț în funcție de categorie --------------------------- */
    CASE cats.vc_name
        WHEN 'Adult'   THEN 25.00
        WHEN 'Child'   THEN 12.50
        WHEN 'Senior'  THEN 20.00
        WHEN 'Student' THEN 18.00
        WHEN 'Infant'  THEN  0.00
        ELSE 15.00                 -- fallback (dacă adaugi categorii noi)
        END                                           AS attraction_price,

    cats.category_id,
    attrs.attraction_id
FROM   attrs
           CROSS  JOIN cats
    ON CONFLICT DO NOTHING;             -- nu creează duplicate la rerulare
