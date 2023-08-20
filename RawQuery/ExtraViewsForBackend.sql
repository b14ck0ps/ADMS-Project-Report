create  or replace view player_detail_view AS
SELECT
    p.player_id,p.player_ign, p.player_name, p.player_email, p.player_password, p.player_picture, p.player_joindate, p.player_play_hours, p.player_salary, p.player_dob,
    pa.pa_id, pa.player_country, pa.player_city, pa.player_street, pa.player_zip_code,
    psl.psl_id, psl.player_facebook_link, psl.player_instagram_link, psl.player_twitter_link, psl.player_youtube_link,
    pp.pp_id, pp.player_phone,
    t.team_id, t.team_name
FROM player p
LEFT JOIN player_address pa ON p.player_id = pa.player_id -- Corrected the join condition here
LEFT JOIN player_social_link psl ON p.player_id = psl.player_id
LEFT JOIN player_phone pp ON p.player_id = pp.player_id
LEFT JOIN player_team pt ON p.player_id = pt.player_id
LEFT JOIN team t ON pt.team_id = t.team_id
LEFT JOIN player_winning pw ON p.player_id = pw.player_id;