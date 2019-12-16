create table VACANCIES(
    id TEXT not null,
    premium boolean not null,
    name TEXT NOT NULL,
    department_id TEXT,
    department_name TEXT,
    has_test BOOLEAN NOT NULL,
    response_letter_required BOOLEAN NOT NULL,
    area_id TEXT NOT NULL,
    area_name TEXT NOT NULL,
    salary_from INTEGER,
    salary_to INTEGER,
    salary_currency TEXT,
    salary_gross BOOLEAN,
    is_open BOOLEAN NOT NULL,
    adress_id TEXT,
    employer_id TEXT,
    employer_name TEXT,
    created_at DATE,
    url TEXT,
    alternate_url TEXT,
    snippet_requirement TEXT,
    snippet_responsibility TEXT
);


alter table vacancies alter column is_open set default true;

create index vacancies_date_index on vacancies(created_at);
cluster vacancies using vacancies_date_index;

create index vacancy_is_open_index on vacancies(is_open);
create index vacancy_id_index on vacancies(id);

alter table vacancies add primary key (id);
