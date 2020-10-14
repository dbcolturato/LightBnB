SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN reservations ON properties.id = reservations.property_id
WHERE reservations.guest_id = 1 AND reservations.end_date < now()::date
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;

