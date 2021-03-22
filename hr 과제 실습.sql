데이터 결합 (실습 join8)
erd 다이어그램을 참고하여 countries, regions 테이블을 이용하여 지역별 소속국가를 다음과 같은 결과가 나오도록
쿼리를 작성해 보세요 (지역은 유럽만 한정)

SELECT countries.country_name
FROM countries;

SELECT regions.region_id, regions.region_name
FROM regions;

SELECT regions.region_id, regions.region_name,countries.country_name
FROM countries, regions
WHERE regions.region_id = countries.region_id
    AND regions.region_name IN ('Europe');
    
데이터 결합 (실습 join9)
erd 다이어그램을 참고하여 countries, regions, locations 테이블을 이용하여 지역별 소속 국가,
국가에 소속된 도시 이름을 다음과 같은 결과가 나오도록 쿼리를 작성해보세요 (지역은 유럽만 한정)

SELECT regions.region_id, regions.region_name,countries.country_name
FROM countries, regions
WHERE regions.region_id = countries.region_id
    AND regions.region_name IN ('Europe');
    
SELECT *
FROM locations;

