CREATE INDEX falls_by_name ON fallsxml f (
    SUBSTR ( XMLType.getStringVal( XMLType.extract(f.fall, '/fall/name/text()')), 1, 80 )
) ;
/