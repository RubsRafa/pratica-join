
--Questão 1
SELECT users.id, users.name, cities.name AS city 
FROM users 
JOIN cities 
    ON users."cityId" = cities.id 
WHERE cities.name = 'Rio de Janeiro';

--Questão 2
SELECT testimonials.id, u.name AS writer, us.name AS recipient, testimonials.message 
FROM testimonials 
JOIN users u 
    ON u.id = testimonials."writerId" 
JOIN users us 
    ON us.id = testimonials."recipientId";

--Questão 3
SELECT users.id, users.name, courses.name AS course, schools.name AS schools, educations."endDate" AS endDate 
FROM courses 
JOIN educations 
    ON educations."courseId" = courses.id 
JOIN users 
    ON educations."userId" = users.id 
JOIN schools 
    ON schools.id = educations."schoolId" 
WHERE users.id = 30;

--Questão 4
SELECT users.id, users.name, roles.name AS role, companies.name AS company, experiences."startDate" AS startDate 
FROM companies 
JOIN experiences 
ON companies.id = experiences."companyId" 
JOIN roles 
ON roles.id = experiences."roleId" 
JOIN users 
ON users.id = experiences."userId" 
WHERE users.id = 50;

--Bônus
--id/school/course/company/role