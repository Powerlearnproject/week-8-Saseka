SELECT 
    CASE 
        WHEN age BETWEEN 20 AND 30 THEN '20-30'
        WHEN age BETWEEN 31 AND 40 THEN '31-40'
        WHEN age BETWEEN 41 AND 50 THEN '41-50'
        WHEN age BETWEEN 51 AND 60 THEN '51-60'
        ELSE '61+'
    END AS age_group,
    AVG(blood_sugar_level) AS avg_blood_sugar_level
FROM Patients p
JOIN Diabetes_Records d ON p.patient_id = d.patient_id
GROUP BY age_group
ORDER BY age_group;
