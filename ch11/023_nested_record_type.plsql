DECLARE
   TYPE phone_rectype IS RECORD (
      intl_prefix   VARCHAR2 (2)
    , area_code     VARCHAR2 (3)
    , exchange      VARCHAR2 (3)
    , phn_number    VARCHAR2 (4)
    , extension     VARCHAR2 (4)
   );

   -- Each field is a nested record...
   TYPE contact_set_rectype IS RECORD (
      day_phone#    phone_rectype
    , eve_phone#    phone_rectype
    , fax_phone#    phone_rectype
    , home_phone#   phone_rectype
    , cell_phone#   phone_rectype
   );

   auth_rep_info_rec   contact_set_rectype;
BEGIN
   auth_rep_info_rec.fax_phone#.area_code :=
      auth_rep_info_rec.home_phone#.area_code;
END;
/